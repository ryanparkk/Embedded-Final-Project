## This file is a general .xdc for the ZYBO Rev B board
## To use it in a project:
## - uncomment the lines corresponding to used pins
## - rename the used signals according to the project


## Clock signal (125 MHz on Zybo)
set_property -dict { PACKAGE_PIN L16   IOSTANDARD LVCMOS33 } [get_ports { CLK }]; 
create_clock -add -name sys_clk_pin -period 8.00 -waveform {0 4} [get_ports { CLK }];

## Pmod Header JA - keypad


set_property -dict { PACKAGE_PIN N15   IOSTANDARD LVCMOS33 } [get_ports { JA[0] }]; # Pin 1
set_property -dict { PACKAGE_PIN L14   IOSTANDARD LVCMOS33 } [get_ports { JA[1] }]; # Pin 2
set_property -dict { PACKAGE_PIN K16   IOSTANDARD LVCMOS33 } [get_ports { JA[2] }]; # Pin 3
set_property -dict { PACKAGE_PIN K14   IOSTANDARD LVCMOS33 } [get_ports { JA[3] }]; # Pin 4
set_property -dict { PACKAGE_PIN N16   IOSTANDARD LVCMOS33 } [get_ports { JA[4] }]; # Pin 7
set_property -dict { PACKAGE_PIN L15   IOSTANDARD LVCMOS33 } [get_ports { JA[5] }]; # Pin 8
set_property -dict { PACKAGE_PIN J16   IOSTANDARD LVCMOS33 } [get_ports { JA[6] }]; # Pin 9
set_property -dict { PACKAGE_PIN J14   IOSTANDARD LVCMOS33 } [get_ports { JA[7] }]; # Pin 10

## Pmod Header JB & JC - 7 segment


set_property -dict { PACKAGE_PIN T20   IOSTANDARD LVCMOS33 } [get_ports { seg[0] }]; # JB1
set_property -dict { PACKAGE_PIN U20   IOSTANDARD LVCMOS33 } [get_ports { seg[1] }]; # JB2
set_property -dict { PACKAGE_PIN V20   IOSTANDARD LVCMOS33 } [get_ports { seg[2] }]; # JB3
set_property -dict { PACKAGE_PIN W20   IOSTANDARD LVCMOS33 } [get_ports { seg[3] }]; # JB4
set_property -dict { PACKAGE_PIN V15   IOSTANDARD LVCMOS33 } [get_ports { seg[4] }]; # JC1
set_property -dict { PACKAGE_PIN W15   IOSTANDARD LVCMOS33 } [get_ports { seg[5] }]; # JC2
set_property -dict { PACKAGE_PIN T11   IOSTANDARD LVCMOS33 } [get_ports { seg[6] }]; # JC3


set_property -dict { PACKAGE_PIN T10   IOSTANDARD LVCMOS33 } [get_ports { an[0] }]; # JC4
set_property -dict { PACKAGE_PIN W14   IOSTANDARD LVCMOS33 } [get_ports { an[1] }]; # JC7
set_property -dict { PACKAGE_PIN Y14   IOSTANDARD LVCMOS33 } [get_ports { an[2] }]; # JC8
set_property -dict { PACKAGE_PIN T12   IOSTANDARD LVCMOS33 } [get_ports { an[3] }]; # JC9

##Pmod Header JD



##Pmod Header JE
set_property -dict { PACKAGE_PIN K18 IOSTANDARD LVCMOS33 } [get_ports RST]

## Pmod Header JE (OLED Connections)

set_property -dict { PACKAGE_PIN V12 IOSTANDARD LVCMOS33 } [get_ports CS]
set_property -dict { PACKAGE_PIN W16 IOSTANDARD LVCMOS33 } [get_ports SDIN]
set_property -dict { PACKAGE_PIN J15 IOSTANDARD LVCMOS33 } [get_ports SCLK]
set_property -dict { PACKAGE_PIN H15 IOSTANDARD LVCMOS33 } [get_ports DC]
set_property -dict { PACKAGE_PIN V13 IOSTANDARD LVCMOS33 } [get_ports RES]
set_property -dict { PACKAGE_PIN U17 IOSTANDARD LVCMOS33 } [get_ports VBAT]
set_property -dict { PACKAGE_PIN T17 IOSTANDARD LVCMOS33 } [get_ports VDD]


##USB-OTG overcurrent detect pin
#set_property -dict { PACKAGE_PIN U13   IOSTANDARD LVCMOS33 } [get_ports otg_oc]; #IO_L3P_T0_DQS_PUDC_B_34 Sch=OTG_OC


##VGA Connector
#set_property -dict { PACKAGE_PIN M19   IOSTANDARD LVCMOS33 } [get_ports { r[0] }]; #IO_L7P_T1_AD2P_35 Sch=VGA_R1
#set_property -dict { PACKAGE_PIN L20   IOSTANDARD LVCMOS33 } [get_ports { r[1] }]; #IO_L9N_T1_DQS_AD3N_35 Sch=VGA_R2
#set_property -dict { PACKAGE_PIN J20   IOSTANDARD LVCMOS33 } [get_ports { r[2] }]; #IO_L17P_T2_AD5P_35 Sch=VGA_R3
#set_property -dict { PACKAGE_PIN G20   IOSTANDARD LVCMOS33 } [get_ports { r[3] }]; #IO_L18N_T2_AD13N_35 Sch=VGA_R4
#set_property -dict { PACKAGE_PIN F19   IOSTANDARD LVCMOS33 } [get_ports { r[4] }]; #IO_L15P_T2_DQS_AD12P_35 Sch=VGA_R5
#set_property -dict { PACKAGE_PIN H18   IOSTANDARD LVCMOS33 } [get_ports { g[0] }]; #IO_L14N_T2_AD4N_SRCC_35 Sch=VGA_G0
#set_property -dict { PACKAGE_PIN N20   IOSTANDARD LVCMOS33 } [get_ports { g[1] }]; #IO_L14P_T2_SRCC_34 Sch=VGA_G1
#set_property -dict { PACKAGE_PIN L19   IOSTANDARD LVCMOS33 } [get_ports { g[2] }]; #IO_L9P_T1_DQS_AD3P_35 Sch=VGA_G2
#set_property -dict { PACKAGE_PIN J19   IOSTANDARD LVCMOS33 } [get_ports { g[3] }]; #IO_L10N_T1_AD11N_35 Sch=VGA_G3
#set_property -dict { PACKAGE_PIN H20   IOSTANDARD LVCMOS33 } [get_ports { g[4] }]; #IO_L17N_T2_AD5N_35 Sch=VGA_G4
#set_property -dict { PACKAGE_PIN F20   IOSTANDARD LVCMOS33 } [get_ports { g[5] }]; #IO_L15N_T2_DQS_AD12N_35 Sch=VGA=G5
#set_property -dict { PACKAGE_PIN P20   IOSTANDARD LVCMOS33 } [get_ports { b[0] }]; #IO_L14N_T2_SRCC_34 Sch=VGA_B1
#set_property -dict { PACKAGE_PIN M20   IOSTANDARD LVCMOS33 } [get_ports { b[1] }]; #IO_L7N_T1_AD2N_35 Sch=VGA_B2
#set_property -dict { PACKAGE_PIN K19   IOSTANDARD LVCMOS33 } [get_ports { b[2] }]; #IO_L10P_T1_AD11P_35 Sch=VGA_B3
#set_property -dict { PACKAGE_PIN J18   IOSTANDARD LVCMOS33 } [get_ports { b[3] }]; #IO_L14P_T2_AD4P_SRCC_35 Sch=VGA_B4
#set_property -dict { PACKAGE_PIN G19   IOSTANDARD LVCMOS33 } [get_ports { b[4] }]; #IO_L18P_T2_AD13P_35 Sch=VGA_B5
#set_property -dict { PACKAGE_PIN P19   IOSTANDARD LVCMOS33 } [get_ports hs]; #IO_L13N_T2_MRCC_34 Sch=VGA_HS
#set_property -dict { PACKAGE_PIN R19   IOSTANDARD LVCMOS33 } [get_ports vs]; #IO_0_34 Sch=VGA_VS