EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L RF_Module:ESP-12F U2
U 1 1 61460645
P 1750 4900
F 0 "U2" H 1750 5881 50  0000 C CNN
F 1 "ESP-12F" H 1750 5790 50  0000 C CNN
F 2 "RF_Module:ESP-12E" H 1750 4900 50  0001 C CNN
F 3 "http://wiki.ai-thinker.com/_media/esp8266/esp8266_series_modules_user_manual_v1.1.pdf" H 1400 5000 50  0001 C CNN
	1    1750 4900
	1    0    0    -1  
$EndComp
$Comp
L Device:C C1
U 1 1 61461A3E
P 3200 2500
F 0 "C1" H 3315 2546 50  0001 L CNN
F 1 "22uF" H 3315 2455 50  0001 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.33x1.80mm_HandSolder" H 3238 2350 50  0001 C CNN
F 3 "~" H 3200 2500 50  0001 C CNN
	1    3200 2500
	1    0    0    -1  
$EndComp
$Comp
L Regulator_Linear:AMS1117-3.3 U1
U 1 1 61462090
P 2350 2250
F 0 "U1" H 2350 2492 50  0001 C CNN
F 1 "AMS1117-3.3" H 2350 2401 50  0001 C CNN
F 2 "Package_TO_SOT_SMD:SOT-223-3_TabPin2" H 2350 2450 50  0001 C CNN
F 3 "http://www.advanced-monolithic.com/pdf/ds1117.pdf" H 2450 2000 50  0001 C CNN
	1    2350 2250
	1    0    0    -1  
$EndComp
$Comp
L Erich:USB_B_Micro_Power J1
U 1 1 614630D6
P 1150 2450
F 0 "J1" H 1207 2917 50  0000 C CNN
F 1 "USB_B_Micro_Power" H 1207 2826 50  0000 C CNN
F 2 "SHRDZM:USB_Micro-B_Power" H 1300 2400 50  0001 C CNN
F 3 "~" H 1300 2400 50  0001 C CNN
	1    1150 2450
	1    0    0    -1  
$EndComp
$Comp
L Device:R R1
U 1 1 61465FC7
P 2500 4600
F 0 "R1" V 2450 4750 50  0001 C CNN
F 1 "P3" V 2500 4600 39  0000 C CNN
F 2 "Resistor_SMD:R_0201_0603Metric_Pad0.64x0.40mm_HandSolder" V 2430 4600 50  0001 C CNN
F 3 "~" H 2500 4600 50  0001 C CNN
	1    2500 4600
	0    1    1    0   
$EndComp
$Comp
L Device:R R2
U 1 1 61466A9B
P 2500 4700
F 0 "R2" V 2550 4850 50  0001 C CNN
F 1 "P4" V 2500 4700 39  0000 C CNN
F 2 "Resistor_SMD:R_0201_0603Metric_Pad0.64x0.40mm_HandSolder" V 2430 4700 50  0001 C CNN
F 3 "~" H 2500 4700 50  0001 C CNN
	1    2500 4700
	0    1    1    0   
$EndComp
$Comp
L Device:R R3
U 1 1 61466CF6
P 2750 5450
F 0 "R3" H 2820 5496 50  0000 L CNN
F 1 "2.2k" H 2820 5405 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 2680 5450 50  0001 C CNN
F 3 "~" H 2750 5450 50  0001 C CNN
	1    2750 5450
	1    0    0    -1  
$EndComp
Wire Wire Line
	3200 2350 3200 2250
Wire Wire Line
	1750 5600 1750 5750
Wire Wire Line
	2650 2250 3200 2250
Wire Wire Line
	1150 2850 1800 2850
Wire Wire Line
	3200 2850 3200 2650
Wire Wire Line
	2350 2550 2350 2850
Connection ~ 2350 2850
Wire Wire Line
	2350 2850 3200 2850
$Comp
L Switch:SW_Push SW1
U 1 1 6146B626
P 3150 5450
F 0 "SW1" V 3104 5598 50  0000 L CNN
F 1 "SW_Push" V 3195 5598 50  0000 L CNN
F 2 "Button_Switch_SMD:SW_SPST_CK_RS282G05A3" H 3150 5650 50  0001 C CNN
F 3 "~" H 3150 5650 50  0001 C CNN
	1    3150 5450
	0    1    1    0   
$EndComp
Wire Wire Line
	2350 5200 2750 5200
Wire Wire Line
	2750 5200 2750 5300
Wire Wire Line
	2750 5600 2750 5750
Wire Wire Line
	2350 5000 3150 5000
Wire Wire Line
	3150 5000 3150 5250
Wire Wire Line
	3150 5650 3150 5750
Wire Wire Line
	2800 4600 2650 4600
Wire Wire Line
	2800 4700 2650 4700
NoConn ~ 2350 4900
NoConn ~ 2350 4300
NoConn ~ 2350 4500
NoConn ~ 1150 4700
NoConn ~ 1150 4900
NoConn ~ 1150 5000
NoConn ~ 1150 5100
NoConn ~ 1150 5200
NoConn ~ 1150 5300
NoConn ~ 1150 5400
$Comp
L TSS721ADR:TSS721ADR U3
U 1 1 61633360
P 8200 2350
F 0 "U3" H 8200 3450 50  0001 C CNN
F 1 "TSS721ADR" H 8200 3350 50  0001 C CNN
F 2 "TSS721ADR:SOIC127P600X175-16N" H 8200 2350 50  0001 L BNN
F 3 "" H 8200 2350 50  0001 L BNN
	1    8200 2350
	-1   0    0    -1  
$EndComp
$Comp
L Connector:RJ12 J2
U 1 1 616367B9
P 10650 1850
F 0 "J2" H 10320 1854 50  0000 R CNN
F 1 "RJ12" H 10320 1945 50  0000 R CNN
F 2 "ErichCollection:RJ12_Amphenol_54601" V 10650 1875 50  0001 C CNN
F 3 "~" V 10650 1875 50  0001 C CNN
	1    10650 1850
	-1   0    0    1   
$EndComp
Wire Wire Line
	7500 950  7500 1150
Wire Wire Line
	7500 3800 7500 3550
$Comp
L power:GND #PWR0102
U 1 1 6164BD9D
P 7500 3800
F 0 "#PWR0102" H 7500 3550 50  0001 C CNN
F 1 "GND" H 7505 3627 50  0000 C CNN
F 2 "" H 7500 3800 50  0001 C CNN
F 3 "" H 7500 3800 50  0001 C CNN
	1    7500 3800
	1    0    0    -1  
$EndComp
NoConn ~ 7500 1450
NoConn ~ 8900 2150
NoConn ~ 8900 3150
NoConn ~ 8900 3350
Wire Wire Line
	9550 1650 9550 950 
Wire Wire Line
	8900 1650 9550 1650
Wire Wire Line
	7500 950  9550 950 
Wire Wire Line
	2800 4600 2800 4650
$Comp
L Device:C C2
U 1 1 61679AD8
P 1800 2550
F 0 "C2" H 1915 2596 50  0001 L CNN
F 1 "22uF" H 1915 2505 50  0001 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.33x1.80mm_HandSolder" H 1838 2400 50  0001 C CNN
F 3 "~" H 1800 2550 50  0001 C CNN
	1    1800 2550
	1    0    0    -1  
$EndComp
Wire Wire Line
	1450 2250 1800 2250
Wire Wire Line
	1800 2400 1800 2250
Connection ~ 1800 2250
Wire Wire Line
	1800 2250 2050 2250
Wire Wire Line
	1800 2700 1800 2850
Connection ~ 1800 2850
Wire Wire Line
	1800 2850 2350 2850
$Comp
L power:GND #PWR0103
U 1 1 6167BC82
P 2350 3300
F 0 "#PWR0103" H 2350 3050 50  0001 C CNN
F 1 "GND" H 2355 3127 50  0000 C CNN
F 2 "" H 2350 3300 50  0001 C CNN
F 3 "" H 2350 3300 50  0001 C CNN
	1    2350 3300
	1    0    0    -1  
$EndComp
Wire Wire Line
	2350 2850 2350 3300
$Comp
L power:GND #PWR0104
U 1 1 6167D0B1
P 1750 5750
F 0 "#PWR0104" H 1750 5500 50  0001 C CNN
F 1 "GND" H 1755 5577 50  0000 C CNN
F 2 "" H 1750 5750 50  0001 C CNN
F 3 "" H 1750 5750 50  0001 C CNN
	1    1750 5750
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0105
U 1 1 6167D4CC
P 2750 5750
F 0 "#PWR0105" H 2750 5500 50  0001 C CNN
F 1 "GND" H 2755 5577 50  0000 C CNN
F 2 "" H 2750 5750 50  0001 C CNN
F 3 "" H 2750 5750 50  0001 C CNN
	1    2750 5750
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0106
U 1 1 6167D7FF
P 3150 5750
F 0 "#PWR0106" H 3150 5500 50  0001 C CNN
F 1 "GND" H 3155 5577 50  0000 C CNN
F 2 "" H 3150 5750 50  0001 C CNN
F 3 "" H 3150 5750 50  0001 C CNN
	1    3150 5750
	1    0    0    -1  
$EndComp
Wire Wire Line
	3000 4650 2900 4650
Connection ~ 2800 4650
Wire Wire Line
	2800 4650 2800 4700
$Comp
L power:+3.3V #PWR0107
U 1 1 616A86BF
P 1000 4100
F 0 "#PWR0107" H 1000 3950 50  0001 C CNN
F 1 "+3.3V" H 1015 4273 50  0000 C CNN
F 2 "" H 1000 4100 50  0001 C CNN
F 3 "" H 1000 4100 50  0001 C CNN
	1    1000 4100
	1    0    0    -1  
$EndComp
Wire Wire Line
	1750 4100 1000 4100
Wire Wire Line
	1150 4500 1000 4500
Wire Wire Line
	1000 4500 1000 4100
Connection ~ 1000 4100
Wire Wire Line
	2350 5300 2350 5700
Wire Wire Line
	2350 5700 1050 5700
Wire Wire Line
	1050 5700 1050 4300
Wire Wire Line
	1050 4300 1150 4300
$Comp
L power:+3.3V #PWR0108
U 1 1 616AC8B6
P 3200 2000
F 0 "#PWR0108" H 3200 1850 50  0001 C CNN
F 1 "+3.3V" H 3215 2173 50  0000 C CNN
F 2 "" H 3200 2000 50  0001 C CNN
F 3 "" H 3200 2000 50  0001 C CNN
	1    3200 2000
	1    0    0    -1  
$EndComp
Wire Wire Line
	3200 2250 3200 2000
Connection ~ 3200 2250
$Comp
L power:GND #PWR0109
U 1 1 616AE545
P 10250 2650
F 0 "#PWR0109" H 10250 2400 50  0001 C CNN
F 1 "GND" H 10255 2477 50  0000 C CNN
F 2 "" H 10250 2650 50  0001 C CNN
F 3 "" H 10250 2650 50  0001 C CNN
	1    10250 2650
	1    0    0    -1  
$EndComp
Wire Wire Line
	10250 2150 10250 2500
$Comp
L Device:R R13
U 1 1 616AFA1A
P 10150 2350
F 0 "R13" V 10100 2500 50  0000 C CNN
F 1 "0" V 10150 2350 50  0000 C CNN
F 2 "Resistor_SMD:R_0201_0603Metric_Pad0.64x0.40mm_HandSolder" V 10080 2350 50  0001 C CNN
F 3 "~" H 10150 2350 50  0001 C CNN
	1    10150 2350
	-1   0    0    1   
$EndComp
Connection ~ 10250 2500
Wire Wire Line
	10250 2500 10250 2650
Wire Wire Line
	8900 1850 9200 1850
$Comp
L Device:R R6
U 1 1 616B520B
P 3150 4650
F 0 "R6" V 3100 4800 50  0001 C CNN
F 1 "M_TX" V 3150 4650 39  0000 C CNN
F 2 "Resistor_SMD:R_0201_0603Metric_Pad0.64x0.40mm_HandSolder" V 3080 4650 50  0001 C CNN
F 3 "~" H 3150 4650 50  0001 C CNN
	1    3150 4650
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3300 4650 3450 4650
$Comp
L Transistor_BJT:BC847 Q1
U 1 1 616B7812
P 4900 5150
F 0 "Q1" H 5091 5196 50  0000 L CNN
F 1 "BC847" H 5091 5105 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 5100 5075 50  0001 L CIN
F 3 "http://www.infineon.com/dgdl/Infineon-BC847SERIES_BC848SERIES_BC849SERIES_BC850SERIES-DS-v01_01-en.pdf?fileId=db3a304314dca389011541d4630a1657" H 4900 5150 50  0001 L CNN
	1    4900 5150
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR0110
U 1 1 616D010B
P 4800 5750
F 0 "#PWR0110" H 4800 5500 50  0001 C CNN
F 1 "GND" H 4805 5577 50  0000 C CNN
F 2 "" H 4800 5750 50  0001 C CNN
F 3 "" H 4800 5750 50  0001 C CNN
	1    4800 5750
	1    0    0    -1  
$EndComp
$Comp
L Device:R R7
U 1 1 616D18A5
P 3150 4850
F 0 "R7" V 3100 5000 50  0001 C CNN
F 1 "P1_TX" V 3150 4850 39  0000 C CNN
F 2 "Resistor_SMD:R_0201_0603Metric_Pad0.64x0.40mm_HandSolder" V 3080 4850 50  0001 C CNN
F 3 "~" H 3150 4850 50  0001 C CNN
	1    3150 4850
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4800 5350 4800 5750
Wire Wire Line
	3000 4850 2900 4850
Wire Wire Line
	2900 4850 2900 4650
Connection ~ 2900 4650
Wire Wire Line
	2900 4650 2800 4650
Wire Wire Line
	3300 4850 4800 4850
Wire Wire Line
	4800 4850 4800 4950
$Comp
L Device:R R8
U 1 1 616D60F9
P 4800 4700
F 0 "R8" H 4870 4746 50  0000 L CNN
F 1 "10k" H 4870 4655 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 4730 4700 50  0001 C CNN
F 3 "~" H 4800 4700 50  0001 C CNN
	1    4800 4700
	1    0    0    -1  
$EndComp
Connection ~ 4800 4850
Wire Wire Line
	2350 5100 4250 5100
Wire Wire Line
	4250 5100 4250 4400
Wire Wire Line
	4250 4400 4800 4400
Wire Wire Line
	4800 4400 4800 4550
$Comp
L Device:R R9
U 1 1 616D8299
P 5450 4700
F 0 "R9" H 5520 4746 50  0000 L CNN
F 1 "10k" H 5520 4655 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 5380 4700 50  0001 C CNN
F 3 "~" H 5450 4700 50  0001 C CNN
	1    5450 4700
	1    0    0    -1  
$EndComp
Wire Wire Line
	4800 4400 5450 4400
Wire Wire Line
	5450 4400 5450 4550
Connection ~ 4800 4400
Wire Wire Line
	5450 4850 5450 5150
Wire Wire Line
	5450 5150 5100 5150
Text Label 9950 4300 0    50   ~ 0
DATA
Text Label 5850 5150 0    50   ~ 0
DATA
Wire Wire Line
	5450 5150 5850 5150
Connection ~ 5450 5150
Text Label 10150 950  0    50   ~ 0
TRIGGER
Wire Wire Line
	10250 1750 10150 1750
Wire Wire Line
	10150 1750 10150 950 
Text Label 2550 4900 0    50   ~ 0
TRIGGER
Wire Wire Line
	2350 4800 2550 4800
Wire Wire Line
	2550 4800 2550 4900
$Comp
L power:+5V #PWR0111
U 1 1 616E4080
P 1800 1950
F 0 "#PWR0111" H 1800 1800 50  0001 C CNN
F 1 "+5V" H 1815 2123 50  0000 C CNN
F 2 "" H 1800 1950 50  0001 C CNN
F 3 "" H 1800 1950 50  0001 C CNN
	1    1800 1950
	1    0    0    -1  
$EndComp
Wire Wire Line
	1800 2250 1800 1950
$Comp
L power:+5V #PWR0112
U 1 1 616E65B0
P 10250 1450
F 0 "#PWR0112" H 10250 1300 50  0001 C CNN
F 1 "+5V" H 10265 1623 50  0000 C CNN
F 2 "" H 10250 1450 50  0001 C CNN
F 3 "" H 10250 1450 50  0001 C CNN
	1    10250 1450
	1    0    0    -1  
$EndComp
Wire Wire Line
	10250 1650 10250 1450
Wire Wire Line
	9950 2050 9950 4300
Wire Wire Line
	9950 2050 10250 2050
Wire Wire Line
	10150 2500 10250 2500
Wire Wire Line
	10150 1850 10150 2200
Connection ~ 10150 1850
Wire Wire Line
	10150 1850 10250 1850
$Comp
L Isolator:TLP291 U4
U 1 1 616F2A2C
P 8450 4700
F 0 "U4" H 8450 5025 50  0001 C CNN
F 1 "EL357NC" H 8450 4934 50  0001 C CNN
F 2 "Package_SO:SOIC-4_4.55x2.6mm_P1.27mm" H 8250 4500 50  0001 L CNN
F 3 "https://toshiba.semicon-storage.com/info/docget.jsp?did=12884&prodName=TLP291" H 8450 4700 50  0001 L CNN
	1    8450 4700
	-1   0    0    -1  
$EndComp
$Comp
L Device:R R11
U 1 1 616F3319
P 9350 1850
F 0 "R11" V 9300 2000 50  0000 C CNN
F 1 "220" V 9350 1850 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 9280 1850 50  0001 C CNN
F 3 "~" H 9350 1850 50  0001 C CNN
	1    9350 1850
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R12
U 1 1 616F3954
P 9350 1950
F 0 "R12" V 9300 2100 50  0000 C CNN
F 1 "220" V 9350 1950 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 9280 1950 50  0001 C CNN
F 3 "~" H 9350 1950 50  0001 C CNN
	1    9350 1950
	0    -1   -1   0   
$EndComp
Wire Wire Line
	9200 1950 8900 1950
$Comp
L Device:C C3
U 1 1 616F6BA5
P 6900 2400
F 0 "C3" H 7015 2446 50  0000 L CNN
F 1 "0.1uF" H 7015 2355 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.33x1.80mm_HandSolder" H 6938 2250 50  0001 C CNN
F 3 "~" H 6900 2400 50  0001 C CNN
	1    6900 2400
	1    0    0    -1  
$EndComp
Wire Wire Line
	7500 1150 6900 1150
Wire Wire Line
	6900 1150 6900 1300
Connection ~ 7500 1150
$Comp
L power:GND #PWR02
U 1 1 616F92D3
P 6900 3800
F 0 "#PWR02" H 6900 3550 50  0001 C CNN
F 1 "GND" H 6905 3627 50  0000 C CNN
F 2 "" H 6900 3800 50  0001 C CNN
F 3 "" H 6900 3800 50  0001 C CNN
	1    6900 3800
	1    0    0    -1  
$EndComp
Wire Wire Line
	6900 2550 6900 3800
$Comp
L Device:R R4
U 1 1 616FAFE9
P 6500 2400
F 0 "R4" V 6450 2550 50  0000 C CNN
F 1 "100k" V 6500 2400 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 6430 2400 50  0001 C CNN
F 3 "~" H 6500 2400 50  0001 C CNN
	1    6500 2400
	-1   0    0    1   
$EndComp
Wire Wire Line
	6900 2050 6500 2050
Wire Wire Line
	6500 2050 6500 2250
Connection ~ 6900 2050
Wire Wire Line
	6900 2050 6900 2250
$Comp
L power:GND #PWR01
U 1 1 616FD0E7
P 6500 3800
F 0 "#PWR01" H 6500 3550 50  0001 C CNN
F 1 "GND" H 6505 3627 50  0000 C CNN
F 2 "" H 6500 3800 50  0001 C CNN
F 3 "" H 6500 3800 50  0001 C CNN
	1    6500 3800
	1    0    0    -1  
$EndComp
Wire Wire Line
	6500 2550 6500 3800
$Comp
L Device:R R14
U 1 1 616FEF63
P 9600 2700
F 0 "R14" V 9550 2850 50  0000 C CNN
F 1 "100k" V 9600 2700 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 9530 2700 50  0001 C CNN
F 3 "~" H 9600 2700 50  0001 C CNN
	1    9600 2700
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR06
U 1 1 6170140B
P 9750 3800
F 0 "#PWR06" H 9750 3550 50  0001 C CNN
F 1 "GND" H 9755 3627 50  0000 C CNN
F 2 "" H 9750 3800 50  0001 C CNN
F 3 "" H 9750 3800 50  0001 C CNN
	1    9750 3800
	1    0    0    -1  
$EndComp
$Comp
L Device:R R10
U 1 1 6170BFA8
P 8900 4600
F 0 "R10" V 8850 4750 50  0000 C CNN
F 1 "1.5k" V 8900 4600 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 8830 4600 50  0001 C CNN
F 3 "~" H 8900 4600 50  0001 C CNN
	1    8900 4600
	0    -1   -1   0   
$EndComp
Text Label 7350 1350 2    50   ~ 0
UART_TX
Wire Wire Line
	7500 1350 7350 1350
Text Label 9000 4800 0    50   ~ 0
UART_TX
Wire Wire Line
	8750 4800 9000 4800
$Comp
L power:GND #PWR04
U 1 1 6172D78A
P 8000 4900
F 0 "#PWR04" H 8000 4650 50  0001 C CNN
F 1 "GND" H 8005 4727 50  0000 C CNN
F 2 "" H 8000 4900 50  0001 C CNN
F 3 "" H 8000 4900 50  0001 C CNN
	1    8000 4900
	1    0    0    -1  
$EndComp
Wire Wire Line
	8150 4800 8000 4800
Wire Wire Line
	8000 4800 8000 4900
Text Label 3450 4650 0    50   ~ 0
MBUS_TX
Text Label 7450 4600 2    50   ~ 0
MBUS_TX
$Comp
L Device:C C4
U 1 1 617321CF
P 9000 3600
F 0 "C4" H 9115 3646 50  0000 L CNN
F 1 "22uF" H 9115 3555 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.33x1.80mm_HandSolder" H 9038 3450 50  0001 C CNN
F 3 "~" H 9000 3600 50  0001 C CNN
	1    9000 3600
	1    0    0    -1  
$EndComp
Wire Wire Line
	9150 2950 9150 3450
Wire Wire Line
	9150 4600 9050 4600
Wire Wire Line
	8900 2950 9150 2950
Wire Wire Line
	9750 2850 9750 3050
Wire Wire Line
	9000 3450 9150 3450
Connection ~ 9150 3450
Wire Wire Line
	9150 3450 9150 4600
$Comp
L power:GND #PWR05
U 1 1 6173CE86
P 9000 3800
F 0 "#PWR05" H 9000 3550 50  0001 C CNN
F 1 "GND" H 9005 3627 50  0000 C CNN
F 2 "" H 9000 3800 50  0001 C CNN
F 3 "" H 9000 3800 50  0001 C CNN
	1    9000 3800
	1    0    0    -1  
$EndComp
Wire Wire Line
	9000 3750 9000 3800
$Comp
L Device:R R15
U 1 1 6173F40B
P 9750 2700
F 0 "R15" V 9700 2850 50  0000 C CNN
F 1 "30k" V 9750 2700 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 9680 2700 50  0001 C CNN
F 3 "~" H 9750 2700 50  0001 C CNN
	1    9750 2700
	1    0    0    -1  
$EndComp
Wire Wire Line
	9600 2850 9750 2850
Connection ~ 9750 2850
Wire Wire Line
	9750 2350 9750 2550
$Comp
L power:+3.3V #PWR03
U 1 1 61746EF2
P 8000 4150
F 0 "#PWR03" H 8000 4000 50  0001 C CNN
F 1 "+3.3V" H 8015 4323 50  0000 C CNN
F 2 "" H 8000 4150 50  0001 C CNN
F 3 "" H 8000 4150 50  0001 C CNN
	1    8000 4150
	1    0    0    -1  
$EndComp
$Comp
L Device:R R5
U 1 1 61747722
P 8000 4350
F 0 "R5" V 7950 4500 50  0000 C CNN
F 1 "1.5k" V 8000 4350 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 7930 4350 50  0001 C CNN
F 3 "~" H 8000 4350 50  0001 C CNN
	1    8000 4350
	-1   0    0    1   
$EndComp
Wire Wire Line
	8000 4150 8000 4200
Wire Wire Line
	7450 4600 8000 4600
Wire Wire Line
	8000 4500 8000 4600
Connection ~ 8000 4600
Wire Wire Line
	8000 4600 8150 4600
Wire Wire Line
	9500 1850 10150 1850
Wire Wire Line
	9500 1950 10250 1950
Wire Wire Line
	8900 2350 9750 2350
Wire Wire Line
	8900 2550 9600 2550
$Comp
L Device:C C5
U 1 1 61763C16
P 9350 2900
F 0 "C5" H 9465 2946 50  0000 L CNN
F 1 "0.22uF" H 9465 2855 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.33x1.80mm_HandSolder" H 9388 2750 50  0001 C CNN
F 3 "~" H 9350 2900 50  0001 C CNN
	1    9350 2900
	1    0    0    -1  
$EndComp
Wire Wire Line
	8900 2750 9350 2750
Wire Wire Line
	9350 3050 9750 3050
Connection ~ 9750 3050
Wire Wire Line
	9750 3050 9750 3800
$Comp
L Isolator:TLP291 U5
U 1 1 6176F157
P 5750 1200
F 0 "U5" H 5750 883 50  0001 C CNN
F 1 "EL357NC" H 5750 974 50  0001 C CNN
F 2 "Package_SO:SOIC-4_4.55x2.6mm_P1.27mm" H 5550 1000 50  0001 L CIN
F 3 "https://toshiba.semicon-storage.com/info/docget.jsp?did=12884&prodName=TLP291" H 5750 1200 50  0001 L CNN
	1    5750 1200
	1    0    0    1   
$EndComp
Wire Wire Line
	6050 1300 6900 1300
Connection ~ 6900 1300
Wire Wire Line
	6900 1300 6900 2050
Text Label 9150 1450 0    50   ~ 0
UART_RXI
Wire Wire Line
	8900 1450 9150 1450
Text Label 6250 1100 0    50   ~ 0
UART_RXI
Wire Wire Line
	6050 1100 6150 1100
Text Label 5250 1100 2    50   ~ 0
MBUS_RX
Wire Wire Line
	5250 1100 5450 1100
$Comp
L Device:R R17
U 1 1 61789B8F
P 6150 2000
F 0 "R17" V 6100 2150 50  0000 C CNN
F 1 "10k" V 6150 2000 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 6080 2000 50  0001 C CNN
F 3 "~" H 6150 2000 50  0001 C CNN
	1    6150 2000
	-1   0    0    1   
$EndComp
Wire Wire Line
	6150 1100 6150 1850
Connection ~ 6150 1100
Wire Wire Line
	6150 1100 6250 1100
$Comp
L power:GND #PWR08
U 1 1 6178CDD3
P 6150 3800
F 0 "#PWR08" H 6150 3550 50  0001 C CNN
F 1 "GND" H 6155 3627 50  0000 C CNN
F 2 "" H 6150 3800 50  0001 C CNN
F 3 "" H 6150 3800 50  0001 C CNN
	1    6150 3800
	1    0    0    -1  
$EndComp
Wire Wire Line
	6150 2150 6150 3800
$Comp
L Device:R R16
U 1 1 61790C22
P 4550 950
F 0 "R16" V 4500 1100 50  0000 C CNN
F 1 "10k" V 4550 950 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 4480 950 50  0001 C CNN
F 3 "~" H 4550 950 50  0001 C CNN
	1    4550 950 
	-1   0    0    1   
$EndComp
Wire Wire Line
	5450 1300 4550 1300
Wire Wire Line
	4550 1300 4550 1100
$Comp
L power:+3.3V #PWR07
U 1 1 61794900
P 4550 800
F 0 "#PWR07" H 4550 650 50  0001 C CNN
F 1 "+3.3V" H 4565 973 50  0000 C CNN
F 2 "" H 4550 800 50  0001 C CNN
F 3 "" H 4550 800 50  0001 C CNN
	1    4550 800 
	1    0    0    -1  
$EndComp
NoConn ~ 8900 1350
$Comp
L Device:R R18
U 1 1 61798BED
P 2500 4400
F 0 "R18" V 2450 4550 50  0001 C CNN
F 1 "M_RX" V 2500 4400 39  0000 C CNN
F 2 "Resistor_SMD:R_0201_0603Metric_Pad0.64x0.40mm_HandSolder" V 2430 4400 50  0001 C CNN
F 3 "~" H 2500 4400 50  0001 C CNN
	1    2500 4400
	0    -1   -1   0   
$EndComp
Text Label 2650 4400 0    50   ~ 0
MBUS_RX
$EndSCHEMATC
