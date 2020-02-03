EESchema Schematic File Version 5
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
Comment5 ""
Comment6 ""
Comment7 ""
Comment8 ""
Comment9 ""
$EndDescr
$Comp
L DMXShield4rele-rescue:Conn_01x08-Connector_Generic J1
U 1 1 5DB93F2A
P 1000 2550
F 0 "J1" H 918 1925 50  0000 C CNN
F 1 "DMXChannelSelect" H 918 2016 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x08_P2.54mm_Vertical" H 1000 2550 50  0001 C CNN
F 3 "~" H 1000 2550 50  0001 C CNN
	1    1000 2550
	-1   0    0    1   
$EndComp
$Comp
L DMXShield4rele-rescue:Conn_01x02-Connector_Generic J2
U 1 1 5DB9A863
P 5400 1500
F 0 "J2" H 5350 1700 50  0000 C CNN
F 1 "Power 30V" H 5400 1600 50  0000 C CNN
F 2 "Connector_Wire:SolderWirePad_1x02_P5.08mm_Drill1.5mm" H 5400 1500 50  0001 C CNN
F 3 "~" H 5400 1500 50  0001 C CNN
	1    5400 1500
	1    0    0    -1  
$EndComp
Wire Wire Line
	1750 2850 1200 2850
Wire Wire Line
	1750 2750 1200 2750
Wire Wire Line
	1750 2650 1200 2650
Wire Wire Line
	1750 2550 1200 2550
Wire Wire Line
	1750 2450 1200 2450
Wire Wire Line
	1200 2150 1450 2150
Wire Wire Line
	1200 2350 1350 2350
Wire Wire Line
	1300 2250 1200 2250
$Comp
L DMXShield4rele-rescue:Conn_01x03-Connector_Generic J4
U 1 1 5DBC171A
P 5700 2750
F 0 "J4" H 5780 2792 50  0000 L CNN
F 1 "DMX" H 5780 2701 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x03_P2.54mm_Vertical" H 5700 2750 50  0001 C CNN
F 3 "~" H 5700 2750 50  0001 C CNN
	1    5700 2750
	1    0    0    -1  
$EndComp
Wire Wire Line
	5300 2550 5300 2850
Wire Wire Line
	5300 2850 5500 2850
Wire Wire Line
	5400 3300 5400 2650
Wire Wire Line
	5400 2650 5500 2650
Wire Wire Line
	3950 2550 3800 2550
Wire Wire Line
	3800 2550 3800 2750
Wire Wire Line
	3800 2750 3950 2750
Wire Wire Line
	4350 2100 4350 2250
Wire Wire Line
	1550 3950 2050 3950
Wire Wire Line
	4350 3300 5400 3300
$Comp
L DMXShield4rele-rescue:SP3485CN-Interface_UART U1
U 1 1 5DBBA618
P 4350 2650
F 0 "U1" H 4350 3231 50  0000 C CNN
F 1 "SP3485CN" H 4350 3140 50  0000 C CNN
F 2 "Package_DIP:DIP-8_W7.62mm" H 5400 2300 50  0001 C CIN
F 3 "http://www.icbase.com/pdf/SPX/SPX00480106.pdf" H 4350 2650 50  0001 C CNN
	1    4350 2650
	1    0    0    -1  
$EndComp
NoConn ~ 1750 2150
Wire Wire Line
	1450 1600 2250 1600
Wire Wire Line
	2250 1600 2250 1850
Connection ~ 1450 2150
Wire Wire Line
	2050 3850 2050 3950
Connection ~ 2050 3950
Wire Wire Line
	2750 2250 2850 2250
Wire Wire Line
	1350 2350 1350 1550
Wire Wire Line
	1350 1550 2850 1550
Wire Wire Line
	2850 1550 2850 2250
Wire Wire Line
	1300 2250 1300 1500
Wire Wire Line
	2900 1500 2900 2150
Wire Wire Line
	3150 3150 2750 3150
Wire Wire Line
	3150 3050 2750 3050
Wire Wire Line
	3150 2950 2750 2950
Wire Wire Line
	3150 2850 2750 2850
Wire Wire Line
	3950 2450 3600 2450
Wire Wire Line
	3600 2450 3600 3450
Wire Wire Line
	3600 3450 2750 3450
Wire Wire Line
	3950 2850 3650 2850
Wire Wire Line
	3650 2850 3650 3350
Wire Wire Line
	3650 3350 2750 3350
Wire Wire Line
	3750 3950 3750 2100
Wire Wire Line
	3750 2100 4350 2100
Wire Wire Line
	4350 3050 4350 3300
Connection ~ 4350 3300
Wire Wire Line
	4350 3300 4350 4050
Wire Wire Line
	4750 2750 5500 2750
Wire Wire Line
	4750 2550 5300 2550
Wire Wire Line
	1450 4050 3050 4050
Wire Wire Line
	2050 3950 3000 3950
Wire Wire Line
	2750 3250 3800 3250
Wire Wire Line
	3800 3250 3800 2750
Connection ~ 3800 2750
$Comp
L Connector:Conn_01x06_Male J7
U 1 1 5DFB3ADF
P 3350 2950
F 0 "J7" H 3322 2832 50  0000 R CNN
F 1 "Motor1" H 3322 2923 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x06_P2.54mm_Vertical" H 3350 2950 50  0001 C CNN
F 3 "~" H 3350 2950 50  0001 C CNN
	1    3350 2950
	-1   0    0    1   
$EndComp
$Comp
L Connector:Conn_01x06_Male J6
U 1 1 5E065E8B
P 3350 2300
F 0 "J6" H 3322 2182 50  0000 R CNN
F 1 "Motor2" H 3322 2273 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x06_P2.54mm_Vertical" H 3350 2300 50  0001 C CNN
F 3 "~" H 3350 2300 50  0001 C CNN
	1    3350 2300
	-1   0    0    1   
$EndComp
Wire Wire Line
	3150 2750 3050 2750
Wire Wire Line
	3050 2750 3050 4050
Connection ~ 3050 4050
Wire Wire Line
	3050 4050 4350 4050
Wire Wire Line
	3150 2650 3000 2650
Wire Wire Line
	3000 2650 3000 3950
Connection ~ 3000 3950
Wire Wire Line
	3000 3950 3750 3950
Wire Wire Line
	2900 2150 2750 2150
Wire Wire Line
	3050 2750 3050 2100
Wire Wire Line
	3050 2100 3150 2100
Connection ~ 3050 2750
Wire Wire Line
	3000 2650 3000 2000
Wire Wire Line
	3000 2000 3150 2000
Wire Wire Line
	2750 2350 3100 2350
Wire Wire Line
	3100 2350 3100 2200
Wire Wire Line
	3100 2200 3150 2200
Connection ~ 3000 2650
Wire Wire Line
	2750 2750 2950 2750
Wire Wire Line
	2950 2750 2950 2500
Wire Wire Line
	2950 2500 3150 2500
Wire Wire Line
	2750 2650 2900 2650
Wire Wire Line
	2900 2650 2900 2400
Wire Wire Line
	2900 2400 3150 2400
Wire Wire Line
	2750 2550 2850 2550
Wire Wire Line
	2850 2550 2850 2300
Wire Wire Line
	2850 2300 3150 2300
$Comp
L Connector:Conn_01x03_Male J5
U 1 1 5DFEC7E2
P 1000 1800
F 0 "J5" H 1108 2081 50  0000 C CNN
F 1 "EndStop1" H 1108 1990 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 1000 1800 50  0001 C CNN
F 3 "~" H 1000 1800 50  0001 C CNN
	1    1000 1800
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x03_Male J3
U 1 1 5E065E8C
P 1000 1350
F 0 "J3" H 1108 1631 50  0000 C CNN
F 1 "EndStop2" H 1108 1540 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 1000 1350 50  0001 C CNN
F 3 "~" H 1000 1350 50  0001 C CNN
	1    1000 1350
	1    0    0    -1  
$EndComp
Wire Wire Line
	1450 1600 1450 1700
Wire Wire Line
	1200 1250 1450 1250
Wire Wire Line
	1450 1250 1450 1600
Connection ~ 1450 1600
Wire Wire Line
	1200 1700 1450 1700
Connection ~ 1450 1700
Wire Wire Line
	1450 1700 1450 2150
Wire Wire Line
	1550 1900 1200 1900
Wire Wire Line
	1200 1450 1550 1450
Wire Wire Line
	1550 1450 1550 1900
Connection ~ 1550 1900
Wire Wire Line
	1200 1800 1600 1800
Wire Wire Line
	1600 1800 1600 2350
Wire Wire Line
	1600 2350 1750 2350
Wire Wire Line
	1750 2250 1650 2250
Wire Wire Line
	1650 2250 1650 1350
Wire Wire Line
	1650 1350 1200 1350
Wire Wire Line
	1300 1500 2900 1500
$Comp
L Device:R R2
U 1 1 5DFF6B58
P 4100 1700
F 0 "R2" H 4170 1746 50  0000 L CNN
F 1 "0,33" H 4170 1655 50  0000 L CNN
F 2 "Resistor_THT:R_Bare_Metal_Element_L21.3mm_W4.8mm_P20.30mm" V 4030 1700 50  0001 C CNN
F 3 "~" H 4100 1700 50  0001 C CNN
	1    4100 1700
	1    0    0    -1  
$EndComp
$Comp
L Device:R R1
U 1 1 5E065E8D
P 3300 1300
F 0 "R1" H 3370 1346 50  0000 L CNN
F 1 "10K" H 3370 1255 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 3230 1300 50  0001 C CNN
F 3 "~" H 3300 1300 50  0001 C CNN
	1    3300 1300
	0    1    1    0   
$EndComp
$Comp
L Transistor_BJT:BC547 Q1
U 1 1 5E0062A4
P 3800 1500
F 0 "Q1" H 3991 1546 50  0000 L CNN
F 1 "BC547" H 3991 1455 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 4000 1425 50  0001 L CIN
F 3 "http://www.fairchildsemi.com/ds/BC/BC547.pdf" H 3800 1500 50  0001 L CNN
	1    3800 1500
	-1   0    0    -1  
$EndComp
Wire Wire Line
	3050 2100 3050 1850
Connection ~ 3050 2100
Wire Wire Line
	3450 1300 3700 1300
Wire Wire Line
	3050 1850 3700 1850
Wire Wire Line
	3700 1700 3700 1850
Connection ~ 3700 1850
Wire Wire Line
	3700 1850 4100 1850
Wire Wire Line
	4000 1500 4100 1500
Wire Wire Line
	4100 1500 4100 1550
$Comp
L Device:Q_NMOS_GDS Q2
U 1 1 5E053644
P 4500 1300
F 0 "Q2" H 4706 1346 50  0000 L CNN
F 1 "Q_NMOS_GDS" H 4706 1255 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-220-3_Vertical" H 4700 1400 50  0001 C CNN
F 3 "~" H 4500 1300 50  0001 C CNN
	1    4500 1300
	1    0    0    -1  
$EndComp
Wire Wire Line
	4300 1300 3700 1300
Connection ~ 3700 1300
Wire Wire Line
	4100 1500 4600 1500
Connection ~ 4100 1500
Wire Wire Line
	4600 1100 5200 1100
$Comp
L Connector_Generic:Conn_01x02 J8
U 1 1 5E05DE1F
P 5400 1200
F 0 "J8" H 5318 875 50  0000 C CNN
F 1 "LED" H 5318 966 50  0000 C CNN
F 2 "Connector_Wire:SolderWirePad_1x02_P5.08mm_Drill1.5mm" H 5400 1200 50  0001 C CNN
F 3 "~" H 5400 1200 50  0001 C CNN
	1    5400 1200
	1    0    0    1   
$EndComp
Wire Wire Line
	5200 1600 4950 1600
Wire Wire Line
	4950 1600 4950 1400
Wire Wire Line
	4950 1200 5200 1200
Wire Wire Line
	4100 1850 4800 1850
Wire Wire Line
	4800 1850 4800 1500
Wire Wire Line
	4800 1500 5200 1500
Connection ~ 4100 1850
Wire Wire Line
	1550 1900 1550 3950
Wire Wire Line
	1450 2150 1450 4050
$Comp
L Regulator_Linear:L7824 U2
U 1 1 5DFAFB13
P 6100 1400
F 0 "U2" H 6100 1642 50  0000 C CNN
F 1 "L7824" H 6100 1551 50  0000 C CNN
F 2 "Package_TO_SOT_THT:TO-220-3_Vertical" H 6125 1250 50  0001 L CIN
F 3 "http://www.st.com/content/ccc/resource/technical/document/datasheet/41/4f/b3/b0/12/d4/47/88/CD00000444.pdf/files/CD00000444.pdf/jcr:content/translations/en.CD00000444.pdf" H 6100 1350 50  0001 C CNN
	1    6100 1400
	1    0    0    -1  
$EndComp
$Comp
L Regulator_Linear:L7805 U4
U 1 1 5DFB7298
P 7900 1400
F 0 "U4" H 7900 1642 50  0000 C CNN
F 1 "L7805" H 7900 1551 50  0000 C CNN
F 2 "Package_TO_SOT_THT:TO-220-3_Vertical" H 7925 1250 50  0001 L CIN
F 3 "http://www.st.com/content/ccc/resource/technical/document/datasheet/41/4f/b3/b0/12/d4/47/88/CD00000444.pdf/files/CD00000444.pdf/jcr:content/translations/en.CD00000444.pdf" H 7900 1350 50  0001 C CNN
	1    7900 1400
	1    0    0    -1  
$EndComp
Wire Wire Line
	5800 1400 5700 1400
Connection ~ 4950 1400
Wire Wire Line
	4950 1400 4950 1200
Wire Wire Line
	4800 1850 5700 1850
Wire Wire Line
	6100 1850 6100 1700
Connection ~ 4800 1850
Wire Wire Line
	6100 1850 6450 1850
Connection ~ 6100 1850
Connection ~ 4350 2100
$Comp
L Device:C C1
U 1 1 5DFFC4E2
P 5700 1550
F 0 "C1" H 5815 1596 50  0000 L CNN
F 1 "C" H 5815 1505 50  0000 L CNN
F 2 "Capacitor_THT:C_Rect_L7.0mm_W2.0mm_P5.00mm" H 5738 1400 50  0001 C CNN
F 3 "~" H 5700 1550 50  0001 C CNN
	1    5700 1550
	1    0    0    -1  
$EndComp
Connection ~ 5700 1400
Wire Wire Line
	5700 1400 4950 1400
Wire Wire Line
	5700 1700 5700 1850
Connection ~ 5700 1850
Wire Wire Line
	5700 1850 6100 1850
$Comp
L Device:C C3
U 1 1 5DFFF527
P 6650 1550
F 0 "C3" H 6765 1596 50  0000 L CNN
F 1 "C" H 6765 1505 50  0000 L CNN
F 2 "Capacitor_THT:C_Rect_L7.0mm_W2.0mm_P5.00mm" H 6688 1400 50  0001 C CNN
F 3 "~" H 6650 1550 50  0001 C CNN
	1    6650 1550
	1    0    0    -1  
$EndComp
$Comp
L Device:C C5
U 1 1 5E004C17
P 7550 1550
F 0 "C5" H 7665 1596 50  0000 L CNN
F 1 "C" H 7665 1505 50  0000 L CNN
F 2 "Capacitor_THT:C_Rect_L7.0mm_W2.0mm_P5.00mm" H 7588 1400 50  0001 C CNN
F 3 "~" H 7550 1550 50  0001 C CNN
	1    7550 1550
	1    0    0    -1  
$EndComp
Wire Wire Line
	7150 1400 7250 1400
$Comp
L Regulator_Linear:L7812 U3
U 1 1 5DFB5944
P 7000 1400
F 0 "U3" H 7000 1642 50  0000 C CNN
F 1 "L7812" H 7000 1551 50  0000 C CNN
F 2 "Package_TO_SOT_THT:TO-220-3_Vertical" H 7025 1250 50  0001 L CIN
F 3 "http://www.st.com/content/ccc/resource/technical/document/datasheet/41/4f/b3/b0/12/d4/47/88/CD00000444.pdf/files/CD00000444.pdf/jcr:content/translations/en.CD00000444.pdf" H 7000 1350 50  0001 C CNN
	1    7000 1400
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C2
U 1 1 5E0293EB
P 6450 1550
F 0 "C2" H 6568 1596 50  0000 L CNN
F 1 "CP" H 6568 1505 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D4.0mm_P2.00mm" H 6488 1400 50  0001 C CNN
F 3 "~" H 6450 1550 50  0001 C CNN
	1    6450 1550
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C4
U 1 1 5E042291
P 7350 1550
F 0 "C4" H 7468 1596 50  0000 L CNN
F 1 "CP" H 7468 1505 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D4.0mm_P2.00mm" H 7388 1400 50  0001 C CNN
F 3 "~" H 7350 1550 50  0001 C CNN
	1    7350 1550
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C6
U 1 1 5E0314F1
P 8250 1550
F 0 "C6" H 8368 1596 50  0000 L CNN
F 1 "CP" H 8368 1505 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D4.0mm_P2.00mm" H 8288 1400 50  0001 C CNN
F 3 "~" H 8250 1550 50  0001 C CNN
	1    8250 1550
	1    0    0    -1  
$EndComp
Wire Wire Line
	6400 1400 6450 1400
Connection ~ 6450 1400
Wire Wire Line
	6450 1400 6650 1400
Connection ~ 6650 1400
Wire Wire Line
	6650 1400 6700 1400
Wire Wire Line
	6450 1700 6450 1850
Connection ~ 6450 1850
Wire Wire Line
	6450 1850 6650 1850
Wire Wire Line
	6650 1700 6650 1850
Connection ~ 6650 1850
Wire Wire Line
	7000 1850 7000 1700
Wire Wire Line
	6650 1850 7000 1850
Wire Wire Line
	7000 1850 7350 1850
Wire Wire Line
	7350 1850 7350 1700
Connection ~ 7000 1850
Wire Wire Line
	7350 1850 7550 1850
Wire Wire Line
	7550 1850 7550 1700
Connection ~ 7350 1850
Wire Wire Line
	7550 1850 7900 1850
Wire Wire Line
	7900 1850 7900 1700
Connection ~ 7550 1850
Wire Wire Line
	7900 1850 8250 1850
Wire Wire Line
	8250 1850 8250 1700
Connection ~ 7900 1850
Wire Wire Line
	8200 1400 8250 1400
Wire Wire Line
	8250 1400 8450 1400
Wire Wire Line
	8450 1400 8450 2100
Wire Wire Line
	4350 2100 8450 2100
Connection ~ 8250 1400
Wire Wire Line
	7300 1400 7350 1400
Connection ~ 7350 1400
Wire Wire Line
	7350 1400 7450 1400
Connection ~ 7550 1400
Wire Wire Line
	7550 1400 7600 1400
$Comp
L MCU_Module:Arduino_Nano_v3.x A1
U 1 1 5DDCFA6A
P 2250 2850
F 0 "A1" H 2250 1669 50  0000 C CNN
F 1 "Arduino_Nano_v3.x" H 2250 1760 50  0000 C CNN
F 2 "Module:Arduino_Nano" H 2400 1900 50  0001 L CNN
F 3 "http://www.mouser.com/pdfdocs/Gravitech_Arduino_Nano3_0.pdf" H 2250 1850 50  0001 C CNN
	1    2250 2850
	-1   0    0    1   
$EndComp
Wire Wire Line
	2750 2450 2800 2450
Wire Wire Line
	2800 2450 2800 1300
Wire Wire Line
	2800 1300 3150 1300
$Comp
L Connector_Generic:Conn_01x02 J9
U 1 1 5DFBCB64
P 7700 2350
F 0 "J9" H 7780 2342 50  0000 L CNN
F 1 "Fan" H 7780 2251 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 7700 2350 50  0001 C CNN
F 3 "~" H 7700 2350 50  0001 C CNN
	1    7700 2350
	1    0    0    -1  
$EndComp
Wire Wire Line
	7350 1850 7350 2350
Wire Wire Line
	7350 2350 7500 2350
Wire Wire Line
	7450 1400 7450 2450
Wire Wire Line
	7450 2450 7500 2450
Connection ~ 7450 1400
Wire Wire Line
	7450 1400 7550 1400
$EndSCHEMATC
