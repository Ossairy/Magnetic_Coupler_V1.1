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
L Connector:Conn_01x04_Female J7
U 1 1 6146BC9E
P 8550 3100
F 0 "J7" H 8578 3076 50  0000 L CNN
F 1 "desk_motor" H 8578 2985 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x04_P2.54mm_Vertical" H 8550 3100 50  0001 C CNN
F 3 "~" H 8550 3100 50  0001 C CNN
	1    8550 3100
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x05_Female J8
U 1 1 6146CC5A
P 8650 2550
F 0 "J8" H 8678 2576 50  0000 L CNN
F 1 "user_motor" H 8678 2485 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x05_P2.54mm_Vertical" H 8650 2550 50  0001 C CNN
F 3 "~" H 8650 2550 50  0001 C CNN
	1    8650 2550
	1    0    0    -1  
$EndComp
$Comp
L Connector:Screw_Terminal_01x02 J4
U 1 1 61472751
P 2950 7000
F 0 "J4" V 2914 6812 50  0000 R CNN
F 1 "vin" V 2823 6812 50  0000 R CNN
F 2 "TerminalBlock:TerminalBlock_Altech_AK300-2_P5.00mm" H 2950 7000 50  0001 C CNN
F 3 "~" H 2950 7000 50  0001 C CNN
	1    2950 7000
	0    1    1    0   
$EndComp
Wire Wire Line
	1750 6300 1750 6150
Wire Wire Line
	1750 6150 1850 6150
Wire Wire Line
	1850 6300 1850 6150
Connection ~ 1850 6150
Wire Wire Line
	1850 6150 1950 6150
Wire Wire Line
	1950 6300 1950 6150
Connection ~ 1950 6150
Wire Wire Line
	1950 6150 2050 6150
Wire Wire Line
	2050 6300 2050 6150
Connection ~ 2050 6150
Wire Wire Line
	2050 6150 2150 6150
Wire Wire Line
	2150 6300 2150 6150
Connection ~ 2150 6150
Wire Wire Line
	2150 6150 2350 6150
$Comp
L Connector:Conn_01x06_Male J5
U 1 1 6148CAC2
P 1850 7000
F 0 "J5" V 1912 7244 50  0000 L CNN
F 1 "vcc" V 2003 7244 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x06_P2.54mm_Vertical" H 1850 7000 50  0001 C CNN
F 3 "~" H 1850 7000 50  0001 C CNN
	1    1850 7000
	0    -1   -1   0   
$EndComp
$Comp
L Connector:Conn_01x06_Male J6
U 1 1 6148F7D3
P 1850 6500
F 0 "J6" V 1912 6744 50  0000 L CNN
F 1 "vcc" V 2003 6744 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x06_P2.54mm_Vertical" H 1850 6500 50  0001 C CNN
F 3 "~" H 1850 6500 50  0001 C CNN
	1    1850 6500
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1750 6150 1650 6150
Wire Wire Line
	1650 6150 1650 6300
Connection ~ 1750 6150
Wire Wire Line
	1650 6600 1650 6800
Wire Wire Line
	1750 6800 1750 6600
Connection ~ 1750 6600
Wire Wire Line
	1750 6600 1650 6600
Wire Wire Line
	1850 6800 1850 6600
Connection ~ 1850 6600
Wire Wire Line
	1850 6600 1750 6600
Wire Wire Line
	1950 6800 1950 6600
Connection ~ 1950 6600
Wire Wire Line
	1950 6600 1850 6600
Wire Wire Line
	2050 6800 2050 6600
Connection ~ 2050 6600
Wire Wire Line
	2050 6600 1950 6600
Wire Wire Line
	2150 6800 2150 6600
Connection ~ 2150 6600
Wire Wire Line
	2150 6600 2050 6600
$Comp
L Connector:Conn_01x06_Female J10
U 1 1 6147B24D
P 1850 5350
F 0 "J10" V 1788 4962 50  0000 R CNN
F 1 "GND" V 1697 4962 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x06_P2.54mm_Vertical" H 1850 5350 50  0001 C CNN
F 3 "~" H 1850 5350 50  0001 C CNN
	1    1850 5350
	0    -1   -1   0   
$EndComp
$Comp
L Connector:Conn_01x06_Female J11
U 1 1 6147B994
P 1850 5700
F 0 "J11" V 1788 5312 50  0000 R CNN
F 1 "GND" V 1697 5312 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x06_P2.54mm_Vertical" H 1850 5700 50  0001 C CNN
F 3 "~" H 1850 5700 50  0001 C CNN
	1    1850 5700
	0    -1   -1   0   
$EndComp
$Comp
L HX711:HX711 HX7111
U 1 1 6148B00E
P 8300 1350
F 0 "HX7111" H 8300 1350 50  0001 L BNN
F 1 "HX711" H 8300 1350 50  0001 L BNN
F 2 "hx711 _load_cell_amplifier:HX711" H 8300 1350 50  0001 L BNN
F 3 "" H 8300 1350 50  0001 L BNN
	1    8300 1350
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x08_Female J3
U 1 1 6146632A
P 8650 3800
F 0 "J3" H 8678 3776 50  0000 L CNN
F 1 "keypad" H 8678 3685 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x08_P2.54mm_Vertical" H 8650 3800 50  0001 C CNN
F 3 "~" H 8650 3800 50  0001 C CNN
	1    8650 3800
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x06_Female J12
U 1 1 614A24B3
P 10600 1200
F 0 "J12" H 10628 1176 50  0000 L CNN
F 1 "Conn_01x06_Female" H 10628 1085 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x06_P2.54mm_Vertical" H 10600 1200 50  0001 C CNN
F 3 "~" H 10600 1200 50  0001 C CNN
	1    10600 1200
	1    0    0    -1  
$EndComp
Wire Wire Line
	2050 5900 1950 5900
Connection ~ 1750 5900
Wire Wire Line
	1750 5900 1650 5900
Connection ~ 1850 5900
Wire Wire Line
	1850 5900 1750 5900
Connection ~ 1950 5900
Wire Wire Line
	1950 5900 1850 5900
Wire Wire Line
	2050 5900 2150 5900
Connection ~ 2050 5900
Wire Wire Line
	2150 5550 2050 5550
Connection ~ 1750 5550
Wire Wire Line
	1750 5550 1650 5550
Connection ~ 1850 5550
Wire Wire Line
	1850 5550 1750 5550
Connection ~ 1950 5550
Wire Wire Line
	1950 5550 1850 5550
Connection ~ 2050 5550
Wire Wire Line
	2050 5550 1950 5550
$Comp
L Connector:Conn_01x03_Female J9
U 1 1 614C5C8E
P 1500 4600
F 0 "J9" H 1392 4275 50  0000 C CNN
F 1 "current sensor 2" H 1392 4366 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x03_P2.54mm_Vertical" H 1500 4600 50  0001 C CNN
F 3 "~" H 1500 4600 50  0001 C CNN
	1    1500 4600
	-1   0    0    1   
$EndComp
$Comp
L Connector:Conn_01x03_Female J1
U 1 1 614C4366
P 1400 3700
F 0 "J1" H 1292 3375 50  0000 C CNN
F 1 "current sensor 1" H 1292 3466 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x03_P2.54mm_Vertical" H 1400 3700 50  0001 C CNN
F 3 "~" H 1400 3700 50  0001 C CNN
	1    1400 3700
	-1   0    0    1   
$EndComp
Wire Wire Line
	2150 6600 2350 6600
$Comp
L Connector:Conn_01x02_Female J14
U 1 1 61638B58
P 10500 4600
F 0 "J14" H 10528 4576 50  0000 L CNN
F 1 "buzzer" H 10528 4485 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x02_P2.54mm_Vertical" H 10500 4600 50  0001 C CNN
F 3 "~" H 10500 4600 50  0001 C CNN
	1    10500 4600
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x03_Female J15
U 1 1 614C5E38
P 9850 5200
F 0 "J15" H 9878 5226 50  0000 L CNN
F 1 "read_sensor1" H 9878 5135 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x03_P2.54mm_Vertical" H 9850 5200 50  0001 C CNN
F 3 "~" H 9850 5200 50  0001 C CNN
	1    9850 5200
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x04_Female J13
U 1 1 61603803
P 1450 3050
F 0 "J13" H 1478 3026 50  0000 L CNN
F 1 "LCD" H 1478 2935 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x04_P2.54mm_Vertical" H 1450 3050 50  0001 C CNN
F 3 "~" H 1450 3050 50  0001 C CNN
	1    1450 3050
	-1   0    0    1   
$EndComp
$Comp
L Connector:Conn_01x03_Female J16
U 1 1 615DE504
P 9850 6150
F 0 "J16" H 9878 6176 50  0000 L CNN
F 1 "reaf_sensor2" H 9878 6085 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x03_P2.54mm_Vertical" H 9850 6150 50  0001 C CNN
F 3 "~" H 9850 6150 50  0001 C CNN
	1    9850 6150
	1    0    0    -1  
$EndComp
Wire Wire Line
	2350 6150 2350 6600
Connection ~ 2350 6600
Connection ~ 2500 6600
Wire Wire Line
	2950 6700 2950 6800
Wire Wire Line
	2950 6700 2850 6700
Wire Wire Line
	2850 6700 2850 6800
Connection ~ 2950 6700
$Comp
L Device:R_US R1
U 1 1 616ADA44
P 10100 2350
F 0 "R1" H 10168 2396 50  0000 L CNN
F 1 "10k" H 10168 2305 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" V 10140 2340 50  0001 C CNN
F 3 "~" H 10100 2350 50  0001 C CNN
	1    10100 2350
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R2
U 1 1 616AE4D2
P 10100 3150
F 0 "R2" H 10168 3196 50  0000 L CNN
F 1 "10k" H 10168 3105 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" V 10140 3140 50  0001 C CNN
F 3 "~" H 10100 3150 50  0001 C CNN
	1    10100 3150
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R3
U 1 1 616AEFA5
P 10100 3900
F 0 "R3" H 10168 3946 50  0000 L CNN
F 1 "10k" H 10168 3855 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" V 10140 3890 50  0001 C CNN
F 3 "~" H 10100 3900 50  0001 C CNN
	1    10100 3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	10100 2500 10100 2750
Wire Wire Line
	10100 3300 10100 3450
Wire Wire Line
	10100 4050 10100 4150
$Comp
L power:GND #PWR010
U 1 1 61515B09
P 7600 1550
F 0 "#PWR010" H 7600 1300 50  0001 C CNN
F 1 "GND" H 7605 1377 50  0000 C CNN
F 2 "" H 7600 1550 50  0001 C CNN
F 3 "" H 7600 1550 50  0001 C CNN
	1    7600 1550
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR018
U 1 1 61516A89
P 10950 4650
F 0 "#PWR018" H 10950 4400 50  0001 C CNN
F 1 "GND" H 10955 4477 50  0000 C CNN
F 2 "" H 10950 4650 50  0001 C CNN
F 3 "" H 10950 4650 50  0001 C CNN
	1    10950 4650
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR015
U 1 1 61522D07
P 10100 2200
F 0 "#PWR015" H 10100 2050 50  0001 C CNN
F 1 "+5V" H 10115 2373 50  0000 C CNN
F 2 "" H 10100 2200 50  0001 C CNN
F 3 "" H 10100 2200 50  0001 C CNN
	1    10100 2200
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR016
U 1 1 6152E61D
P 10100 3000
F 0 "#PWR016" H 10100 2850 50  0001 C CNN
F 1 "+5V" H 10115 3173 50  0000 C CNN
F 2 "" H 10100 3000 50  0001 C CNN
F 3 "" H 10100 3000 50  0001 C CNN
	1    10100 3000
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR017
U 1 1 61539517
P 10100 3750
F 0 "#PWR017" H 10100 3600 50  0001 C CNN
F 1 "+5V" H 10115 3923 50  0000 C CNN
F 2 "" H 10100 3750 50  0001 C CNN
F 3 "" H 10100 3750 50  0001 C CNN
	1    10100 3750
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR09
U 1 1 6153A37A
P 7600 950
F 0 "#PWR09" H 7600 800 50  0001 C CNN
F 1 "+5V" H 7615 1123 50  0000 C CNN
F 2 "" H 7600 950 50  0001 C CNN
F 3 "" H 7600 950 50  0001 C CNN
	1    7600 950 
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR07
U 1 1 615788CF
P 2500 6600
F 0 "#PWR07" H 2500 6450 50  0001 C CNN
F 1 "+5V" H 2515 6773 50  0000 C CNN
F 2 "" H 2500 6600 50  0001 C CNN
F 3 "" H 2500 6600 50  0001 C CNN
	1    2500 6600
	1    0    0    -1  
$EndComp
Text GLabel 1600 3700 2    50   Input ~ 0
CUR1
Text GLabel 3450 4900 0    50   Input ~ 0
CUR1
$Comp
L power:GND #PWR08
U 1 1 615B50AA
P 3250 6200
F 0 "#PWR08" H 3250 5950 50  0001 C CNN
F 1 "GND" H 3255 6027 50  0000 C CNN
F 2 "" H 3250 6200 50  0001 C CNN
F 3 "" H 3250 6200 50  0001 C CNN
	1    3250 6200
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR02
U 1 1 615BEF11
P 1600 3800
F 0 "#PWR02" H 1600 3550 50  0001 C CNN
F 1 "GND" H 1605 3627 50  0000 C CNN
F 2 "" H 1600 3800 50  0001 C CNN
F 3 "" H 1600 3800 50  0001 C CNN
	1    1600 3800
	1    0    0    -1  
$EndComp
Text GLabel 7600 1350 0    50   Input ~ 0
DT
Text GLabel 8450 3500 0    50   Input ~ 0
key1
Text GLabel 8450 3600 0    50   Input ~ 0
key2
Text GLabel 8450 3700 0    50   Input ~ 0
key3
Text GLabel 8450 3800 0    50   Input ~ 0
key4
Text GLabel 8450 3900 0    50   Input ~ 0
key5
Text GLabel 8450 4000 0    50   Input ~ 0
key6
Text GLabel 8450 4100 0    50   Input ~ 0
key7
Text GLabel 8450 4200 0    50   Input ~ 0
key8
Wire Wire Line
	3450 6100 3450 6200
Connection ~ 3450 6100
Connection ~ 3450 6000
Wire Wire Line
	3450 6000 3450 6100
Wire Wire Line
	3450 5900 3450 6000
Connection ~ 3450 5900
Connection ~ 3450 6200
Connection ~ 3450 6500
Connection ~ 3450 6600
Wire Wire Line
	3450 6500 3450 6600
Wire Wire Line
	3450 6400 3450 6500
Wire Wire Line
	2950 6700 3450 6700
Wire Wire Line
	2500 6600 3450 6600
Wire Wire Line
	3250 6200 3450 6200
$Comp
L arduino:Arduino_Mega2560_Shield XA1
U 1 1 6147C475
P 4750 4550
F 0 "XA1" H 4750 2169 60  0000 C CNN
F 1 "Arduino_Mega2560_Shield" H 4750 2063 60  0000 C CNN
F 2 "Arduino:Arduino_Mega2560_Shield" H 5450 7300 60  0001 C CNN
F 3 "https://store.arduino.cc/arduino-mega-2560-rev3" H 5450 7300 60  0001 C CNN
	1    4750 4550
	1    0    0    -1  
$EndComp
Wire Wire Line
	3450 5900 3450 5800
Wire Wire Line
	2350 6600 2500 6600
Text GLabel 1650 3050 2    50   Input ~ 0
SDA
Text GLabel 3450 3200 0    50   Input ~ 0
SDA
Text GLabel 1650 3150 2    50   Input ~ 0
SCL
Text GLabel 3450 3300 0    50   Input ~ 0
SCL
Text GLabel 8450 2350 0    50   Input ~ 0
pwm
Text GLabel 8450 2450 0    50   Input ~ 0
in1
Text GLabel 8450 2550 0    50   Input ~ 0
in2
Text GLabel 8450 2650 0    50   Input ~ 0
in3
Text GLabel 8450 2750 0    50   Input ~ 0
in4
Text GLabel 8350 3000 0    50   Input ~ 0
IN1
Text GLabel 8350 3100 0    50   Input ~ 0
IN2
Text GLabel 8350 3200 0    50   Input ~ 0
IN3
Text GLabel 8350 3300 0    50   Input ~ 0
IN4
Text GLabel 10300 4700 0    50   Input ~ 0
BUZZER
$Comp
L power:GND #PWR06
U 1 1 615CE39F
P 1700 4700
F 0 "#PWR06" H 1700 4450 50  0001 C CNN
F 1 "GND" H 1705 4527 50  0000 C CNN
F 2 "" H 1700 4700 50  0001 C CNN
F 3 "" H 1700 4700 50  0001 C CNN
	1    1700 4700
	1    0    0    -1  
$EndComp
Wire Wire Line
	10950 2750 10950 3450
Connection ~ 10950 3450
Wire Wire Line
	10950 3450 10950 4150
Connection ~ 10950 4150
Text GLabel 9950 2750 0    50   Input ~ 0
limitswitch1
Text GLabel 9950 3450 0    50   Input ~ 0
limitswitch2
Text GLabel 9950 4150 0    50   Input ~ 0
powerswitch
Wire Wire Line
	9950 2750 10100 2750
Connection ~ 10100 2750
Wire Wire Line
	10100 3450 9950 3450
Connection ~ 10100 3450
Wire Wire Line
	9950 4150 10100 4150
Connection ~ 10100 4150
Text GLabel 1700 4600 2    50   Input ~ 0
CUR2
Text GLabel 3450 5100 0    50   Input ~ 0
CUR2
Wire Wire Line
	2150 5550 2450 5550
Wire Wire Line
	2450 5550 2450 5900
Wire Wire Line
	2450 5900 2150 5900
Connection ~ 2150 5550
Connection ~ 2150 5900
Wire Wire Line
	2450 5900 3450 5900
Connection ~ 2450 5900
$Comp
L power:GND #PWR03
U 1 1 61516EE0
P 1650 2850
F 0 "#PWR03" H 1650 2600 50  0001 C CNN
F 1 "GND" H 1655 2677 50  0000 C CNN
F 2 "" H 1650 2850 50  0001 C CNN
F 3 "" H 1650 2850 50  0001 C CNN
	1    1650 2850
	-1   0    0    1   
$EndComp
Text GLabel 9650 5100 1    50   Input ~ 0
readsensor1
Text GLabel 9650 6050 1    50   Input ~ 0
readsensor2
$Comp
L Connector:Conn_01x06_Female J2
U 1 1 6152665C
P 2000 1400
F 0 "J2" H 1892 875 50  0000 C CNN
F 1 "SD_card" H 1892 966 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x06_P2.54mm_Vertical" H 2000 1400 50  0001 C CNN
F 3 "~" H 2000 1400 50  0001 C CNN
	1    2000 1400
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR0101
U 1 1 6154A447
P 2200 1600
F 0 "#PWR0101" H 2200 1350 50  0001 C CNN
F 1 "GND" H 2205 1427 50  0000 C CNN
F 2 "" H 2200 1600 50  0001 C CNN
F 3 "" H 2200 1600 50  0001 C CNN
	1    2200 1600
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0102
U 1 1 6154AB14
P 2200 1500
F 0 "#PWR0102" H 2200 1350 50  0001 C CNN
F 1 "+5V" H 2215 1673 50  0000 C CNN
F 2 "" H 2200 1500 50  0001 C CNN
F 3 "" H 2200 1500 50  0001 C CNN
	1    2200 1500
	0    1    1    0   
$EndComp
Text GLabel 2200 1400 2    50   Input ~ 0
MISO
Text GLabel 2200 1300 2    50   Input ~ 0
MOSI
Text GLabel 2200 1200 2    50   Input ~ 0
SCK
Text GLabel 2200 1100 2    50   Input ~ 0
CS
Text GLabel 4500 1950 1    50   Input ~ 0
MISO
Text GLabel 4600 1950 1    50   Input ~ 0
MOSI
Text GLabel 4700 1950 1    50   Input ~ 0
SCK
Text GLabel 5000 1950 1    50   Input ~ 0
CS
Text GLabel 6050 6700 2    50   Input ~ 0
IN1
Text GLabel 6050 6500 2    50   Input ~ 0
IN2
Text GLabel 6050 6300 2    50   Input ~ 0
IN3
Text GLabel 6050 6100 2    50   Input ~ 0
IN4
Text GLabel 6050 5900 2    50   Input ~ 0
pwm
Text GLabel 6050 5700 2    50   Input ~ 0
in1
Text GLabel 6050 5500 2    50   Input ~ 0
in2
Text GLabel 6050 5300 2    50   Input ~ 0
in3
Text GLabel 6050 5100 2    50   Input ~ 0
in4
$Comp
L Connector:Screw_Terminal_01x02 J17
U 1 1 6156C9D1
P 10500 2550
F 0 "J17" V 10464 2362 50  0000 R CNN
F 1 "LIMITSWITCH1" V 10373 2362 50  0000 R CNN
F 2 "TerminalBlock:TerminalBlock_Altech_AK300-2_P5.00mm" H 10500 2550 50  0001 C CNN
F 3 "~" H 10500 2550 50  0001 C CNN
	1    10500 2550
	0    -1   -1   0   
$EndComp
$Comp
L Connector:Screw_Terminal_01x02 J18
U 1 1 6156E66F
P 10500 3250
F 0 "J18" V 10464 3062 50  0000 R CNN
F 1 "LIMITSWITCH2" V 10373 3062 50  0000 R CNN
F 2 "TerminalBlock:TerminalBlock_Altech_AK300-2_P5.00mm" H 10500 3250 50  0001 C CNN
F 3 "~" H 10500 3250 50  0001 C CNN
	1    10500 3250
	0    -1   -1   0   
$EndComp
$Comp
L Connector:Screw_Terminal_01x02 J19
U 1 1 6156EBB2
P 10500 3950
F 0 "J19" V 10464 3762 50  0000 R CNN
F 1 "POWERSWITCH" V 10373 3762 50  0000 R CNN
F 2 "TerminalBlock:TerminalBlock_Altech_AK300-2_P5.00mm" H 10500 3950 50  0001 C CNN
F 3 "~" H 10500 3950 50  0001 C CNN
	1    10500 3950
	0    -1   -1   0   
$EndComp
Wire Wire Line
	10100 2750 10500 2750
Wire Wire Line
	10600 2750 10950 2750
Wire Wire Line
	10100 3450 10500 3450
Wire Wire Line
	10600 3450 10950 3450
Wire Wire Line
	10100 4150 10500 4150
Wire Wire Line
	10600 4150 10950 4150
Text GLabel 6050 4900 2    50   Input ~ 0
readsensor1
Text GLabel 6050 4300 2    50   Input ~ 0
readsensor2
Text GLabel 3450 2400 0    50   Input ~ 0
key1
Text GLabel 3450 2500 0    50   Input ~ 0
key2
Text GLabel 6050 2400 2    50   Input ~ 0
key3
Text GLabel 6050 2500 2    50   Input ~ 0
key4
Text GLabel 6050 2600 2    50   Input ~ 0
key5
Text GLabel 6050 2700 2    50   Input ~ 0
key6
Text GLabel 6050 2800 2    50   Input ~ 0
key7
Text GLabel 6050 2900 2    50   Input ~ 0
key8
Text GLabel 6050 3700 2    50   Input ~ 0
BUZZER
Text GLabel 9650 6150 0    50   Input ~ 0
VCC2
Wire Wire Line
	10950 4150 10950 4450
Text GLabel 6050 4700 2    50   Input ~ 0
VCC1
Text GLabel 6050 4100 2    50   Input ~ 0
VCC2
Wire Wire Line
	10300 4600 10300 4450
Wire Wire Line
	10300 4450 10950 4450
Connection ~ 10950 4450
Wire Wire Line
	10950 4450 10950 4650
$Comp
L power:+5V #PWR04
U 1 1 6151DF2E
P 1650 2950
F 0 "#PWR04" H 1650 2800 50  0001 C CNN
F 1 "+5V" H 1665 3123 50  0000 C CNN
F 2 "" H 1650 2950 50  0001 C CNN
F 3 "" H 1650 2950 50  0001 C CNN
	1    1650 2950
	0    1    1    0   
$EndComp
Text GLabel 1600 3600 2    50   Input ~ 0
VCC3
Text GLabel 1700 4500 2    50   Input ~ 0
VCC4
Text GLabel 3450 5000 0    50   Input ~ 0
VCC3
Text GLabel 3450 5200 0    50   Input ~ 0
VCC4
$Comp
L Connector:Conn_01x06_Female J20
U 1 1 615368BC
P 7600 5050
F 0 "J20" H 7628 5026 50  0000 L CNN
F 1 "extra pins" H 7628 4935 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x06_P2.54mm_Vertical" H 7600 5050 50  0001 C CNN
F 3 "~" H 7600 5050 50  0001 C CNN
	1    7600 5050
	1    0    0    -1  
$EndComp
Text GLabel 7400 4850 0    50   Input ~ 0
e1
Text GLabel 7400 4950 0    50   Input ~ 0
e2
Text GLabel 7400 5050 0    50   Input ~ 0
e3
Text GLabel 7400 5150 0    50   Input ~ 0
e4
Text GLabel 7400 5250 0    50   Input ~ 0
e5
Text GLabel 7400 5350 0    50   Input ~ 0
e6
Text GLabel 6050 4600 2    50   Input ~ 0
e1
Text GLabel 6050 4400 2    50   Input ~ 0
e2
Text GLabel 6050 4200 2    50   Input ~ 0
e3
Text GLabel 6050 4000 2    50   Input ~ 0
e4
Text GLabel 6050 3800 2    50   Input ~ 0
e5
Text GLabel 6050 3600 2    50   Input ~ 0
e6
Text GLabel 9650 5200 0    50   Input ~ 0
VCC1
$Comp
L power:GND #PWR0103
U 1 1 61554513
P 9650 5300
F 0 "#PWR0103" H 9650 5050 50  0001 C CNN
F 1 "GND" H 9655 5127 50  0000 C CNN
F 2 "" H 9650 5300 50  0001 C CNN
F 3 "" H 9650 5300 50  0001 C CNN
	1    9650 5300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0104
U 1 1 61554BFD
P 9650 6250
F 0 "#PWR0104" H 9650 6000 50  0001 C CNN
F 1 "GND" H 9655 6077 50  0000 C CNN
F 2 "" H 9650 6250 50  0001 C CNN
F 3 "" H 9650 6250 50  0001 C CNN
	1    9650 6250
	1    0    0    -1  
$EndComp
Text GLabel 7600 1150 0    50   Input ~ 0
amplifersck
Text GLabel 6050 4800 2    50   Input ~ 0
amplifersck
Text GLabel 6050 5000 2    50   Input ~ 0
DT
Text GLabel 3450 3700 0    50   Input ~ 0
limitswitch1
Text GLabel 3450 3800 0    50   Input ~ 0
limitswitch2
Text GLabel 6050 5200 2    50   Input ~ 0
powerswitch
Text GLabel 9900 750  2    50   Input ~ 0
B+
Text GLabel 9900 950  2    50   Input ~ 0
B-
Text GLabel 9900 1150 2    50   Input ~ 0
A+
Text GLabel 9900 1350 2    50   Input ~ 0
A-
Text GLabel 9900 1550 2    50   Input ~ 0
E-
Text GLabel 9900 1750 2    50   Input ~ 0
E+
Text GLabel 10400 1000 0    50   Input ~ 0
B+
Text GLabel 10400 1100 0    50   Input ~ 0
B-
Text GLabel 10400 1200 0    50   Input ~ 0
A+
Text GLabel 10400 1300 0    50   Input ~ 0
A-
Text GLabel 10400 1400 0    50   Input ~ 0
E-
Text GLabel 10400 1500 0    50   Input ~ 0
E+
$EndSCHEMATC
