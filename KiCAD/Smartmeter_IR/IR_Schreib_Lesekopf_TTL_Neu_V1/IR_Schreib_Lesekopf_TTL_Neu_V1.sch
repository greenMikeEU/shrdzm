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
Wire Wire Line
	7175 5925 7175 6100
Text Label 7175 6100 3    59   ~ 0
GND
Wire Wire Line
	4150 3775 4150 3850
Text Label 4150 3850 3    59   ~ 0
GND
Wire Wire Line
	5151 3501 5150 3850
Text Label 5150 3850 3    59   ~ 0
GND
Wire Wire Line
	5900 2550 5900 2625
Text Label 5900 2625 3    59   ~ 0
GND
Wire Wire Line
	4675 2550 4675 2625
Text Label 4675 2625 3    59   ~ 0
GND
Wire Wire Line
	5700 5550 5700 5950
Text Label 5700 5950 3    59   ~ 0
GND
Wire Wire Line
	4800 4875 4800 4825
Text Label 4800 4875 3    59   ~ 0
GND
Wire Wire Line
	6550 3325 6550 3850
Text Label 6550 3850 3    59   ~ 0
GND
Wire Wire Line
	4150 5900 4150 5950
Text Label 4150 5950 3    59   ~ 0
GND
Wire Wire Line
	4150 3300 4925 3300
Wire Wire Line
	4150 3300 4150 3375
Wire Wire Line
	4150 3025 4150 3300
Connection ~ 4150 3300
Wire Wire Line
	4675 2200 5150 2200
Wire Wire Line
	5150 2425 5150 2200
Wire Wire Line
	5900 2200 5150 2200
Wire Wire Line
	4675 2250 4675 2200
Wire Wire Line
	4675 2200 4150 2200
Wire Wire Line
	5900 2250 5900 2200
Wire Wire Line
	4150 2200 4150 2625
Wire Wire Line
	6550 2200 6675 2200
Wire Wire Line
	6550 2725 6550 2200
Wire Wire Line
	6550 2200 6550 2125
Connection ~ 5150 2200
Connection ~ 4675 2200
Connection ~ 5900 2200
Connection ~ 6550 2200
Text Label 6550 2125 1    59   ~ 0
+UB
Wire Wire Line
	5700 4475 5700 4950
Wire Wire Line
	4800 4475 5700 4475
Wire Wire Line
	4800 4475 4150 4475
Wire Wire Line
	4800 4525 4800 4475
Wire Wire Line
	4150 4475 4150 4599
Text Label 5700 4475 1    59   ~ 0
+UB
Connection ~ 4800 4475
Wire Wire Line
	6050 5150 7175 5150
Wire Wire Line
	6900 3025 7175 3025
Wire Wire Line
	5150 2925 5150 2825
Wire Wire Line
	5150 2925 6200 2925
Wire Wire Line
	5150 2925 5150 3100
Connection ~ 5150 2925
Wire Wire Line
	7025 2200 7175 2200
Wire Wire Line
	4377 4798 4525 4798
Wire Wire Line
	4525 5250 4675 5250
Wire Wire Line
	4151 5000 4150 5075
Wire Wire Line
	4150 5425 4150 5500
Wire Wire Line
	5075 5250 5350 5250
$Comp
L IR_Schreib_Lesekopf_TTL_Neu_V1-eagle-import:LOETPUNKT_1 X4
U 1 1 D6F99A86
P 7175 5925
F 0 "X4" H 7125 6025 50  0000 L BNN
F 1 "GND" H 7275 5900 50  0000 L BNN
F 2 "IR_Schreib_Lesekopf_TTL_Neu_V1:LOETPUNKT_1" H 7175 5925 50  0001 C CNN
F 3 "" H 7175 5925 50  0001 C CNN
	1    7175 5925
	1    0    0    -1  
$EndComp
$Comp
L IR_Schreib_Lesekopf_TTL_Neu_V1-eagle-import:LOETPUNKT_2 X3
U 1 1 2B12BB6C
P 7175 3025
F 0 "X3" H 7125 3125 50  0000 L BNN
F 1 "RXD" H 7275 3000 50  0000 L BNN
F 2 "IR_Schreib_Lesekopf_TTL_Neu_V1:LOETPUNKT_2" H 7175 3025 50  0001 C CNN
F 3 "" H 7175 3025 50  0001 C CNN
	1    7175 3025
	1    0    0    -1  
$EndComp
$Comp
L IR_Schreib_Lesekopf_TTL_Neu_V1-eagle-import:LOETPUNKT_3 X1
U 1 1 E702066D
P 7175 2200
F 0 "X1" H 7125 2300 50  0000 L BNN
F 1 "+Ub" H 7275 2175 50  0000 L BNN
F 2 "IR_Schreib_Lesekopf_TTL_Neu_V1:LOETPUNKT_3" H 7175 2200 50  0001 C CNN
F 3 "" H 7175 2200 50  0001 C CNN
	1    7175 2200
	1    0    0    -1  
$EndComp
$Comp
L IR_Schreib_Lesekopf_TTL_Neu_V1-eagle-import:SFH309-4_4 T1
U 1 1 43DE61C4
P 4050 2825
F 0 "T1" H 4015 2975 50  0000 L BNN
F 1 "SFH309FA-4" V 4295 2640 50  0000 L BNN
F 2 "IR_Schreib_Lesekopf_TTL_Neu_V1:FOTO_4MM_4" H 4050 2825 50  0001 C CNN
F 3 "" H 4050 2825 50  0001 C CNN
	1    4050 2825
	1    0    0    -1  
$EndComp
$Comp
L IR_Schreib_Lesekopf_TTL_Neu_V1-eagle-import:R-0805_5 R1
U 1 1 04647EBE
P 4150 3575
F 0 "R1" H 4035 3690 50  0000 L BNN
F 1 "13K/1%" V 4300 3475 50  0000 L BNN
F 2 "IR_Schreib_Lesekopf_TTL_Neu_V1:0805_5" H 4150 3575 50  0001 C CNN
F 3 "" H 4150 3575 50  0001 C CNN
	1    4150 3575
	1    0    0    -1  
$EndComp
$Comp
L IR_Schreib_Lesekopf_TTL_Neu_V1-eagle-import:R-0805_6 R4
U 1 1 EA9C1F2C
P 5150 2625
F 0 "R4" H 5060 2740 50  0000 L BNN
F 1 "13K/1%" V 5275 2575 50  0000 L BNN
F 2 "IR_Schreib_Lesekopf_TTL_Neu_V1:0805_6" H 5150 2625 50  0001 C CNN
F 3 "" H 5150 2625 50  0001 C CNN
	1    5150 2625
	1    0    0    -1  
$EndComp
$Comp
L IR_Schreib_Lesekopf_TTL_Neu_V1-eagle-import:C_KERAMIK_0,1µF_0805_10 C3
U 1 1 988EC371
P 5900 2400
F 0 "C3" H 5787 2469 50  0000 L BNN
F 1 "1µF/10V" V 6053 2335 50  0000 L BNN
F 2 "IR_Schreib_Lesekopf_TTL_Neu_V1:0805_10" H 5900 2400 50  0001 C CNN
F 3 "" H 5900 2400 50  0001 C CNN
	1    5900 2400
	1    0    0    -1  
$EndComp
$Comp
L IR_Schreib_Lesekopf_TTL_Neu_V1-eagle-import:C_KERAMIK_0,1µF_0805_11 C1
U 1 1 BCB0F8D9
P 4675 2400
F 0 "C1" H 4562 2469 50  0000 L BNN
F 1 "1µF/10V" V 4828 2335 50  0000 L BNN
F 2 "IR_Schreib_Lesekopf_TTL_Neu_V1:0805_11" H 4675 2400 50  0001 C CNN
F 3 "" H 4675 2400 50  0001 C CNN
	1    4675 2400
	1    0    0    -1  
$EndComp
$Comp
L IR_Schreib_Lesekopf_TTL_Neu_V1-eagle-import:CN304_13 D1
U 1 1 8EB84F51
P 4150 5225
F 0 "D1" H 4025 5321 50  0000 L BNN
F 1 "SFH487-2" V 4325 5047 50  0000 L BNN
F 2 "IR_Schreib_Lesekopf_TTL_Neu_V1:LED_3MM_13" H 4150 5225 50  0001 C CNN
F 3 "" H 4150 5225 50  0001 C CNN
	1    4150 5225
	1    0    0    -1  
$EndComp
$Comp
L IR_Schreib_Lesekopf_TTL_Neu_V1-eagle-import:R-0805_14 R3
U 1 1 F00894F0
P 4875 5250
F 0 "R3" H 4850 5325 50  0000 L BNN
F 1 "13K/1%" H 4832 5116 50  0000 L BNN
F 2 "IR_Schreib_Lesekopf_TTL_Neu_V1:0805_14" H 4875 5250 50  0001 C CNN
F 3 "" H 4875 5250 50  0001 C CNN
	1    4875 5250
	1    0    0    -1  
$EndComp
$Comp
L IR_Schreib_Lesekopf_TTL_Neu_V1-eagle-import:LOETPUNKT_19 X2
U 1 1 8C09EC51
P 7175 5150
F 0 "X2" H 7125 5250 50  0000 L BNN
F 1 "TXD" H 7275 5125 50  0000 L BNN
F 2 "IR_Schreib_Lesekopf_TTL_Neu_V1:LOETPUNKT_19" H 7175 5150 50  0001 C CNN
F 3 "" H 7175 5150 50  0001 C CNN
	1    7175 5150
	1    0    0    -1  
$EndComp
$Comp
L IR_Schreib_Lesekopf_TTL_Neu_V1-eagle-import:74LVC1G86DBVRG4_20 IC1
U 1 1 C45ADC5E
P 5450 5450
F 0 "IC1" H 5450 5875 50  0000 L BNN
F 1 "74LVC1G17DBVR" H 5775 5325 50  0000 L BNN
F 2 "IR_Schreib_Lesekopf_TTL_Neu_V1:SOT23_5_20" H 5450 5450 50  0001 C CNN
F 3 "" H 5450 5450 50  0001 C CNN
	1    5450 5450
	1    0    0    -1  
$EndComp
$Comp
L IR_Schreib_Lesekopf_TTL_Neu_V1-eagle-import:C_KERAMIK_0,1µF_0805_21 C2
U 1 1 D8344A69
P 4800 4675
F 0 "C2" H 4687 4744 50  0000 L BNN
F 1 "1µF/10V" V 4953 4610 50  0000 L BNN
F 2 "IR_Schreib_Lesekopf_TTL_Neu_V1:0805_21" H 4800 4675 50  0001 C CNN
F 3 "" H 4800 4675 50  0001 C CNN
	1    4800 4675
	1    0    0    -1  
$EndComp
$Comp
L IR_Schreib_Lesekopf_TTL_Neu_V1-eagle-import:74LVC1G86DBVRG4_23 IC2
U 1 1 5A9972E6
P 6800 3225
F 0 "IC2" H 6325 3650 50  0000 L BNN
F 1 "74LVC1G17DBVR" H 6575 3075 50  0000 L BNN
F 2 "IR_Schreib_Lesekopf_TTL_Neu_V1:SOT23_5_23" H 6800 3225 50  0001 C CNN
F 3 "" H 6800 3225 50  0001 C CNN
	1    6800 3225
	1    0    0    -1  
$EndComp
$Comp
L IR_Schreib_Lesekopf_TTL_Neu_V1-eagle-import:BAT46_DIN_25 D2
U 1 1 13221062
P 6875 2200
F 0 "D2" H 6821 2333 50  0000 L BNN
F 1 "BAT46W" H 6764 2022 50  0000 L BNN
F 2 "IR_Schreib_Lesekopf_TTL_Neu_V1:SOD123_25" H 6875 2200 50  0001 C CNN
F 3 "" H 6875 2200 50  0001 C CNN
	1    6875 2200
	1    0    0    -1  
$EndComp
$Comp
L IR_Schreib_Lesekopf_TTL_Neu_V1-eagle-import:BC817_26 T3
U 1 1 E7030FAE
P 4925 3300
F 0 "T3" H 4984 3448 50  0000 L BNN
F 1 "BC817-40" V 5296 3220 50  0000 L BNN
F 2 "IR_Schreib_Lesekopf_TTL_Neu_V1:SOT23_3_26" H 4925 3300 50  0001 C CNN
F 3 "" H 4925 3300 50  0001 C CNN
	1    4925 3300
	1    0    0    -1  
$EndComp
$Comp
L IR_Schreib_Lesekopf_TTL_Neu_V1-eagle-import:R-0805_27 R2
U 1 1 B5C204EF
P 4150 5700
F 0 "R2" H 4125 5840 50  0000 R BNN
F 1 "180R" V 4284 5657 50  0000 L BNN
F 2 "IR_Schreib_Lesekopf_TTL_Neu_V1:0805_27" H 4150 5700 50  0001 C CNN
F 3 "" H 4150 5700 50  0001 C CNN
	1    4150 5700
	1    0    0    -1  
$EndComp
$Comp
L IR_Schreib_Lesekopf_TTL_Neu_V1-eagle-import:BC807-40_28 T2
U 1 1 D8555BF1
P 4375 4800
F 0 "T2" H 4312 4922 50  0000 R BNN
F 1 "BC807-40" V 4108 4976 50  0000 R BNN
F 2 "IR_Schreib_Lesekopf_TTL_Neu_V1:SOT23_3_28" H 4375 4800 50  0001 C CNN
F 3 "" H 4375 4800 50  0001 C CNN
	1    4375 4800
	1    0    0    -1  
$EndComp
Text Notes 7300 2325 0    50   ~ 0
3,3V / 5V
Wire Notes Line
	5625 5225 5725 5225
Wire Notes Line
	5725 5225 5725 5275
Wire Notes Line
	5675 5225 5675 5275
Wire Notes Line
	6475 3000 6575 3000
Wire Notes Line
	6575 3000 6575 3050
Wire Notes Line
	6525 3000 6525 3050
Wire Wire Line
	5900 2200 6550 2200
Wire Wire Line
	4525 4798 4525 5250
Wire Notes Line
	5675 5275 5775 5275
Wire Notes Line
	6525 3050 6625 3050
$EndSCHEMATC
