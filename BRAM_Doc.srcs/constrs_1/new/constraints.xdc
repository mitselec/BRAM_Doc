## This file is a general .xdc for the Basys3 rev B board
## To use it in a project:
## - uncomment the lines corresponding to used pins
## - rename the used ports (in each line, after get_ports) according to the top level signal names in the project

# Clock signal
set_property PACKAGE_PIN W5 [get_ports CLK]
set_property IOSTANDARD LVCMOS33 [get_ports CLK]
create_clock -period 10.000 -name sys_clk_pin -waveform {0.000 5.000} -add [get_ports CLK]

# Switches
set_property PACKAGE_PIN V17 [get_ports RST]
set_property IOSTANDARD LVCMOS33 [get_ports RST]
set_property PACKAGE_PIN V16 [get_ports EN]
set_property IOSTANDARD LVCMOS33 [get_ports EN]
set_property PACKAGE_PIN W16 [get_ports {WR_EN[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {WR_EN[0]}]
#set_property PACKAGE_PIN W17 [get_ports {sw[3]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {sw[3]}]
#set_property PACKAGE_PIN W15 [get_ports {sw[4]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {sw[4]}]
#set_property PACKAGE_PIN V15 [get_ports {sw[5]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {sw[5]}]
#set_property PACKAGE_PIN W14 [get_ports {sw[6]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {sw[6]}]
#set_property PACKAGE_PIN W13 [get_ports {sw[7]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {sw[7]}]
#set_property PACKAGE_PIN V2 [get_ports {sw[8]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {sw[8]}]
#set_property PACKAGE_PIN T3 [get_ports {sw[9]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {sw[9]}]
#set_property PACKAGE_PIN T2 [get_ports {sw[10]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {sw[10]}]
#set_property PACKAGE_PIN R3 [get_ports {sw[11]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {sw[11]}]
#set_property PACKAGE_PIN W2 [get_ports {sw[12]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {sw[12]}]
#set_property PACKAGE_PIN U1 [get_ports {sw[13]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {sw[13]}]
#set_property PACKAGE_PIN T1 [get_ports {sw[14]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {sw[14]}]
#set_property PACKAGE_PIN R2 [get_ports {sw[15]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {sw[15]}]



#7 Segment display
set_property PACKAGE_PIN W7 [get_ports {SSEG_CA[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {SSEG_CA[0]}]
set_property PACKAGE_PIN W6 [get_ports {SSEG_CA[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {SSEG_CA[1]}]
set_property PACKAGE_PIN U8 [get_ports {SSEG_CA[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {SSEG_CA[2]}]
set_property PACKAGE_PIN V8 [get_ports {SSEG_CA[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {SSEG_CA[3]}]
set_property PACKAGE_PIN U5 [get_ports {SSEG_CA[4]}]
set_property IOSTANDARD LVCMOS33 [get_ports {SSEG_CA[4]}]
set_property PACKAGE_PIN V5 [get_ports {SSEG_CA[5]}]
set_property IOSTANDARD LVCMOS33 [get_ports {SSEG_CA[5]}]
set_property PACKAGE_PIN U7 [get_ports {SSEG_CA[6]}]
set_property IOSTANDARD LVCMOS33 [get_ports {SSEG_CA[6]}]


set_property PACKAGE_PIN U2 [get_ports {SSEG_AN[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {SSEG_AN[0]}]
set_property PACKAGE_PIN U4 [get_ports {SSEG_AN[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {SSEG_AN[1]}]
set_property PACKAGE_PIN V4 [get_ports {SSEG_AN[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {SSEG_AN[2]}]
set_property PACKAGE_PIN W4 [get_ports {SSEG_AN[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {SSEG_AN[3]}]


##Buttons
#set_property PACKAGE_PIN U18 [get_ports btnC]
#set_property IOSTANDARD LVCMOS33 [get_ports btnC]
set_property PACKAGE_PIN T18 [get_ports BTN_UP]
set_property IOSTANDARD LVCMOS33 [get_ports BTN_UP]
#set_property PACKAGE_PIN W19 [get_ports btnL]
#set_property IOSTANDARD LVCMOS33 [get_ports btnL]
#set_property PACKAGE_PIN T17 [get_ports btnR]
#set_property IOSTANDARD LVCMOS33 [get_ports btnR]
set_property PACKAGE_PIN U17 [get_ports BTN_DN]
set_property IOSTANDARD LVCMOS33 [get_ports BTN_DN]



