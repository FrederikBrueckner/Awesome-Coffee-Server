EESchema Schematic File Version 2
LIBS:power
LIBS:device
LIBS:transistors
LIBS:conn
LIBS:linear
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:adc-dac
LIBS:memory
LIBS:xilinx
LIBS:microcontrollers
LIBS:dsp
LIBS:microchip
LIBS:analog_switches
LIBS:motorola
LIBS:texas
LIBS:intel
LIBS:audio
LIBS:interface
LIBS:digital-audio
LIBS:philips
LIBS:display
LIBS:cypress
LIBS:siliconi
LIBS:opto
LIBS:atmel
LIBS:contrib
LIBS:valves
LIBS:ESP8266
LIBS:ac-dc
LIBS:relays
LIBS:ftdi
LIBS:switches
LIBS:onsemi
LIBS:AwesomeCoffeeServer-cache
EELAYER 25 0
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
L MAX31855KASA U3
U 1 1 5980ADF3
P 7800 1600
F 0 "U3" H 7500 1950 50  0000 L CNN
F 1 "MAX31855KASA+" H 7550 1100 50  0000 L CNN
F 2 "Housings_SOIC:SOIC-8_3.9x4.9mm_Pitch1.27mm" H 7800 1600 50  0001 C CIN
F 3 "" H 7800 1600 50  0001 C CNN
	1    7800 1600
	-1   0    0    1   
$EndComp
$Comp
L D_Small D1
U 1 1 5980BD6E
P 3600 2000
F 0 "D1" V 3550 2080 50  0000 L CNN
F 1 "1N4148" H 3450 1920 50  0000 L CNN
F 2 "Diodes_SMD:D_SMA_Handsoldering" V 3600 2000 50  0001 C CNN
F 3 "" V 3600 2000 50  0001 C CNN
	1    3600 2000
	0    -1   -1   0   
$EndComp
$Comp
L Q_NPN_BCE Q1
U 1 1 5980E2FA
P 3300 1200
F 0 "Q1" H 3500 1250 50  0000 L CNN
F 1 "BC817-40" H 3000 1450 50  0000 L CNN
F 2 "TO_SOT_Packages_SMD:SOT-23_Handsoldering" H 3500 1300 50  0001 C CNN
F 3 "" H 3300 1200 50  0001 C CNN
	1    3300 1200
	-1   0    0    1   
$EndComp
$Comp
L NodeMCU1.0(ESP-12E) U2
U 1 1 5980F625
P 6200 3100
F 0 "U2" H 6200 3950 60  0000 C CNN
F 1 "NodeMCU1.0(ESP-12E)" H 6200 2250 60  0000 C CNN
F 2 "ESP8266:NodeMCU1.0(12-E)" H 6200 2100 60  0000 C CNN
F 3 "" H 5600 2250 60  0000 C CNN
	1    6200 3100
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR01
U 1 1 5980FA01
P 4800 4200
F 0 "#PWR01" H 4800 4050 50  0001 C CNN
F 1 "+5V" H 4800 4340 50  0000 C CNN
F 2 "" H 4800 4200 50  0001 C CNN
F 3 "" H 4800 4200 50  0001 C CNN
	1    4800 4200
	1    0    0    -1  
$EndComp
$Comp
L GNDREF #PWR02
U 1 1 5980FA27
P 4800 4300
F 0 "#PWR02" H 4800 4050 50  0001 C CNN
F 1 "GNDREF" H 4800 4150 50  0000 C CNN
F 2 "" H 4800 4300 50  0001 C CNN
F 3 "" H 4800 4300 50  0001 C CNN
	1    4800 4300
	1    0    0    -1  
$EndComp
$Comp
L Thermocouple TC1
U 1 1 5980FC20
P 10800 1600
F 0 "TC1" H 10680 1750 50  0000 C CNN
F 1 "Thermocouple K-Type" H 10450 1300 50  0000 L CNN
F 2 "" H 10225 1650 50  0001 C CNN
F 3 "" H 10225 1650 50  0001 C CNN
	1    10800 1600
	-1   0    0    1   
$EndComp
$Comp
L C C2
U 1 1 5980FDF3
P 7450 2300
F 0 "C2" H 7475 2400 50  0000 L CNN
F 1 "100nF" H 7475 2200 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 7488 2150 50  0001 C CNN
F 3 "" H 7450 2300 50  0001 C CNN
	1    7450 2300
	0    -1   -1   0   
$EndComp
$Comp
L C C3
U 1 1 5981009C
P 8600 1600
F 0 "C3" H 8625 1700 50  0000 L CNN
F 1 "10nF" H 8625 1500 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 8638 1450 50  0001 C CNN
F 3 "" H 8600 1600 50  0001 C CNN
	1    8600 1600
	1    0    0    -1  
$EndComp
$Comp
L D_TVS_x2_ACA D3
U 1 1 5981C113
P 9150 1600
F 0 "D3" H 9150 1775 50  0000 C CNN
F 1 "NUP2105L" H 9150 1700 50  0000 C CNN
F 2 "TO_SOT_Packages_SMD:SOT-23" H 9000 1600 50  0001 C CNN
F 3 "" H 9000 1600 50  0001 C CNN
	1    9150 1600
	0    1    1    0   
$EndComp
$Comp
L L_Core_Ferrite L2
U 1 1 5981C2EA
P 9550 1950
F 0 "L2" V 9500 1950 50  0000 C CNN
F 1 "470ohm Ferrite Bead" V 9660 1950 50  0000 C CNN
F 2 "Inductors_SMD:L_0805_HandSoldering" H 9550 1950 50  0001 C CNN
F 3 "" H 9550 1950 50  0001 C CNN
	1    9550 1950
	0    1    1    0   
$EndComp
$Comp
L L_Core_Ferrite L1
U 1 1 5981C355
P 9550 1250
F 0 "L1" V 9500 1250 50  0000 C CNN
F 1 "470ohm Ferrite Bead" V 9660 1250 50  0000 C CNN
F 2 "Inductors_SMD:L_0805_HandSoldering" H 9550 1250 50  0001 C CNN
F 3 "" H 9550 1250 50  0001 C CNN
	1    9550 1250
	0    -1   -1   0   
$EndComp
$Comp
L Screw_Terminal_1x02 J18
U 1 1 5980FD27
P 10300 1600
F 0 "J18" H 10300 1850 50  0000 C TNN
F 1 "Screw_Terminal_1x02" H 10300 1950 50  0000 C TNN
F 2 "Connectors:Barrier_Terminal_1x2_8.25_on-shore_ostyk42102030" H 10300 1375 50  0001 C CNN
F 3 "" H 10275 1600 50  0001 C CNN
	1    10300 1600
	-1   0    0    1   
$EndComp
$Comp
L R R5
U 1 1 5981CACB
P 5300 1950
F 0 "R5" V 5380 1950 50  0000 C CNN
F 1 "150" V 5300 1950 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 5230 1950 50  0001 C CNN
F 3 "" H 5300 1950 50  0001 C CNN
	1    5300 1950
	1    0    0    -1  
$EndComp
$Comp
L R R4
U 1 1 5981CB34
P 5200 2250
F 0 "R4" V 5280 2250 50  0000 C CNN
F 1 "150" V 5200 2250 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 5130 2250 50  0001 C CNN
F 3 "" H 5200 2250 50  0001 C CNN
	1    5200 2250
	1    0    0    -1  
$EndComp
$Comp
L R R3
U 1 1 5981CB8B
P 5100 2550
F 0 "R3" V 5180 2550 50  0000 C CNN
F 1 "150" V 5100 2550 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 5030 2550 50  0001 C CNN
F 3 "" H 5100 2550 50  0001 C CNN
	1    5100 2550
	1    0    0    -1  
$EndComp
$Comp
L SW_Push SW2
U 1 1 5981E108
P 8100 4300
F 0 "SW2" H 8150 4400 50  0000 L CNN
F 1 "Relais_SW" H 8100 4240 50  0000 C CNN
F 2 "Wire_Pads:SolderWirePad_2x_1mmDrill" H 8100 4500 50  0001 C CNN
F 3 "" H 8100 4500 50  0001 C CNN
	1    8100 4300
	0    1    1    0   
$EndComp
$Comp
L R R8
U 1 1 5981E15D
P 8200 3450
F 0 "R8" V 8280 3450 50  0000 C CNN
F 1 "10K" V 8200 3450 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 8130 3450 50  0001 C CNN
F 3 "" H 8200 3450 50  0001 C CNN
	1    8200 3450
	1    0    0    -1  
$EndComp
$Comp
L R R1
U 1 1 5982626F
P 3750 1200
F 0 "R1" V 3830 1200 50  0000 C CNN
F 1 "2k7" V 3750 1200 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 3680 1200 50  0001 C CNN
F 3 "" H 3750 1200 50  0001 C CNN
	1    3750 1200
	0    1    1    0   
$EndComp
$Comp
L LED D2
U 1 1 59826616
P 3950 1850
F 0 "D2" H 3950 1950 50  0000 C CNN
F 1 "LED" H 3950 1750 50  0000 C CNN
F 2 "LEDs:LED_0805" H 3950 1850 50  0001 C CNN
F 3 "" H 3950 1850 50  0001 C CNN
	1    3950 1850
	0    1    1    0   
$EndComp
$Comp
L FINDER-32.21-x000 K1
U 1 1 598278A2
P 3000 2000
F 0 "K1" H 3450 2150 50  0000 L CNN
F 1 "FINDER-36.11.005.4011" H 2850 1600 50  0000 L CNN
F 2 "Relays_THT:Relay_SPDT_Finder_36.11.xxx.4011" H 4270 1970 50  0001 C CNN
F 3 "" H 3000 2000 50  0001 C CNN
	1    3000 2000
	-1   0    0    1   
$EndComp
$Comp
L RAC02-05SC U1
U 1 1 59846B4E
P 3200 4300
F 0 "U1" H 3600 4550 50  0000 C CNN
F 1 "RAC02-05SC" H 3600 4150 50  0000 C CNN
F 2 "Converters_DCDC_ACDC:ACDC-Converter_Recom-RAC01_02-SC" H 3600 4050 50  0001 C CNN
F 3 "" H 3600 3950 50  0001 C CNN
	1    3200 4300
	1    0    0    -1  
$EndComp
$Comp
L AC_L #PWR03
U 1 1 59846D6D
P 1200 4100
F 0 "#PWR03" H 1200 4000 50  0001 C CNN
F 1 "AC_L" H 1200 4350 50  0000 C CNN
F 2 "" H 1200 4100 50  0001 C CNN
F 3 "" H 1200 4100 50  0001 C CNN
	1    1200 4100
	1    0    0    -1  
$EndComp
$Comp
L AC_N #PWR04
U 1 1 59846DC9
P 1200 4300
F 0 "#PWR04" H 1200 4200 50  0001 C CNN
F 1 "AC_N" H 1200 4550 50  0000 C CNN
F 2 "" H 1200 4300 50  0001 C CNN
F 3 "" H 1200 4300 50  0001 C CNN
	1    1200 4300
	-1   0    0    1   
$EndComp
$Comp
L C C1
U 1 1 598479B4
P 4150 4250
F 0 "C1" H 4175 4350 50  0000 L CNN
F 1 "330uF low ESR" H 4175 4150 50  0000 L CNN
F 2 "" H 4188 4100 50  0001 C CNN
F 3 "" H 4150 4250 50  0001 C CNN
	1    4150 4250
	1    0    0    -1  
$EndComp
$Comp
L Fuse F1
U 1 1 59847C26
P 2500 4100
F 0 "F1" V 2580 4100 50  0000 C CNN
F 1 "1A slow blow" V 2400 4150 50  0000 C CNN
F 2 "Fuse_Holders_and_Fuses:Fuse_TE5_Littlefuse-395Series" V 2430 4100 50  0001 C CNN
F 3 "" H 2500 4100 50  0001 C CNN
	1    2500 4100
	0    1    1    0   
$EndComp
$Comp
L Varistor RV1
U 1 1 59848564
P 2900 4250
F 0 "RV1" V 3025 4250 50  0000 C CNN
F 1 "MOV 250VAC" H 2900 4000 50  0000 C CNN
F 2 "Varistors:RV_Disc_D9_W4.2_P5" V 2830 4250 50  0001 C CNN
F 3 "" H 2900 4250 50  0001 C CNN
	1    2900 4250
	1    0    0    -1  
$EndComp
$Comp
L R R2
U 1 1 59849262
P 3950 2150
F 0 "R2" V 4030 2150 50  0000 C CNN
F 1 "2.5K" V 3950 2150 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 3880 2150 50  0001 C CNN
F 3 "" H 3950 2150 50  0001 C CNN
	1    3950 2150
	-1   0    0    1   
$EndComp
$Comp
L Screw_Terminal_1x02 J1
U 1 1 5984A4D6
P 1600 4200
F 0 "J1" H 1600 4450 50  0000 C TNN
F 1 "Screw_Terminal_1x02" V 1450 4200 50  0000 C TNN
F 2 "" H 1600 3975 50  0001 C CNN
F 3 "" H 1575 4200 50  0001 C CNN
	1    1600 4200
	1    0    0    -1  
$EndComp
$Comp
L R R7
U 1 1 5984B1BD
P 7900 3450
F 0 "R7" V 7980 3450 50  0000 C CNN
F 1 "10K" V 7900 3450 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 7830 3450 50  0001 C CNN
F 3 "" H 7900 3450 50  0001 C CNN
	1    7900 3450
	1    0    0    -1  
$EndComp
$Comp
L SW_Push SW3
U 1 1 5984B21F
P 8400 4300
F 0 "SW3" H 8450 4400 50  0000 L CNN
F 1 "AP_mode_SW" H 8400 4240 50  0000 C CNN
F 2 "Wire_Pads:SolderWirePad_2x_1mmDrill" H 8400 4500 50  0001 C CNN
F 3 "" H 8400 4500 50  0001 C CNN
	1    8400 4300
	0    1    1    0   
$EndComp
$Comp
L R R6
U 1 1 5984C300
P 7600 3450
F 0 "R6" V 7680 3450 50  0000 C CNN
F 1 "10K" V 7600 3450 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 7530 3450 50  0001 C CNN
F 3 "" H 7600 3450 50  0001 C CNN
	1    7600 3450
	1    0    0    -1  
$EndComp
$Comp
L SW_Push SW1
U 1 1 5984C9BD
P 7800 4300
F 0 "SW1" H 7850 4400 50  0000 L CNN
F 1 "Mode_SW" H 7800 4240 50  0000 C CNN
F 2 "Wire_Pads:SolderWirePad_2x_1mmDrill" H 7800 4500 50  0001 C CNN
F 3 "" H 7800 4500 50  0001 C CNN
	1    7800 4300
	0    1    1    0   
$EndComp
$Comp
L Screw_Terminal_1x03 J2
U 1 1 5984D7B8
P 2100 2700
F 0 "J2" H 2100 3050 50  0000 C TNN
F 1 "Screw_Terminal_1x03" V 1950 2700 50  0000 C TNN
F 2 "" H 2100 2375 50  0001 C CNN
F 3 "" H 2075 2800 50  0001 C CNN
	1    2100 2700
	1    0    0    -1  
$EndComp
NoConn ~ 5400 2500
NoConn ~ 5400 2600
$Comp
L TEST_1P J14
U 1 1 598772F8
P 7700 2500
F 0 "J14" V 7700 2750 50  0000 C CNN
F 1 "SCL" V 7700 2950 50  0000 C CNN
F 2 "Wire_Pads:SolderWirePad_single_1mmDrill" H 7900 2500 50  0001 C CNN
F 3 "" H 7900 2500 50  0001 C CNN
	1    7700 2500
	0    1    1    0   
$EndComp
$Comp
L TEST_1P J15
U 1 1 59877610
P 7700 2600
F 0 "J15" V 7700 2850 50  0000 C CNN
F 1 "SDA" V 7700 3050 50  0000 C CNN
F 2 "Wire_Pads:SolderWirePad_single_1mmDrill" H 7900 2600 50  0001 C CNN
F 3 "" H 7900 2600 50  0001 C CNN
	1    7700 2600
	0    1    1    0   
$EndComp
$Comp
L TEST_1P J16
U 1 1 5987796D
P 7700 2700
F 0 "J16" V 7700 2950 50  0000 C CNN
F 1 "FLASH" V 7700 3200 50  0000 C CNN
F 2 "Wire_Pads:SolderWirePad_single_1mmDrill" H 7900 2700 50  0001 C CNN
F 3 "" H 7900 2700 50  0001 C CNN
	1    7700 2700
	0    1    1    0   
$EndComp
$Comp
L TEST_1P J17
U 1 1 59877B00
P 7700 2800
F 0 "J17" V 7700 3050 50  0000 C CNN
F 1 "TX1 / LED" V 7700 3350 50  0000 C CNN
F 2 "Wire_Pads:SolderWirePad_single_1mmDrill" H 7900 2800 50  0001 C CNN
F 3 "" H 7900 2800 50  0001 C CNN
	1    7700 2800
	0    1    1    0   
$EndComp
$Comp
L TEST_1P J13
U 1 1 59877D32
P 7700 2400
F 0 "J13" V 7700 2650 50  0000 C CNN
F 1 "GPIO16 / WAKE" V 7700 3050 50  0000 C CNN
F 2 "Wire_Pads:SolderWirePad_single_1mmDrill" H 7900 2400 50  0001 C CNN
F 3 "" H 7900 2400 50  0001 C CNN
	1    7700 2400
	0    1    1    0   
$EndComp
$Comp
L TEST_1P J12
U 1 1 598780CB
P 7000 3600
F 0 "J12" V 7000 3850 50  0000 C CNN
F 1 "TXD0" V 7000 4050 50  0000 C CNN
F 2 "Wire_Pads:SolderWirePad_single_1mmDrill" H 7200 3600 50  0001 C CNN
F 3 "" H 7200 3600 50  0001 C CNN
	1    7000 3600
	0    1    1    0   
$EndComp
$Comp
L TEST_1P J11
U 1 1 59878244
P 7000 3500
F 0 "J11" V 7000 3750 50  0000 C CNN
F 1 "RXD0" V 7000 3950 50  0000 C CNN
F 2 "Wire_Pads:SolderWirePad_single_1mmDrill" H 7200 3500 50  0001 C CNN
F 3 "" H 7200 3500 50  0001 C CNN
	1    7000 3500
	0    1    1    0   
$EndComp
$Comp
L TEST_1P J10
U 1 1 598783D0
P 7000 3400
F 0 "J10" V 7000 3650 50  0000 C CNN
F 1 "MTD0" V 7000 3850 50  0000 C CNN
F 2 "Wire_Pads:SolderWirePad_single_1mmDrill" H 7200 3400 50  0001 C CNN
F 3 "" H 7200 3400 50  0001 C CNN
	1    7000 3400
	0    1    1    0   
$EndComp
$Comp
L TEST_1P J3
U 1 1 59878774
P 5050 2400
F 0 "J3" V 5050 2650 50  0000 C CNN
F 1 "ADC" V 5050 2800 50  0000 C CNN
F 2 "Wire_Pads:SolderWirePad_single_1mmDrill" H 5250 2400 50  0001 C CNN
F 3 "" H 5250 2400 50  0001 C CNN
	1    5050 2400
	0    -1   -1   0   
$EndComp
$Comp
L TEST_1P J4
U 1 1 59878C6C
P 5050 2700
F 0 "J4" V 5050 2950 50  0000 C CNN
F 1 "SD3" V 5050 3100 50  0000 C CNN
F 2 "Wire_Pads:SolderWirePad_single_1mmDrill" H 5250 2700 50  0001 C CNN
F 3 "" H 5250 2700 50  0001 C CNN
	1    5050 2700
	0    -1   -1   0   
$EndComp
$Comp
L TEST_1P J5
U 1 1 59878E17
P 5050 2900
F 0 "J5" V 5050 3150 50  0000 C CNN
F 1 "MOSI / SD1" V 5050 3450 50  0000 C CNN
F 2 "Wire_Pads:SolderWirePad_single_1mmDrill" H 5250 2900 50  0001 C CNN
F 3 "" H 5250 2900 50  0001 C CNN
	1    5050 2900
	0    -1   -1   0   
$EndComp
$Comp
L TEST_1P J6
U 1 1 598790A2
P 5400 3300
F 0 "J6" V 5400 3550 50  0000 C CNN
F 1 "GND" V 5400 3850 50  0000 C CNN
F 2 "Wire_Pads:SolderWirePad_single_1mmDrill" H 5600 3300 50  0001 C CNN
F 3 "" H 5600 3300 50  0001 C CNN
	1    5400 3300
	0    -1   -1   0   
$EndComp
$Comp
L TEST_1P J7
U 1 1 59879213
P 5400 3400
F 0 "J7" V 5400 3650 50  0000 C CNN
F 1 "3V3" V 5400 3950 50  0000 C CNN
F 2 "Wire_Pads:SolderWirePad_single_1mmDrill" H 5600 3400 50  0001 C CNN
F 3 "" H 5600 3400 50  0001 C CNN
	1    5400 3400
	0    -1   -1   0   
$EndComp
$Comp
L TEST_1P J8
U 1 1 598792A2
P 5400 3500
F 0 "J8" V 5400 3750 50  0000 C CNN
F 1 "EN" V 5400 4050 50  0000 C CNN
F 2 "Wire_Pads:SolderWirePad_single_1mmDrill" H 5600 3500 50  0001 C CNN
F 3 "" H 5600 3500 50  0001 C CNN
	1    5400 3500
	0    -1   -1   0   
$EndComp
$Comp
L TEST_1P J9
U 1 1 59879336
P 5400 3600
F 0 "J9" V 5400 3850 50  0000 C CNN
F 1 "Reset" V 5400 4150 50  0000 C CNN
F 2 "Wire_Pads:SolderWirePad_single_1mmDrill" H 5600 3600 50  0001 C CNN
F 3 "" H 5600 3600 50  0001 C CNN
	1    5400 3600
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5400 3700 5300 3700
Wire Wire Line
	5300 3700 5300 4300
Wire Wire Line
	5400 4200 5400 3800
Wire Wire Line
	9800 1700 10700 1700
Wire Wire Line
	5300 3200 5400 3200
Wire Wire Line
	5200 3100 5400 3100
Wire Wire Line
	5100 3000 5400 3000
Wire Wire Line
	8200 1500 8200 1450
Wire Wire Line
	8200 1450 8600 1450
Wire Wire Line
	8600 1450 8600 1250
Wire Wire Line
	9800 1250 9800 1500
Connection ~ 9150 1250
Wire Wire Line
	9800 1500 10700 1500
Connection ~ 10100 1500
Wire Wire Line
	9800 1950 9800 1700
Connection ~ 10100 1700
Wire Wire Line
	8600 1950 8600 1750
Connection ~ 9150 1950
Wire Wire Line
	8600 1750 8200 1750
Wire Wire Line
	8200 1750 8200 1700
Wire Wire Line
	5300 3200 5300 2100
Wire Wire Line
	5300 1800 7400 1800
Wire Wire Line
	7400 1700 5200 1700
Wire Wire Line
	5200 1700 5200 2100
Wire Wire Line
	5200 2400 5200 3100
Wire Wire Line
	5100 3000 5100 2700
Wire Wire Line
	7400 1500 5100 1500
Wire Wire Line
	5100 1500 5100 2400
Wire Wire Line
	9000 3000 9000 1600
Wire Wire Line
	7000 3000 9000 3000
Wire Wire Line
	7800 1200 7300 1200
Connection ~ 7300 3000
Wire Wire Line
	7300 1200 7300 3000
Connection ~ 7300 2300
Wire Wire Line
	7600 2900 7000 2900
Wire Wire Line
	7600 2000 7600 2900
Wire Wire Line
	7600 2000 7800 2000
Connection ~ 7600 2300
Wire Wire Line
	9800 1250 9700 1250
Wire Wire Line
	8600 1250 9400 1250
Wire Wire Line
	8600 1950 9400 1950
Wire Wire Line
	9700 1950 9800 1950
Wire Wire Line
	7000 3100 8400 3100
Wire Wire Line
	8200 3100 8200 3300
Wire Wire Line
	3200 1700 3950 1700
Wire Wire Line
	3200 2300 3950 2300
Wire Wire Line
	4500 2800 5400 2800
Wire Wire Line
	3600 2300 3600 2100
Wire Wire Line
	3600 1700 3600 1900
Connection ~ 3600 2300
Connection ~ 3600 1700
Wire Wire Line
	4000 4200 4000 4100
Wire Wire Line
	4000 4100 4600 4100
Wire Wire Line
	4600 3900 4600 4200
Wire Wire Line
	4600 4200 5400 4200
Connection ~ 4150 4100
Connection ~ 4800 4200
Wire Wire Line
	4000 4300 4000 4400
Wire Wire Line
	4000 4400 4600 4400
Wire Wire Line
	4600 4400 4600 4300
Wire Wire Line
	4600 4300 5300 4300
Connection ~ 4150 4400
Connection ~ 4800 4300
Connection ~ 5000 4300
Connection ~ 2900 4100
Wire Wire Line
	3200 1700 3200 1400
Wire Wire Line
	3200 1000 3200 800 
Wire Wire Line
	3200 800  5000 800 
Wire Wire Line
	5000 800  5000 4300
Wire Wire Line
	3500 1200 3600 1200
Wire Wire Line
	3900 1200 4500 1200
Wire Wire Line
	3200 3900 4600 3900
Connection ~ 4600 4100
Wire Wire Line
	3200 4400 3200 4300
Connection ~ 2900 4400
Wire Wire Line
	3200 3900 3200 2300
Wire Wire Line
	4500 1200 4500 2800
Connection ~ 1800 4100
Wire Wire Line
	2300 2900 2300 4400
Wire Wire Line
	2300 4400 3200 4400
Connection ~ 1800 4300
Wire Wire Line
	2800 1700 1800 1700
Wire Wire Line
	7000 3200 8100 3200
Wire Wire Line
	7900 3200 7900 3300
Wire Wire Line
	7000 3300 7800 3300
Wire Wire Line
	7000 3700 7200 3700
Wire Wire Line
	7200 3700 7200 4600
Wire Wire Line
	7200 4600 8400 4600
Wire Wire Line
	8400 4600 8400 4500
Wire Wire Line
	8100 4500 8100 4600
Connection ~ 8100 4600
Wire Wire Line
	7800 4500 7800 4600
Connection ~ 7800 4600
Wire Wire Line
	7600 3600 7600 3800
Wire Wire Line
	7000 3800 8200 3800
Wire Wire Line
	7900 3800 7900 3600
Connection ~ 7600 3800
Wire Wire Line
	8200 3800 8200 3600
Connection ~ 7900 3800
Wire Wire Line
	7800 3300 7800 4100
Connection ~ 7600 3300
Wire Wire Line
	8100 3200 8100 4100
Connection ~ 7900 3200
Wire Wire Line
	8400 3100 8400 4100
Connection ~ 8200 3100
Wire Wire Line
	2300 2700 2900 2700
Wire Wire Line
	2900 2700 2900 2300
Wire Wire Line
	2700 2300 2700 2500
Wire Wire Line
	2700 2500 2300 2500
Connection ~ 2300 4300
Wire Wire Line
	3200 4100 3200 4200
Wire Wire Line
	2650 4100 3200 4100
Wire Wire Line
	1800 1700 1800 4100
Wire Wire Line
	7000 2600 7700 2600
Wire Wire Line
	7000 2500 7700 2500
Wire Wire Line
	7700 2700 7000 2700
Wire Wire Line
	7700 2800 7000 2800
Wire Wire Line
	7700 2400 7000 2400
Wire Wire Line
	5050 2400 5400 2400
Wire Wire Line
	5050 2700 5400 2700
Wire Wire Line
	5400 2900 5050 2900
Wire Wire Line
	1200 4100 2350 4100
Wire Wire Line
	1200 4300 2300 4300
$EndSCHEMATC
