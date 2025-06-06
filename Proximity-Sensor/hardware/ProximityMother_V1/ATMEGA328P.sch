EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr USLetter 11000 8500
encoding utf-8
Sheet 3 3
Title "Microcontroller, CLK Generator, LDC"
Date "2020-06-16"
Rev "0"
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L ProximityMother_V1-rescue:CONN_02X03-Arduino_Uno_R3_From_Scratch-rescue-HUTCO_Node_V10-rescue ICSP?
U 1 1 55E8CAAE
P 2650 950
AR Path="/5C7934FF/55E89CE4/55E8CAAE" Ref="ICSP?"  Part="1" 
AR Path="/5C7D0DFA/55E8CAAE" Ref="ICSP?"  Part="1" 
AR Path="/5C7AE590/55E8CAAE" Ref="ICSP1"  Part="1" 
AR Path="/55E8CAAE" Ref="ICSP?"  Part="1" 
F 0 "ICSP1" H 2650 1200 50  0000 C CNN
F 1 "ICSP" H 2650 750 40  0000 C CNN
F 2 "Connectors:2X3" H 2650 950 60  0001 C CNN
F 3 "http://cdn.harwin.com/pdfs/M20-998.pdf" H 2650 950 60  0001 C CNN
F 4 "6 CONTACT(S), MALE, STRAIGHT TWO PART BOARD CONNECTOR" H 2650 950 60  0001 C CNN "Characteristics"
F 5 "ATMEGA328P ICSP Header" H 2650 950 60  0001 C CNN "Description"
F 6 "Harwin" H 2650 950 60  0001 C CNN "MFN"
F 7 "M20-9980346" H 2650 950 60  0001 C CNN "MFP"
F 8 "PTH" H 2650 950 60  0001 C CNN "Package ID"
F 9 "ANY" H 2650 950 60  0001 C CNN "Source"
F 10 "N" H 2650 950 60  0001 C CNN "Critical"
F 11 "328P_Sub" H 2650 950 60  0001 C CNN "Subsystem"
F 12 "~" H 2650 950 60  0001 C CNN "Notes"
	1    2650 950 
	1    0    0    -1  
$EndComp
Wire Wire Line
	3050 1050 3050 1200
Text GLabel 2250 950  0    40   Input ~ 0
SCK
Text GLabel 2250 850  0    40   Input ~ 0
MISO
Text GLabel 3050 950  2    40   Input ~ 0
MOSI
Text Notes 4750 1250 0    40   ~ 0
Atmel Appnote: AVR Hardware Design Considerations\nhttp://ww1.microchip.com/downloads/en/AppNotes/\nAN2519-AVR-Microcontroller-Hardware-Design-Considerations-00002519B.pdf\n\nPlease see Section 4 for ICSP information. \nRefer to Section 7 for PCB layout information.\nDo NOT supply power through USB, BAT, or VIN when programming\nthru ICSP - if the programmer supplies a VCC (can be 5V or 3.3V).
$Comp
L ProximityMother_V1-rescue:GND-power #PWR?
U 1 1 56208C49
P 3050 1200
AR Path="/5C7934FF/55E89CE4/56208C49" Ref="#PWR?"  Part="1" 
AR Path="/5C7D0DFA/56208C49" Ref="#PWR?"  Part="1" 
AR Path="/5C7AE590/56208C49" Ref="#PWR015"  Part="1" 
F 0 "#PWR015" H 3050 1200 30  0001 C CNN
F 1 "GND" H 3050 1130 30  0001 C CNN
F 2 "~" H 3050 1200 60  0000 C CNN
F 3 "~" H 3050 1200 60  0000 C CNN
F 4 "ANY" H 3050 1200 60  0001 C CNN "Source"
F 5 "N" H 3050 1200 60  0001 C CNN "Critical"
F 6 "~" H 3050 1200 60  0001 C CNN "Notes"
	1    3050 1200
	1    0    0    -1  
$EndComp
$Comp
L ProximityMother_V1-rescue:ATMEGA328P_TQFP-SparkFun-IC-Microcontroller U5
U 1 1 5C7B1EF2
P 5950 2700
F 0 "U5" H 5900 4000 45  0000 C CNN
F 1 "ATMEGA328P" H 6450 4000 45  0000 C CNN
F 2 "Silicon-Standard:TQFP32-08" H 5950 4050 20  0001 C CNN
F 3 "" H 5950 2700 50  0001 C CNN
F 4 "" H 5950 4031 60  0000 C CNN "Field4"
	1    5950 2700
	1    0    0    -1  
$EndComp
Text GLabel 7900 3850 2    40   Input ~ 0
SCK
Text GLabel 7900 3750 2    40   Input ~ 0
MISO
Text GLabel 7900 3650 2    40   Input ~ 0
MOSI
$Comp
L ProximityMother_V1-rescue:GND-power #PWR024
U 1 1 5EEFCA19
P 4800 3850
F 0 "#PWR024" H 4800 3600 50  0001 C CNN
F 1 "GND" H 4805 3677 50  0000 C CNN
F 2 "" H 4800 3850 50  0001 C CNN
F 3 "" H 4800 3850 50  0001 C CNN
	1    4800 3850
	1    0    0    -1  
$EndComp
Wire Wire Line
	5000 3550 4800 3550
Wire Wire Line
	4800 3550 4800 3650
Wire Wire Line
	5000 3650 4800 3650
Connection ~ 4800 3650
Wire Wire Line
	4800 3650 4800 3750
Wire Wire Line
	5000 3750 4800 3750
Connection ~ 4800 3750
Wire Wire Line
	4800 3750 4800 3850
$Comp
L ProximityMother_V1-rescue:GND-power #PWR023
U 1 1 5EEFCA1A
P 4700 3450
F 0 "#PWR023" H 4700 3200 50  0001 C CNN
F 1 "GND" H 4705 3277 50  0000 C CNN
F 2 "" H 4700 3450 50  0001 C CNN
F 3 "" H 4700 3450 50  0001 C CNN
	1    4700 3450
	1    0    0    -1  
$EndComp
$Comp
L ProximityMother_V1-rescue:GND-power #PWR020
U 1 1 5C80E365
P 4250 2600
F 0 "#PWR020" H 4250 2350 50  0001 C CNN
F 1 "GND" H 4255 2427 50  0000 C CNN
F 2 "" H 4250 2600 50  0001 C CNN
F 3 "" H 4250 2600 50  0001 C CNN
	1    4250 2600
	1    0    0    -1  
$EndComp
Wire Wire Line
	5000 1750 4800 1750
Wire Wire Line
	5000 1850 4800 1850
Wire Wire Line
	4800 1850 4800 1750
Connection ~ 4800 1750
Wire Wire Line
	5000 1950 4800 1950
Wire Wire Line
	4800 1950 4800 1850
Connection ~ 4800 1850
$Comp
L ProximityMother_V1-rescue:MOMENTARY-SWITCH-SPST-2-SMD-5.2MM-SparkFun-Switches S2
U 1 1 5C80E38A
P 3650 1750
F 0 "S2" V 3745 1597 45  0000 R CNN
F 1 "RST" V 3800 1950 45  0000 R CNN
F 2 "library-loader:TL3305AF160QG" H 3650 2000 20  0001 C CNN
F 3 "" H 3650 1750 50  0001 C CNN
F 4 "RST" V 3500 1950 60  0000 R CNN "Field4"
	1    3650 1750
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3700 1400 3700 1550
Wire Wire Line
	3700 1550 3650 1550
Wire Wire Line
	3700 1550 3750 1550
Connection ~ 3700 1550
Wire Wire Line
	3750 1950 3700 1950
$Comp
L ProximityMother_V1-rescue:GND-power #PWR017
U 1 1 5C80E3A0
P 3700 2200
F 0 "#PWR017" H 3700 1950 50  0001 C CNN
F 1 "GND" H 3705 2027 50  0000 C CNN
F 2 "" H 3700 2200 50  0001 C CNN
F 3 "" H 3700 2200 50  0001 C CNN
	1    3700 2200
	1    0    0    -1  
$EndComp
Wire Wire Line
	3700 2200 3700 1950
Connection ~ 3700 1950
Wire Wire Line
	3700 1950 3650 1950
Text Label 3400 1400 0    50   ~ 0
RESET
Text GLabel 5000 1300 2    50   Input ~ 0
RESET
Text GLabel 4700 2050 0    50   Input ~ 0
AREF
Wire Wire Line
	7950 1950 7950 1850
Wire Wire Line
	8200 2050 8200 1850
Text GLabel 7050 1850 2    50   Input ~ 0
A3
Text GLabel 7050 1750 2    50   Input ~ 0
A2
Text GLabel 7050 1650 2    50   Input ~ 0
A1
Text GLabel 7050 1550 2    50   Input ~ 0
BATT_LEVEL
Text GLabel 7050 2150 2    50   Input ~ 0
A6
Text GLabel 7050 2250 2    50   Input ~ 0
A7
Text GLabel 8000 1950 2    50   Input ~ 0
SDA
Text GLabel 8250 2050 2    50   Input ~ 0
SCL
Text GLabel 7400 2650 2    50   Input ~ 0
CTRL0
Text GLabel 7400 2750 2    50   Input ~ 0
CTRL1
Text GLabel 7050 2950 2    50   Input ~ 0
D5
Text GLabel 7050 3050 2    50   Input ~ 0
D6
Text GLabel 7050 3150 2    50   Input ~ 0
D7
Wire Wire Line
	6900 2950 7050 2950
Wire Wire Line
	7050 3050 6900 3050
Wire Wire Line
	6900 3150 7050 3150
Wire Wire Line
	7050 1550 6900 1550
Wire Wire Line
	6900 1650 7050 1650
Wire Wire Line
	6900 1750 7050 1750
Wire Wire Line
	7050 1850 6900 1850
Wire Wire Line
	6900 2150 7050 2150
Wire Wire Line
	7050 2250 6900 2250
Text GLabel 7550 3350 2    50   Input ~ 0
CTRL_MUX12
Text GLabel 7700 3450 2    50   Input ~ 0
CSB_LDC
Text GLabel 9400 4000 2    50   Input ~ 0
BATT_LEVEL
Wire Wire Line
	7550 3350 6900 3350
Wire Wire Line
	5000 1400 5000 1550
$Comp
L ProximityMother_V1-rescue:+3V3-power #PWR?
U 1 1 5C95CE46
P 4000 1600
AR Path="/5C794189/5C95CE46" Ref="#PWR?"  Part="1" 
AR Path="/5C7AE590/5C95CE46" Ref="#PWR019"  Part="1" 
F 0 "#PWR019" H 4000 1450 50  0001 C CNN
F 1 "+3V3" H 4100 1700 50  0000 C CNN
F 2 "" H 4000 1600 50  0001 C CNN
F 3 "" H 4000 1600 50  0001 C CNN
	1    4000 1600
	1    0    0    -1  
$EndComp
Wire Wire Line
	5000 1300 4850 1300
Wire Wire Line
	4850 1300 4850 1400
Connection ~ 4850 1400
Wire Wire Line
	4850 1400 5000 1400
$Comp
L ProximityMother_V1-rescue:+3V3-power #PWR?
U 1 1 5EEFCA2C
P 3700 750
AR Path="/5C794189/5EEFCA2C" Ref="#PWR?"  Part="1" 
AR Path="/5C7AE590/5EEFCA2C" Ref="#PWR016"  Part="1" 
F 0 "#PWR016" H 3700 600 50  0001 C CNN
F 1 "+3V3" H 3715 923 50  0000 C CNN
F 2 "" H 3700 750 50  0001 C CNN
F 3 "" H 3700 750 50  0001 C CNN
	1    3700 750 
	1    0    0    -1  
$EndComp
Wire Wire Line
	6900 1950 7950 1950
Wire Wire Line
	8000 1950 7950 1950
Connection ~ 7950 1950
Wire Wire Line
	8250 2050 8200 2050
Connection ~ 8200 2050
$Comp
L ProximityMother_V1-rescue:+3V3-power #PWR?
U 1 1 5EEFCA2D
P 7950 1350
AR Path="/5C794189/5EEFCA2D" Ref="#PWR?"  Part="1" 
AR Path="/5C7AE590/5EEFCA2D" Ref="#PWR027"  Part="1" 
F 0 "#PWR027" H 7950 1200 50  0001 C CNN
F 1 "+3V3" H 7965 1523 50  0000 C CNN
F 2 "" H 7950 1350 50  0001 C CNN
F 3 "" H 7950 1350 50  0001 C CNN
	1    7950 1350
	1    0    0    -1  
$EndComp
$Comp
L ProximityMother_V1-rescue:+3V3-power #PWR?
U 1 1 5C9DD2FF
P 8200 1350
AR Path="/5C794189/5C9DD2FF" Ref="#PWR?"  Part="1" 
AR Path="/5C7AE590/5C9DD2FF" Ref="#PWR028"  Part="1" 
F 0 "#PWR028" H 8200 1200 50  0001 C CNN
F 1 "+3V3" H 8215 1523 50  0000 C CNN
F 2 "" H 8200 1350 50  0001 C CNN
F 3 "" H 8200 1350 50  0001 C CNN
	1    8200 1350
	1    0    0    -1  
$EndComp
Wire Wire Line
	7950 1350 7950 1450
Wire Wire Line
	8200 1350 8200 1450
Wire Wire Line
	3050 950  2900 950 
Wire Wire Line
	2900 1050 3050 1050
Wire Wire Line
	2400 850  2250 850 
Wire Wire Line
	2250 950  2400 950 
Wire Wire Line
	2400 1050 2300 1050
Wire Wire Line
	2300 1050 2300 1400
Wire Wire Line
	2900 850  3700 850 
Wire Wire Line
	3700 750  3700 850 
Text Label 3200 850  0    50   ~ 0
VCC_ICSP
Wire Wire Line
	7900 3650 6900 3650
Wire Wire Line
	6900 3750 7900 3750
Wire Wire Line
	7900 3850 6900 3850
Wire Wire Line
	6900 2650 7400 2650
Wire Wire Line
	6900 2750 7400 2750
Text Notes 7700 2800 0    50   ~ 0
Control signals \nfor Clock gen.
Text Label 7400 1950 0    50   ~ 0
SDA
Text Label 7450 2050 0    50   ~ 0
SCL
Text Notes 8400 1600 0    50   ~ 0
Check this for pull-up resistance calculations:\nhttp://www.ti.com/lit/an/slva689/slva689.pdf
$Comp
L ProximityMother_V1-rescue:LED-Arduino_Uno_R3_From_Scratch-rescue-HUTCO_Node_V10-rescue D?
U 1 1 5EEFCA13
P 8800 4300
AR Path="/5C7934FF/55DD0855/5EEFCA13" Ref="D?"  Part="1" 
AR Path="/5C7D0DDC/5EEFCA13" Ref="D?"  Part="1" 
AR Path="/5C794189/5EEFCA13" Ref="D?"  Part="1" 
AR Path="/5EEFCA13" Ref="D?"  Part="1" 
AR Path="/5C7AE590/5EEFCA13" Ref="D4"  Part="1" 
F 0 "D4" H 8800 4200 50  0000 C CNN
F 1 "Yellow" H 8850 4400 50  0000 C CNN
F 2 "LED_SMD:LED_1206_3216Metric" H 8800 4300 60  0001 C CNN
F 3 "" H 8800 4300 60  0001 C CNN
F 4 "LED CHIPLED 570NM GREEN" H 8800 4300 60  0001 C CNN "Characteristics"
F 5 "Serial Tx Green LED" H 8800 4300 60  0001 C CNN "Description"
F 6 "OSRAM Opto" H 8800 4300 60  0001 C CNN "MFN"
F 7 "LG R971-KN-1" H 8800 4300 60  0001 C CNN "MFP"
F 8 "SMD_0805" H 8800 4300 60  0001 C CNN "Package ID"
F 9 "ANY" H 8800 4300 60  0001 C CNN "Source"
F 10 "N" H 8800 4300 60  0001 C CNN "Critical"
F 11 "16U2_Sub" H 8800 4300 60  0001 C CNN "Subsystem"
F 12 "~" H 8800 4300 60  0001 C CNN "Notes"
	1    8800 4300
	0    -1   -1   0   
$EndComp
$Comp
L ProximityMother_V1-rescue:RESISTOR0603-SparkFun-Resistors R?
U 1 1 5EEFCA14
P 8800 3750
AR Path="/5C794189/5EEFCA14" Ref="R?"  Part="1" 
AR Path="/5C7AE590/5EEFCA14" Ref="R9"  Part="1" 
F 0 "R9" V 8895 3682 45  0000 R CNN
F 1 "1K" V 8811 3682 45  0000 R CNN
F 2 "Resistor_SMD:R_1210_3225Metric_Pad1.42x2.65mm_HandSolder" H 8800 3900 20  0001 C CNN
F 3 "" H 8800 3750 60  0001 C CNN
F 4 " " V 8716 3682 60  0000 R CNN "Field4"
	1    8800 3750
	0    -1   -1   0   
$EndComp
$Comp
L ProximityMother_V1-rescue:GND-power #PWR030
U 1 1 5EEFCA15
P 8800 4650
F 0 "#PWR030" H 8800 4400 50  0001 C CNN
F 1 "GND" H 8805 4477 50  0000 C CNN
F 2 "" H 8800 4650 50  0001 C CNN
F 3 "" H 8800 4650 50  0001 C CNN
	1    8800 4650
	1    0    0    -1  
$EndComp
Wire Wire Line
	6900 3550 8800 3550
Wire Wire Line
	8800 3950 8800 4100
Wire Wire Line
	8800 4500 8800 4650
$Comp
L ProximityMother_V1-rescue:RESISTOR0603-SparkFun-Resistors R?
U 1 1 5C7F7E64
P 9200 3750
AR Path="/5C794189/5C7F7E64" Ref="R?"  Part="1" 
AR Path="/5C7AE590/5C7F7E64" Ref="R10"  Part="1" 
F 0 "R10" V 9295 3682 45  0000 R CNN
F 1 "4.7K" V 9211 3682 45  0000 R CNN
F 2 "Resistor_SMD:R_1210_3225Metric_Pad1.42x2.65mm_HandSolder" H 9200 3900 20  0001 C CNN
F 3 "" H 9200 3750 60  0001 C CNN
F 4 " " V 9116 3682 60  0000 R CNN "Field4"
	1    9200 3750
	0    -1   -1   0   
$EndComp
$Comp
L ProximityMother_V1-rescue:RESISTOR0603-SparkFun-Resistors R?
U 1 1 5C7FCF8A
P 9200 4300
AR Path="/5C794189/5C7FCF8A" Ref="R?"  Part="1" 
AR Path="/5C7AE590/5C7FCF8A" Ref="R11"  Part="1" 
F 0 "R11" V 9295 4232 45  0000 R CNN
F 1 "4.7K" V 9211 4232 45  0000 R CNN
F 2 "Resistor_SMD:R_1210_3225Metric_Pad1.42x2.65mm_HandSolder" H 9200 4450 20  0001 C CNN
F 3 "" H 9200 4300 60  0001 C CNN
F 4 " " V 9116 4232 60  0000 R CNN "Field4"
	1    9200 4300
	0    -1   -1   0   
$EndComp
$Comp
L ProximityMother_V1-rescue:GND-power #PWR032
U 1 1 5EEFCA18
P 9200 4650
F 0 "#PWR032" H 9200 4400 50  0001 C CNN
F 1 "GND" H 9205 4477 50  0000 C CNN
F 2 "" H 9200 4650 50  0001 C CNN
F 3 "" H 9200 4650 50  0001 C CNN
	1    9200 4650
	1    0    0    -1  
$EndComp
Wire Wire Line
	9200 3950 9200 4000
Wire Wire Line
	9200 4500 9200 4650
Wire Wire Line
	9400 4000 9200 4000
Connection ~ 9200 4000
Wire Wire Line
	9200 4000 9200 4100
Text Label 7150 3550 0    50   ~ 0
LOW_BATT
Text Notes 9450 4450 0    50   ~ 0
If battery voltage gets as \nlow as 2.25V, then Yellow \nLED will light-up to notify \nof LOW Battery.
$Comp
L ProximityMother_V1-rescue:RESISTOR0603-SparkFun-Resistors R?
U 1 1 5C81F6C1
P 7950 1650
AR Path="/5C794189/5C81F6C1" Ref="R?"  Part="1" 
AR Path="/5C7AE590/5C81F6C1" Ref="R6"  Part="1" 
F 0 "R6" V 8045 1582 45  0000 R CNN
F 1 "4.7K" V 7961 1582 45  0000 R CNN
F 2 "Resistor_SMD:R_1210_3225Metric_Pad1.42x2.65mm_HandSolder" H 7950 1800 20  0001 C CNN
F 3 "" H 7950 1650 60  0001 C CNN
F 4 " " V 7866 1582 60  0000 R CNN "Field4"
	1    7950 1650
	0    -1   -1   0   
$EndComp
$Comp
L ProximityMother_V1-rescue:RESISTOR0603-SparkFun-Resistors R?
U 1 1 5EEFCA1F
P 8200 1650
AR Path="/5C794189/5EEFCA1F" Ref="R?"  Part="1" 
AR Path="/5C7AE590/5EEFCA1F" Ref="R7"  Part="1" 
F 0 "R7" V 8295 1582 45  0000 R CNN
F 1 "4.7K" V 8211 1582 45  0000 R CNN
F 2 "Resistor_SMD:R_1210_3225Metric_Pad1.42x2.65mm_HandSolder" H 8200 1800 20  0001 C CNN
F 3 "" H 8200 1650 60  0001 C CNN
F 4 " " V 8116 1582 60  0000 R CNN "Field4"
	1    8200 1650
	0    -1   -1   0   
$EndComp
$Comp
L ProximityMother_V1-rescue:RESISTOR0603-SparkFun-Resistors R?
U 1 1 5EEFCA20
P 3700 1100
AR Path="/5C794189/5EEFCA20" Ref="R?"  Part="1" 
AR Path="/5C7AE590/5EEFCA20" Ref="R4"  Part="1" 
F 0 "R4" V 3795 1032 45  0000 R CNN
F 1 "10K" V 3711 1032 45  0000 R CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 3700 1250 20  0001 C CNN
F 3 "" H 3700 1100 60  0001 C CNN
F 4 " " V 3616 1032 60  0000 R CNN "Field4"
	1    3700 1100
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3700 1300 3700 1400
Wire Wire Line
	3700 900  3700 850 
$Comp
L ProximityMother_V1-rescue:0.1UF-0603-25V-5%-SparkFun-Capacitors C11
U 1 1 5C860218
P 4250 2300
F 0 "C11" H 4142 2308 45  0000 R CNN
F 1 "100nF" H 4142 2392 45  0000 R CNN
F 2 "Capacitor_SMD:C_1210_3225Metric_Pad1.42x2.65mm_HandSolder" H 4250 2550 20  0001 C CNN
F 3 "" H 4250 2300 50  0001 C CNN
F 4 "" H 4142 2434 60  0000 R CNN "Field4"
	1    4250 2300
	-1   0    0    1   
$EndComp
Wire Wire Line
	4250 2500 4250 2600
$Comp
L ProximityMother_V1-rescue:GND-power #PWR?
U 1 1 5C8A5256
P 3850 3350
AR Path="/5C794189/5C8A5256" Ref="#PWR?"  Part="1" 
AR Path="/5C7AE590/5C8A5256" Ref="#PWR018"  Part="1" 
F 0 "#PWR018" H 3850 3100 50  0001 C CNN
F 1 "GND" H 3855 3177 50  0000 C CNN
F 2 "" H 3850 3350 50  0001 C CNN
F 3 "" H 3850 3350 50  0001 C CNN
	1    3850 3350
	1    0    0    -1  
$EndComp
Wire Wire Line
	3700 3150 3700 3300
$Comp
L ProximityMother_V1-rescue:0.1UF-0402-16V-10%-SparkFun-Capacitors C?
U 1 1 5EEFCA28
P 4000 3050
AR Path="/5C794189/5EEFCA28" Ref="C?"  Part="1" 
AR Path="/5C7AE590/5EEFCA28" Ref="C10"  Part="1" 
F 0 "C10" H 4108 3142 45  0000 L CNN
F 1 "100nF" H 4108 3058 45  0000 L CNN
F 2 "Capacitor_SMD:C_1210_3225Metric_Pad1.42x2.65mm_HandSolder" H 4030 3200 20  0001 C CNN
F 3 "" H 4000 3050 60  0001 C CNN
	1    4000 3050
	1    0    0    -1  
$EndComp
Wire Wire Line
	4000 3150 4000 3300
Wire Wire Line
	3700 3300 3850 3300
Wire Wire Line
	3850 3350 3850 3300
Connection ~ 3850 3300
Wire Wire Line
	3850 3300 4000 3300
Wire Wire Line
	3700 2700 3700 2850
Wire Wire Line
	4000 2700 4000 2850
Wire Wire Line
	4000 1600 4000 1750
Wire Wire Line
	4700 2050 4800 2050
Wire Wire Line
	4800 2050 4800 2150
Connection ~ 4800 2150
Wire Wire Line
	4800 2150 5000 2150
Wire Wire Line
	4250 2200 4250 2150
Wire Wire Line
	4250 2150 4800 2150
Wire Wire Line
	3700 2700 4000 2700
Wire Wire Line
	4000 2700 4000 1750
Connection ~ 4000 2700
Connection ~ 4000 1750
Wire Wire Line
	4000 1750 4800 1750
Connection ~ 3700 1400
Wire Wire Line
	2300 1400 3700 1400
Connection ~ 3700 850 
Wire Wire Line
	3700 850  4150 850 
$Comp
L ProximityMother_V1-rescue:RESISTOR0603-SparkFun-Resistors R?
U 1 1 5C9216A7
P 4700 2700
AR Path="/5C794189/5C9216A7" Ref="R?"  Part="1" 
AR Path="/5C7AE590/5C9216A7" Ref="R5"  Part="1" 
F 0 "R5" V 4750 2850 45  0000 R CNN
F 1 "1M" V 4650 2850 45  0000 R CNN
F 2 "Resistor_SMD:R_1210_3225Metric_Pad1.42x2.65mm_HandSolder" H 4700 2850 20  0001 C CNN
F 3 "" H 4700 2700 60  0001 C CNN
F 4 " " V 4616 2632 60  0000 R CNN "Field4"
	1    4700 2700
	1    0    0    -1  
$EndComp
$Comp
L ProximityMother_V1-rescue:+3V3-power #PWR?
U 1 1 5EEFCA22
P 9200 2150
AR Path="/5C794189/5EEFCA22" Ref="#PWR?"  Part="1" 
AR Path="/5C7AE590/5EEFCA22" Ref="#PWR031"  Part="1" 
F 0 "#PWR031" H 9200 2000 50  0001 C CNN
F 1 "+3V3" H 9300 2250 50  0000 C CNN
F 2 "" H 9200 2150 50  0001 C CNN
F 3 "" H 9200 2150 50  0001 C CNN
	1    9200 2150
	1    0    0    -1  
$EndComp
$Comp
L ProximityMother_V1-rescue:GND-power #PWR033
U 1 1 5EEFCA23
P 9500 2000
F 0 "#PWR033" H 9500 1750 50  0001 C CNN
F 1 "GND" H 9505 1827 50  0000 C CNN
F 2 "" H 9500 2000 50  0001 C CNN
F 3 "" H 9500 2000 50  0001 C CNN
	1    9500 2000
	1    0    0    -1  
$EndComp
Wire Wire Line
	9200 2350 9200 2150
Text Notes 9550 3000 0    50   ~ 0
Female connector for \nSerial 3V3 (FTDI Basic)\nprogramming of MCU.
$Comp
L ProximityMother_V1-rescue:PBRC8.00HR50X000-PBRC8.00HR50X000 Y1
U 1 1 5EEFCA25
P 4700 3000
F 0 "Y1" H 4700 2900 50  0000 C CNN
F 1 "8MHz" H 4700 3150 50  0000 C CNN
F 2 "library-loader:CSTNE8M00G55A000R0" H 4700 3000 50  0001 L BNN
F 3 "None" H 4700 3000 50  0001 L BNN
F 4 "Kyocera International" H 4700 3000 50  0001 L BNN "Field4"
F 5 "PBRC 8 MHz High Reliability 7.4 X 3.4 mm Surface Mount Band Ceramic Resonator" H 4700 3000 50  0001 L BNN "Field5"
F 6 "Unavailable" H 4700 3000 50  0001 L BNN "Field6"
F 7 "PBRC8.00HR50X000" H 4700 3000 50  0001 L BNN "Field7"
F 8 "SMD-3 AVX Interconnect / Elco" H 4700 3000 50  0001 L BNN "Field8"
	1    4700 3000
	1    0    0    -1  
$EndComp
Wire Wire Line
	4400 2550 4400 2700
Wire Wire Line
	4400 2550 5000 2550
Wire Wire Line
	4500 2700 4400 2700
Connection ~ 4400 2700
Wire Wire Line
	4400 2700 4400 3000
Wire Wire Line
	4900 2700 5000 2700
Wire Wire Line
	5000 2700 5000 2750
Connection ~ 5000 2750
Wire Wire Line
	5000 2750 5000 3000
Wire Wire Line
	4700 3400 4700 3450
$Comp
L ProximityMother_V1-rescue:D-Device D?
U 1 1 5C8734E4
P 4150 1150
AR Path="/5C7934FF/55CCFEA2/5C8734E4" Ref="D?"  Part="1" 
AR Path="/5C794189/5C8734E4" Ref="D?"  Part="1" 
AR Path="/5C7AE590/5C8734E4" Ref="D2"  Part="1" 
F 0 "D2" H 4150 1250 40  0000 C CNN
F 1 "DIODE" H 4150 1050 40  0000 C CNN
F 2 "Diode_SMD:D_SOD-323_HandSoldering" H 4150 1150 60  0001 C CNN
F 3 "" H 4150 1150 60  0001 C CNN
F 4 "1A, 1000V, SILICON, SIGNAL DIODE, ROHS COMPLIANT, COMPACT, PLASTIC, CASE 403D-02, SMA, 2 PIN" H 4150 1150 60  0001 C CNN "Characteristics"
F 5 "Reverse Voltage Protection Diode" H 4150 1150 60  0001 C CNN "Description"
F 6 "ON Semi" H 4150 1150 60  0001 C CNN "MFN"
F 7 "MRA4007T3G" H 4150 1150 60  0001 C CNN "MFP"
F 8 "R-PDSO-J2" H 4150 1150 60  0001 C CNN "Package ID"
F 9 "ANY" H 4150 1150 60  0001 C CNN "Source"
F 10 "N" H 4150 1150 60  0001 C CNN "Critical"
F 11 "Voltage_Reg" H 4150 1150 60  0001 C CNN "Subsystem"
F 12 "~" H 4150 1150 60  0001 C CNN "Notes"
	1    4150 1150
	0    1    1    0   
$EndComp
Wire Wire Line
	3700 1400 4150 1400
Wire Wire Line
	4150 1000 4150 850 
Wire Wire Line
	4150 1300 4150 1400
Connection ~ 4150 1400
Wire Wire Line
	4150 1400 4850 1400
Wire Wire Line
	9500 2000 9500 1850
Text Label 8850 2450 0    50   ~ 0
RXI
Text Label 8850 2550 0    50   ~ 0
TXO
$Comp
L ProximityMother_V1-rescue:VIN-SparkFun-PowerSymbols #SUPPLY?
U 1 1 5EF8ABD9
P 9200 3350
AR Path="/5C794189/5EF8ABD9" Ref="#SUPPLY?"  Part="1" 
AR Path="/5C7AE590/5EF8ABD9" Ref="#SUPPLY02"  Part="1" 
F 0 "#SUPPLY02" H 9250 3350 45  0001 L BNN
F 1 "VIN" H 9200 3520 45  0000 C CNN
F 2 "" H 9100 3350 60  0000 C CNN
F 3 "" H 9200 3350 60  0001 C CNN
	1    9200 3350
	1    0    0    -1  
$EndComp
Wire Wire Line
	9200 3350 9200 3550
Text Label 9200 3500 0    50   ~ 0
VIN_BATT
Text Notes 3700 7800 0    50   ~ 0
Inductance-2-Digital \nConverter (LDC)
$Comp
L ProximityMother_V1-rescue:+3V3-power #PWR?
U 1 1 5EFA893A
P 5750 6100
AR Path="/5C794189/5EFA893A" Ref="#PWR?"  Part="1" 
AR Path="/5C7AE590/5EFA893A" Ref="#PWR021"  Part="1" 
F 0 "#PWR021" H 5750 5950 50  0001 C CNN
F 1 "+3V3" H 5850 6200 50  0000 C CNN
F 2 "" H 5750 6100 50  0001 C CNN
F 3 "" H 5750 6100 50  0001 C CNN
	1    5750 6100
	1    0    0    -1  
$EndComp
$Comp
L ProximityMother_V1-rescue:GND-power #PWR022
U 1 1 5EFA8942
P 5200 7650
F 0 "#PWR022" H 5200 7400 50  0001 C CNN
F 1 "GND" H 5205 7477 50  0000 C CNN
F 2 "" H 5200 7650 50  0001 C CNN
F 3 "" H 5200 7650 50  0001 C CNN
	1    5200 7650
	1    0    0    -1  
$EndComp
Text GLabel 2900 7200 0    40   Input ~ 0
SCK
Text GLabel 2450 7000 0    40   Input ~ 0
MISO
Text GLabel 2450 7300 0    40   Input ~ 0
MOSI
Wire Wire Line
	2900 7200 3400 7200
Wire Wire Line
	2450 7300 3400 7300
Wire Wire Line
	2450 7000 3400 7000
Wire Wire Line
	6900 3450 7700 3450
Text GLabel 3050 7400 0    50   Input ~ 0
CSB_LDC
Wire Wire Line
	3050 7400 3400 7400
$Comp
L ProximityMother_V1-rescue:GND-power #PWR025
U 1 1 5EFDCE1C
P 5400 7750
F 0 "#PWR025" H 5400 7500 50  0001 C CNN
F 1 "GND" H 5405 7577 50  0000 C CNN
F 2 "" H 5400 7750 50  0001 C CNN
F 3 "" H 5400 7750 50  0001 C CNN
	1    5400 7750
	1    0    0    -1  
$EndComp
$Comp
L ProximityMother_V1-rescue:0.1UF-0603-25V-5%-SparkFun-Capacitors C12
U 1 1 5EFDCE23
P 5400 7500
F 0 "C12" H 5292 7508 45  0000 R CNN
F 1 "15nF" H 5292 7592 45  0000 R CNN
F 2 "Capacitor_SMD:C_1210_3225Metric_Pad1.42x2.65mm_HandSolder" H 5400 7750 20  0001 C CNN
F 3 "" H 5400 7500 50  0001 C CNN
F 4 "" H 5292 7634 60  0000 R CNN "Field4"
	1    5400 7500
	-1   0    0    1   
$EndComp
Wire Wire Line
	5400 7700 5400 7750
Text GLabel 3150 7100 0    50   Input ~ 0
CLKIN_LDC
Wire Wire Line
	3150 7100 3400 7100
$Comp
L ProximityMother_V1-rescue:GND-power #PWR?
U 1 1 5EEBFAAF
P 5750 7050
AR Path="/5C794189/5EEBFAAF" Ref="#PWR?"  Part="1" 
AR Path="/5C7AE590/5EEBFAAF" Ref="#PWR026"  Part="1" 
F 0 "#PWR026" H 5750 6800 50  0001 C CNN
F 1 "GND" H 5755 6877 50  0000 C CNN
F 2 "" H 5750 7050 50  0001 C CNN
F 3 "" H 5750 7050 50  0001 C CNN
	1    5750 7050
	1    0    0    -1  
$EndComp
Wire Wire Line
	5600 6850 5600 7000
$Comp
L ProximityMother_V1-rescue:0.1UF-0402-16V-10%-SparkFun-Capacitors C?
U 1 1 5EEBFAB6
P 5900 6750
AR Path="/5C794189/5EEBFAB6" Ref="C?"  Part="1" 
AR Path="/5C7AE590/5EEBFAB6" Ref="C14"  Part="1" 
F 0 "C14" H 6008 6842 45  0000 L CNN
F 1 "100nF" H 6008 6758 45  0000 L CNN
F 2 "Capacitor_SMD:C_1210_3225Metric_Pad1.42x2.65mm_HandSolder" H 5930 6900 20  0001 C CNN
F 3 "" H 5900 6750 60  0001 C CNN
	1    5900 6750
	1    0    0    -1  
$EndComp
Wire Wire Line
	5900 6850 5900 7000
Wire Wire Line
	5600 7000 5750 7000
Wire Wire Line
	5750 7050 5750 7000
Connection ~ 5750 7000
Wire Wire Line
	5750 7000 5900 7000
Wire Wire Line
	5600 6400 5600 6550
Wire Wire Line
	5900 6400 5900 6550
$Comp
L ProximityMother_V1-rescue:DS1077LZ-40-DS1077LZ-40-clk-gen U3
U 1 1 5EED9F47
P 3050 4900
AR Path="/5EED9F47" Ref="U3"  Part="1" 
AR Path="/5C7AE590/5EED9F47" Ref="U3"  Part="1" 
F 0 "U3" H 3050 5770 50  0000 C CNN
F 1 "Clk Gen" H 3350 5650 50  0000 C CNN
F 2 "snap_footprints:SOIC127P600X175-8N" H 3050 4900 50  0001 L BNN
F 3 "" H 3050 4900 50  0001 C CNN
	1    3050 4900
	-1   0    0    -1  
$EndComp
Text Notes 2100 5150 0    50   ~ 0
Clock generator 1-40 MHz\nNote: Symbol from SnapEDA
Text GLabel 1900 4600 0    50   Input ~ 0
CLKIN_LDC
Wire Wire Line
	1900 4600 2350 4600
Text Label 1950 4600 0    50   ~ 0
CLKIN_LDC
$Comp
L ProximityMother_V1-rescue:GND-power #PWR?
U 1 1 5EEFD80B
P 950 4950
AR Path="/5C794189/5EEFD80B" Ref="#PWR?"  Part="1" 
AR Path="/5C7AE590/5EEFD80B" Ref="#PWR011"  Part="1" 
F 0 "#PWR011" H 950 4700 50  0001 C CNN
F 1 "GND" H 955 4777 50  0000 C CNN
F 2 "" H 950 4950 50  0001 C CNN
F 3 "" H 950 4950 50  0001 C CNN
	1    950  4950
	1    0    0    -1  
$EndComp
Wire Wire Line
	800  4750 800  4900
$Comp
L ProximityMother_V1-rescue:0.1UF-0402-16V-10%-SparkFun-Capacitors C?
U 1 1 5EEFD812
P 1100 4650
AR Path="/5C794189/5EEFD812" Ref="C?"  Part="1" 
AR Path="/5C7AE590/5EEFD812" Ref="C7"  Part="1" 
F 0 "C7" H 1208 4742 45  0000 L CNN
F 1 "100nF" H 1208 4658 45  0000 L CNN
F 2 "Capacitor_SMD:C_1210_3225Metric_Pad1.42x2.65mm_HandSolder" H 1130 4800 20  0001 C CNN
F 3 "" H 1100 4650 60  0001 C CNN
	1    1100 4650
	1    0    0    -1  
$EndComp
Wire Wire Line
	1100 4750 1100 4900
Wire Wire Line
	800  4900 950  4900
Wire Wire Line
	950  4950 950  4900
Connection ~ 950  4900
Wire Wire Line
	950  4900 1100 4900
Wire Wire Line
	800  4300 800  4450
Wire Wire Line
	1100 4300 1100 4450
Wire Wire Line
	800  4300 1100 4300
Wire Wire Line
	1100 4300 2250 4300
Connection ~ 1100 4300
$Comp
L ProximityMother_V1-rescue:+3V3-power #PWR?
U 1 1 5EF15492
P 2250 4000
AR Path="/5C794189/5EF15492" Ref="#PWR?"  Part="1" 
AR Path="/5C7AE590/5EF15492" Ref="#PWR014"  Part="1" 
F 0 "#PWR014" H 2250 3850 50  0001 C CNN
F 1 "+3V3" H 2350 4100 50  0000 C CNN
F 2 "" H 2250 4000 50  0001 C CNN
F 3 "" H 2250 4000 50  0001 C CNN
	1    2250 4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	2250 4000 2250 4300
Connection ~ 2250 4300
Wire Wire Line
	2250 4300 2350 4300
Text Label 2050 4300 0    50   ~ 0
VCC
Text GLabel 3800 5100 2    50   Input ~ 0
SDA
Text GLabel 3800 4500 2    50   Input ~ 0
SCL
Wire Wire Line
	3750 4500 3800 4500
Wire Wire Line
	3750 5100 3800 5100
Text Notes 3800 4400 0    50   ~ 0
I2C Communication with\nAtmega328p MCU
Text Notes 1450 4850 0    50   ~ 0
Clock signal for \nInductance-2-Digital Conv.
$Comp
L ProximityMother_V1-rescue:GND-power #PWR013
U 1 1 5EF4E093
P 2050 5500
F 0 "#PWR013" H 2050 5250 50  0001 C CNN
F 1 "GND" H 2055 5327 50  0000 C CNN
F 2 "" H 2050 5500 50  0001 C CNN
F 3 "" H 2050 5500 50  0001 C CNN
	1    2050 5500
	1    0    0    -1  
$EndComp
Wire Wire Line
	2050 5400 2350 5400
Wire Wire Line
	2050 5400 2050 5500
Text Label 4700 7400 0    50   ~ 0
GND
Text Label 2150 5400 0    50   ~ 0
GND
Wire Wire Line
	6900 2050 8200 2050
Text Notes 8400 1950 0    50   ~ 0
I2C comm \nwith Clock gen.
Text GLabel 3800 4800 2    50   Input ~ 0
CTRL0
Text GLabel 3800 4900 2    50   Input ~ 0
CTRL1
Wire Wire Line
	3750 4800 3800 4800
Wire Wire Line
	3750 4900 3800 4900
Text Notes 4050 4700 0    50   ~ 0
Controls from\nAtmega328p MCU
Text GLabel 1900 4500 0    50   Input ~ 0
OUT0
Wire Wire Line
	1900 4500 2350 4500
Text HLabel 1500 6650 0    40   Input ~ 0
INA
Text HLabel 1500 7500 0    40   Input ~ 0
INB
Wire Wire Line
	1500 7500 3400 7500
Text Label 2400 6650 0    50   ~ 0
INA_LDC
Text Label 1600 7500 0    50   ~ 0
INB_LDC
Text Notes 1350 6550 0    50   ~ 0
Comm with the MUX\nNote: These go to the other Sheet
Text HLabel 950  2900 0    40   Input ~ 0
IN1
Text Notes 800  2750 0    50   ~ 0
IN1, IN2 are set by MCU. They \ncontrol the two 1:2 Mux/Demux. \nNote: These go to the other Sheet
Text HLabel 950  3100 0    40   Input ~ 0
IN2
Wire Wire Line
	1500 2900 1500 3000
Wire Wire Line
	950  2900 1500 2900
Wire Wire Line
	950  3100 1500 3100
Wire Wire Line
	1500 3000 1950 3000
Connection ~ 1500 3000
Wire Wire Line
	1500 3000 1500 3100
Text Label 7050 3350 0    50   ~ 0
CTRL_MUX12
Text GLabel 2050 3000 2    50   Input ~ 0
CTRL_MUX12
Text Label 1550 3000 0    50   ~ 0
CTRL_MUX2
Wire Wire Line
	6900 2450 9800 2450
Wire Wire Line
	9800 2550 6900 2550
Text Notes 8100 3500 0    50   ~ 0
(SPI) CSB uniquely \nselects LDC device.
$Comp
L ProximityMother_V1-rescue:RESISTOR0603-SparkFun-Resistors R?
U 1 1 5EFD1090
P 1950 3300
AR Path="/5C794189/5EFD1090" Ref="R?"  Part="1" 
AR Path="/5C7AE590/5EFD1090" Ref="R2"  Part="1" 
F 0 "R2" V 2045 3232 45  0000 R CNN
F 1 "4.7K" V 1961 3232 45  0000 R CNN
F 2 "Resistor_SMD:R_1210_3225Metric_Pad1.42x2.65mm_HandSolder" H 1950 3450 20  0001 C CNN
F 3 "" H 1950 3300 60  0001 C CNN
F 4 " " V 1866 3232 60  0000 R CNN "Field4"
	1    1950 3300
	0    -1   -1   0   
$EndComp
$Comp
L ProximityMother_V1-rescue:GND-power #PWR?
U 1 1 5EFD7FB8
P 1950 3600
AR Path="/5C794189/5EFD7FB8" Ref="#PWR?"  Part="1" 
AR Path="/5C7AE590/5EFD7FB8" Ref="#PWR012"  Part="1" 
F 0 "#PWR012" H 1950 3350 50  0001 C CNN
F 1 "GND" H 1955 3427 50  0000 C CNN
F 2 "" H 1950 3600 50  0001 C CNN
F 3 "" H 1950 3600 50  0001 C CNN
	1    1950 3600
	1    0    0    -1  
$EndComp
Wire Wire Line
	1950 3500 1950 3600
Wire Wire Line
	1950 3100 1950 3000
Connection ~ 1950 3000
Wire Wire Line
	1950 3000 2050 3000
$Comp
L ProximityMother_V1-rescue:GND-power #PWR?
U 1 1 5EF03F44
P 1300 2000
AR Path="/5C7934FF/55E89CE4/5EF03F44" Ref="#PWR?"  Part="1" 
AR Path="/5C7D0DFA/5EF03F44" Ref="#PWR?"  Part="1" 
AR Path="/5C7AE590/5EF03F44" Ref="#PWR010"  Part="1" 
F 0 "#PWR010" H 1300 2000 30  0001 C CNN
F 1 "GND" H 1300 1930 30  0001 C CNN
F 2 "~" H 1300 2000 60  0000 C CNN
F 3 "~" H 1300 2000 60  0000 C CNN
F 4 "ANY" H 1300 2000 60  0001 C CNN "Source"
F 5 "N" H 1300 2000 60  0001 C CNN "Critical"
F 6 "~" H 1300 2000 60  0001 C CNN "Notes"
	1    1300 2000
	1    0    0    -1  
$EndComp
Wire Wire Line
	1400 1400 1300 1400
Wire Wire Line
	1300 1500 1300 1400
Connection ~ 1300 1400
Wire Wire Line
	1300 1900 1300 2000
Wire Wire Line
	950  1400 1300 1400
$Comp
L ProximityMother_V1-rescue:RESISTOR0603-SparkFun-Resistors R?
U 1 1 5EF03F51
P 1300 1700
AR Path="/5C794189/5EF03F51" Ref="R?"  Part="1" 
AR Path="/5C7AE590/5EF03F51" Ref="R1"  Part="1" 
F 0 "R1" V 1395 1632 45  0000 R CNN
F 1 "1K" V 1311 1632 45  0000 R CNN
F 2 "Resistor_SMD:R_1210_3225Metric_Pad1.42x2.65mm_HandSolder" H 1300 1850 20  0001 C CNN
F 3 "" H 1300 1700 60  0001 C CNN
F 4 " " V 1216 1632 60  0000 R CNN "Field4"
	1    1300 1700
	0    -1   -1   0   
$EndComp
$Comp
L ProximityMother_V1-rescue:RESISTOR0603-SparkFun-Resistors R?
U 1 1 5EF03F59
P 2000 1400
AR Path="/5C794189/5EF03F59" Ref="R?"  Part="1" 
AR Path="/5C7AE590/5EF03F59" Ref="R3"  Part="1" 
F 0 "R3" V 2095 1332 45  0000 R CNN
F 1 "0" V 2011 1332 45  0000 R CNN
F 2 "Resistor_SMD:R_1210_3225Metric_Pad1.42x2.65mm_HandSolder" H 2000 1550 20  0001 C CNN
F 3 "" H 2000 1400 60  0001 C CNN
F 4 " " V 1916 1332 60  0000 R CNN "Field4"
	1    2000 1400
	-1   0    0    1   
$EndComp
$Comp
L ProximityMother_V1-rescue:0.1UF-0603-25V-5%-SparkFun-Capacitors C8
U 1 1 5EF03F61
P 1600 1400
F 0 "C8" V 1834 1450 45  0000 C CNN
F 1 "100nF" V 1750 1450 45  0000 C CNN
F 2 "Capacitor_SMD:C_1210_3225Metric_Pad1.42x2.65mm_HandSolder" H 1600 1650 20  0001 C CNN
F 3 "" H 1600 1400 50  0001 C CNN
F 4 "" V 1761 1450 60  0000 C CNN "Field4"
	1    1600 1400
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1800 1400 1700 1400
Wire Wire Line
	2200 1400 2300 1400
Connection ~ 2300 1400
$Comp
L ProximityMother_V1-rescue:6_PIN_SERIAL_CABLEPTH-SparkFun-Connectors J3
U 1 1 5EF93D12
P 10000 2650
F 0 "J3" H 9700 2650 45  0000 C CNN
F 1 "Serial" H 9900 3250 45  0000 C CNN
F 2 "Connectors:FTDI_BASIC" H 10000 3350 20  0001 C CNN
F 3 "" H 10000 2650 50  0001 C CNN
F 4 "FTDI" H 9900 2550 60  0000 C CNN "Field4"
	1    10000 2650
	-1   0    0    -1  
$EndComp
Text GLabel 9550 2650 0    50   Input ~ 0
DTR
Wire Wire Line
	9550 2650 9800 2650
Text GLabel 950  1400 0    50   Input ~ 0
DTR
Text Label 1100 1400 0    50   ~ 0
DTR
Wire Wire Line
	9800 2350 9200 2350
Wire Wire Line
	9800 2250 9700 2250
Wire Wire Line
	9700 2250 9700 2150
Wire Wire Line
	9700 1850 9500 1850
Wire Wire Line
	9800 2150 9700 2150
Connection ~ 9700 2150
Wire Wire Line
	9700 2150 9700 1850
Text Label 9300 2350 0    50   ~ 0
VCC_FTDI
Text Label 9700 1950 0    50   ~ 0
GND
Text Label 9650 2650 0    50   ~ 0
DTR
$Comp
L ProximityMother_V1-rescue:LED-Arduino_Uno_R3_From_Scratch-rescue-HUTCO_Node_V10-rescue D?
U 1 1 5EF05560
P 8400 4600
AR Path="/5C7934FF/55DD0855/5EF05560" Ref="D?"  Part="1" 
AR Path="/5C7D0DDC/5EF05560" Ref="D?"  Part="1" 
AR Path="/5C794189/5EF05560" Ref="D?"  Part="1" 
AR Path="/5EF05560" Ref="D?"  Part="1" 
AR Path="/5C7AE590/5EF05560" Ref="D3"  Part="1" 
F 0 "D3" H 8400 4500 50  0000 C CNN
F 1 "Red" H 8450 4750 50  0000 C CNN
F 2 "LED_SMD:LED_1206_3216Metric" H 8400 4600 60  0001 C CNN
F 3 "" H 8400 4600 60  0001 C CNN
F 4 "LED CHIPLED 570NM GREEN" H 8400 4600 60  0001 C CNN "Characteristics"
F 5 "Serial Tx Green LED" H 8400 4600 60  0001 C CNN "Description"
F 6 "OSRAM Opto" H 8400 4600 60  0001 C CNN "MFN"
F 7 "LG R971-KN-1" H 8400 4600 60  0001 C CNN "MFP"
F 8 "SMD_0805" H 8400 4600 60  0001 C CNN "Package ID"
F 9 "ANY" H 8400 4600 60  0001 C CNN "Source"
F 10 "N" H 8400 4600 60  0001 C CNN "Critical"
F 11 "16U2_Sub" H 8400 4600 60  0001 C CNN "Subsystem"
F 12 "~" H 8400 4600 60  0001 C CNN "Notes"
	1    8400 4600
	0    -1   -1   0   
$EndComp
$Comp
L ProximityMother_V1-rescue:RESISTOR0603-SparkFun-Resistors R?
U 1 1 5EF05568
P 8400 4050
AR Path="/5C794189/5EF05568" Ref="R?"  Part="1" 
AR Path="/5C7AE590/5EF05568" Ref="R8"  Part="1" 
F 0 "R8" V 8495 3982 45  0000 R CNN
F 1 "1K" V 8411 3982 45  0000 R CNN
F 2 "Resistor_SMD:R_1210_3225Metric_Pad1.42x2.65mm_HandSolder" H 8400 4200 20  0001 C CNN
F 3 "" H 8400 4050 60  0001 C CNN
F 4 " " V 8316 3982 60  0000 R CNN "Field4"
	1    8400 4050
	0    -1   -1   0   
$EndComp
$Comp
L ProximityMother_V1-rescue:GND-power #PWR029
U 1 1 5EF0556F
P 8400 4950
F 0 "#PWR029" H 8400 4700 50  0001 C CNN
F 1 "GND" H 8405 4777 50  0000 C CNN
F 2 "" H 8400 4950 50  0001 C CNN
F 3 "" H 8400 4950 50  0001 C CNN
	1    8400 4950
	1    0    0    -1  
$EndComp
Wire Wire Line
	8400 4250 8400 4400
Wire Wire Line
	8400 4800 8400 4950
Wire Wire Line
	8400 2850 8400 3850
Wire Wire Line
	6900 2850 8400 2850
Text Label 8400 3050 0    50   ~ 0
PROX_SENSED
Text Notes 7400 4700 0    50   ~ 0
Notify user that\ntarget is sensed in\nproximity of sensor!
$Comp
L ProximityMother_V1-rescue:0.1UF-0402-16V-10%-SparkFun-Capacitors C?
U 1 1 5EF174DF
P 3700 3050
AR Path="/5C794189/5EF174DF" Ref="C?"  Part="1" 
AR Path="/5C7AE590/5EF174DF" Ref="C9"  Part="1" 
F 0 "C9" H 3500 3150 45  0000 L CNN
F 1 "10nF" H 3400 3050 45  0000 L CNN
F 2 "Capacitor_SMD:C_1210_3225Metric_Pad1.42x2.65mm_HandSolder" H 3730 3200 20  0001 C CNN
F 3 "" H 3700 3050 60  0001 C CNN
	1    3700 3050
	1    0    0    -1  
$EndComp
$Comp
L ProximityMother_V1-rescue:0.1UF-0402-16V-10%-SparkFun-Capacitors C?
U 1 1 5EF1785F
P 800 4650
AR Path="/5C794189/5EF1785F" Ref="C?"  Part="1" 
AR Path="/5C7AE590/5EF1785F" Ref="C6"  Part="1" 
F 0 "C6" H 600 4750 45  0000 L CNN
F 1 "10nF" H 500 4650 45  0000 L CNN
F 2 "Capacitor_SMD:C_1210_3225Metric_Pad1.42x2.65mm_HandSolder" H 830 4800 20  0001 C CNN
F 3 "" H 800 4650 60  0001 C CNN
	1    800  4650
	1    0    0    -1  
$EndComp
$Comp
L ProximityMother_V1-rescue:0.1UF-0402-16V-10%-SparkFun-Capacitors C?
U 1 1 5EF17B3D
P 5600 6750
AR Path="/5C794189/5EF17B3D" Ref="C?"  Part="1" 
AR Path="/5C7AE590/5EF17B3D" Ref="C13"  Part="1" 
F 0 "C13" H 5600 7000 45  0000 L CNN
F 1 "10nF" H 5600 6900 45  0000 L CNN
F 2 "Capacitor_SMD:C_1210_3225Metric_Pad1.42x2.65mm_HandSolder" H 5630 6900 20  0001 C CNN
F 3 "" H 5600 6750 60  0001 C CNN
	1    5600 6750
	1    0    0    -1  
$EndComp
Wire Wire Line
	5200 7400 5200 7650
Wire Wire Line
	5400 7300 5400 7400
Text Notes 1750 7200 0    50   ~ 0
SPI Comm with\nAtmega328p MCU
Wire Wire Line
	4700 7400 5200 7400
Connection ~ 5200 7400
Wire Wire Line
	4700 7300 5400 7300
Wire Wire Line
	4700 7100 5200 7100
Wire Wire Line
	5200 7100 5200 7400
Wire Wire Line
	4700 6650 4700 7000
Wire Wire Line
	1500 6650 4700 6650
Text Label 5750 6400 0    50   ~ 0
VCC
Wire Wire Line
	5600 6400 5750 6400
Wire Wire Line
	5750 6100 5750 6300
Connection ~ 5750 6400
Wire Wire Line
	5750 6400 5900 6400
Wire Wire Line
	4700 7200 4950 7200
Wire Wire Line
	4950 7200 4950 6300
Wire Wire Line
	4950 6300 5750 6300
Connection ~ 5750 6300
Wire Wire Line
	5750 6300 5750 6400
Text Label 5300 7300 0    50   ~ 0
CLDO
$Comp
L ProximityMother_V1-rescue:LDC1101DRCR-LDC1101DRCR U4
U 1 1 5EF30808
P 3400 7000
F 0 "U4" H 4050 7265 50  0000 C CNN
F 1 "LDC" H 4050 7174 50  0000 C CNN
F 2 "TPS74901DRCR" H 4550 7100 50  0001 L CNN
F 3 "http://www.ti.com/lit/gpn/ldc1101" H 4550 7000 50  0001 L CNN
F 4 "1.8V, High Resolution Inductance to Digital Converter" H 4550 6900 50  0001 L CNN "Description"
F 5 "" H 4550 6800 50  0001 L CNN "Height"
F 6 "595-LDC1101DRCR" H 4550 6700 50  0001 L CNN "Mouser Part Number"
F 7 "https://www.mouser.co.uk/ProductDetail/Texas-Instruments/LDC1101DRCR?qs=GJ%2F2ZGcr5uOdE4MCIXn97A%3D%3D" H 4550 6600 50  0001 L CNN "Mouser Price/Stock"
F 8 "Texas Instruments" H 4550 6500 50  0001 L CNN "Manufacturer_Name"
F 9 "LDC1101DRCR" H 4550 6400 50  0001 L CNN "Manufacturer_Part_Number"
	1    3400 7000
	1    0    0    -1  
$EndComp
$EndSCHEMATC
