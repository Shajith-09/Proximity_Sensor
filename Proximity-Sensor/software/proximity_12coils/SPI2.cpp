/*
 * Copyright (c) 2010 by Cristian Maglie <c.maglie@arduino.cc>
 * Copyright (c) 2014 by Paul Stoffregen <paul@pjrc.com> (Transaction API)
 * Copyright (c) 2014 by Matthijs Kooijman <matthijs@stdin.nl> (SPISettings AVR)
 * Copyright (c) 2014 by Andrew J. Kroll <xxxajk@gmail.com> (atomicity fixes)
 * SPI Master library for arduino.
 *
 * This file is free software; you can redistribute it and/or modify
 * it under the terms of either the GNU General Public License version 2
 * or the GNU Lesser General Public License version 2.1, both as
 * published by the Free Software Foundation.
 */

#include "SPI2.h"

//SPIClass2 SPI2;
// In the ProximityBoard I use IDE pin 9 (MCU pin 13 or PB1) as Slave Select Pin;
// I should have use the default IDE pin 10 instead; That is why I need this here:
#define SS_PIN 9

uint8_t SPIClass2::initialized = 0;
uint8_t SPIClass2::interruptMode = 0;
uint8_t SPIClass2::interruptMask = 0;
uint8_t SPIClass2::interruptSave = 0;
#ifdef SPI_TRANSACTION_MISMATCH_LED
uint8_t SPIClass2::inTransactionFlag = 0;
#endif

void SPIClass2::begin()
{
  uint8_t sreg = SREG;
  noInterrupts(); // Protect from a scheduler and prevent transactionBegin
  if (!initialized) {
    
    // cris: pin 10 has to be an output because that's how you tell the hardware 
    // that it's the bus master and not a slave; I use it as output anyway to
    // drive low-battery led later on;
    pinMode(10, OUTPUT); 
    
    // Set SS_PIN to high so a connected chip will be "deselected" by default
    uint8_t port = digitalPinToPort(SS_PIN);
    uint8_t bit = digitalPinToBitMask(SS_PIN);
    volatile uint8_t *reg = portModeRegister(port);

    // if the SS_PIN pin is not already configured as an output
    // then set it high (to enable the internal pull-up resistor)
    if(!(*reg & bit)){
      digitalWrite(SS_PIN, HIGH);
    }
 
    // When the SS_PIN pin is set as OUTPUT, it can be used as
    // a general purpose output port (it doesn't influence
    // SPI operations).
    pinMode(SS_PIN, OUTPUT);

    // Warning: if the default SS pin (IDE pin 10) ever becomes a LOW INPUT then SPI
    // automatically switches to Slave, so the data direction of
    // the SS pin MUST be kept as OUTPUT.
    SPCR |= _BV(MSTR);
    SPCR |= _BV(SPE);

    // Set direction register for SCK and MOSI pin.
    // MISO pin automatically overrides to INPUT.
    // By doing this AFTER enabling SPI, we avoid accidentally
    // clocking in a single bit since the lines go directly
    // from "input" to SPI control.
    // http://code.google.com/p/arduino/issues/detail?id=888
    pinMode(SCK, OUTPUT);
    pinMode(MOSI, OUTPUT);
  }
  initialized++; // reference count
  SREG = sreg;
}

void SPIClass2::end() {
  uint8_t sreg = SREG;
  noInterrupts(); // Protect from a scheduler and prevent transactionBegin
  // Decrease the reference counter
  if (initialized)
    initialized--;
  // If there are no more references disable SPI
  if (!initialized) {
    SPCR &= ~_BV(SPE);
    interruptMode = 0;
    #ifdef SPI_TRANSACTION_MISMATCH_LED
    inTransactionFlag = 0;
    #endif
  }
  SREG = sreg;
}

// mapping of interrupt numbers to bits within SPI_AVR_EIMSK
#if defined(__AVR_ATmega32U4__)
  #define SPI_INT0_MASK  (1<<INT0)
  #define SPI_INT1_MASK  (1<<INT1)
  #define SPI_INT2_MASK  (1<<INT2)
  #define SPI_INT3_MASK  (1<<INT3)
  #define SPI_INT4_MASK  (1<<INT6)
#elif defined(__AVR_AT90USB646__) || defined(__AVR_AT90USB1286__)
  #define SPI_INT0_MASK  (1<<INT0)
  #define SPI_INT1_MASK  (1<<INT1)
  #define SPI_INT2_MASK  (1<<INT2)
  #define SPI_INT3_MASK  (1<<INT3)
  #define SPI_INT4_MASK  (1<<INT4)
  #define SPI_INT5_MASK  (1<<INT5)
  #define SPI_INT6_MASK  (1<<INT6)
  #define SPI_INT7_MASK  (1<<INT7)
#elif defined(EICRA) && defined(EICRB) && defined(EIMSK)
  #define SPI_INT0_MASK  (1<<INT4)
  #define SPI_INT1_MASK  (1<<INT5)
  #define SPI_INT2_MASK  (1<<INT0)
  #define SPI_INT3_MASK  (1<<INT1)
  #define SPI_INT4_MASK  (1<<INT2)
  #define SPI_INT5_MASK  (1<<INT3)
  #define SPI_INT6_MASK  (1<<INT6)
  #define SPI_INT7_MASK  (1<<INT7)
#else
  #ifdef INT0
  #define SPI_INT0_MASK  (1<<INT0)
  #endif
  #ifdef INT1
  #define SPI_INT1_MASK  (1<<INT1)
  #endif
  #ifdef INT2
  #define SPI_INT2_MASK  (1<<INT2)
  #endif
#endif

void SPIClass2::usingInterrupt(uint8_t interruptNumber)
{
  uint8_t mask = 0;
  uint8_t sreg = SREG;
  noInterrupts(); // Protect from a scheduler and prevent transactionBegin
  switch (interruptNumber) {
  #ifdef SPI_INT0_MASK
  case 0: mask = SPI_INT0_MASK; break;
  #endif
  #ifdef SPI_INT1_MASK
  case 1: mask = SPI_INT1_MASK; break;
  #endif
  #ifdef SPI_INT2_MASK
  case 2: mask = SPI_INT2_MASK; break;
  #endif
  #ifdef SPI_INT3_MASK
  case 3: mask = SPI_INT3_MASK; break;
  #endif
  #ifdef SPI_INT4_MASK
  case 4: mask = SPI_INT4_MASK; break;
  #endif
  #ifdef SPI_INT5_MASK
  case 5: mask = SPI_INT5_MASK; break;
  #endif
  #ifdef SPI_INT6_MASK
  case 6: mask = SPI_INT6_MASK; break;
  #endif
  #ifdef SPI_INT7_MASK
  case 7: mask = SPI_INT7_MASK; break;
  #endif
  default:
    interruptMode = 2;
    break;
  }
  interruptMask |= mask;
  if (!interruptMode)
    interruptMode = 1;
  SREG = sreg;
}

void SPIClass2::notUsingInterrupt(uint8_t interruptNumber)
{
  // Once in mode 2 we can't go back to 0 without a proper reference count
  if (interruptMode == 2)
    return;
  uint8_t mask = 0;
  uint8_t sreg = SREG;
  noInterrupts(); // Protect from a scheduler and prevent transactionBegin
  switch (interruptNumber) {
  #ifdef SPI_INT0_MASK
  case 0: mask = SPI_INT0_MASK; break;
  #endif
  #ifdef SPI_INT1_MASK
  case 1: mask = SPI_INT1_MASK; break;
  #endif
  #ifdef SPI_INT2_MASK
  case 2: mask = SPI_INT2_MASK; break;
  #endif
  #ifdef SPI_INT3_MASK
  case 3: mask = SPI_INT3_MASK; break;
  #endif
  #ifdef SPI_INT4_MASK
  case 4: mask = SPI_INT4_MASK; break;
  #endif
  #ifdef SPI_INT5_MASK
  case 5: mask = SPI_INT5_MASK; break;
  #endif
  #ifdef SPI_INT6_MASK
  case 6: mask = SPI_INT6_MASK; break;
  #endif
  #ifdef SPI_INT7_MASK
  case 7: mask = SPI_INT7_MASK; break;
  #endif
  default:
    break;
    // this case can't be reached
  }
  interruptMask &= ~mask;
  if (!interruptMask)
    interruptMode = 0;
  SREG = sreg;
}
