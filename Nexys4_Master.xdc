## Clock signal (100MHz)
set_property -dict { PACKAGE_PIN E3    IOSTANDARD LVCMOS33 } [get_ports { clk }];
create_clock -add -name sys_clk_pin -period 10.00 -waveform {0 5} [get_ports { clk }];

## Pmod Header JA 
## Your VHDL uses JA(3 downto 0) for Columns and JA(7 downto 4) for Rows
set_property -dict { PACKAGE_PIN B13   IOSTANDARD LVCMOS33 } [get_ports { JA[0] }]; 
set_property -dict { PACKAGE_PIN F14   IOSTANDARD LVCMOS33 } [get_ports { JA[1] }]; 
set_property -dict { PACKAGE_PIN D17   IOSTANDARD LVCMOS33 } [get_ports { JA[2] }]; 
set_property -dict { PACKAGE_PIN E17   IOSTANDARD LVCMOS33 } [get_ports { JA[3] }]; 
set_property -dict { PACKAGE_PIN G13   IOSTANDARD LVCMOS33 } [get_ports { JA[4] }]; 
set_property -dict { PACKAGE_PIN C17   IOSTANDARD LVCMOS33 } [get_ports { JA[5] }]; 
set_property -dict { PACKAGE_PIN D18   IOSTANDARD LVCMOS33 } [get_ports { JA[6] }]; 
set_property -dict { PACKAGE_PIN E18   IOSTANDARD LVCMOS33 } [get_ports { JA[7] }]; 

## 7 segment display (seg[0-6] corresponds to CA-CG)
set_property -dict { PACKAGE_PIN L3    IOSTANDARD LVCMOS33 } [get_ports { seg[0] }]; 
set_property -dict { PACKAGE_PIN N1    IOSTANDARD LVCMOS33 } [get_ports { seg[1] }]; 
set_property -dict { PACKAGE_PIN L5    IOSTANDARD LVCMOS33 } [get_ports { seg[2] }]; 
set_property -dict { PACKAGE_PIN L4    IOSTANDARD LVCMOS33 } [get_ports { seg[3] }]; 
set_property -dict { PACKAGE_PIN K3    IOSTANDARD LVCMOS33 } [get_ports { seg[4] }]; 
set_property -dict { PACKAGE_PIN M2    IOSTANDARD LVCMOS33 } [get_ports { seg[5] }]; 
set_property -dict { PACKAGE_PIN L6    IOSTANDARD LVCMOS33 } [get_ports { seg[6] }]; 

## Anodes (an[0-3])
set_property -dict { PACKAGE_PIN N6    IOSTANDARD LVCMOS33 } [get_ports { an[0] }]; 
set_property -dict { PACKAGE_PIN M6    IOSTANDARD LVCMOS33 } [get_ports { an[1] }]; 
set_property -dict { PACKAGE_PIN M3    IOSTANDARD LVCMOS33 } [get_ports { an[2] }]; 
set_property -dict { PACKAGE_PIN N5    IOSTANDARD LVCMOS33 } [get_ports { an[3] }];