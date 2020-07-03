## Generated SDC file "qsys_control.sdc"

## Copyright (C) 2016  Intel Corporation. All rights reserved.
## Your use of Intel Corporation's design tools, logic functions 
## and other software and tools, and its AMPP partner logic 
## functions, and any output files from any of the foregoing 
## (including device programming or simulation files), and any 
## associated documentation or information are expressly subject 
## to the terms and conditions of the Intel Program License 
## Subscription Agreement, the Intel Quartus Prime License Agreement,
## the Intel MegaCore Function License Agreement, or other 
## applicable license agreement, including, without limitation, 
## that your use is for the sole purpose of programming logic 
## devices manufactured by Intel and sold by Intel or its 
## authorized distributors.  Please refer to the applicable 
## agreement for further details.


## VENDOR  "Altera"
## PROGRAM "Quartus Prime"
## VERSION "Version 16.1.0 Build 196 10/24/2016 SJ Lite Edition"

## DATE    "Wed May 24 19:11:17 2017"

##
## DEVICE  "10M08DAF484C8GES"
##


#**************************************************************
# Time Information
#**************************************************************

set_time_format -unit ns -decimal_places 3



#**************************************************************
# Create Clock
#**************************************************************

create_clock -name {altera_reserved_tck} -period 100.000 -waveform { 0.000 50.000 } [get_ports {altera_reserved_tck}]
create_clock -name {SYS_CLK} -period 20.000 -waveform { 0.000 10.000 } [get_ports {SYS_CLK}]
create_clock -name {nios2_control:inst|altera_onchip_flash:onchip_flash_0|altera_onchip_flash_avmm_data_controller:avmm_data_controller|flash_se_neg_reg} -period 100.000 -waveform { 0.000 50.000 } [get_ports -nocase *]


#**************************************************************
# Create Generated Clock
#**************************************************************



#**************************************************************
# Set Clock Latency
#**************************************************************



#**************************************************************
# Set Clock Uncertainty
#**************************************************************



#**************************************************************
# Set Input Delay
#**************************************************************

set_input_delay -add_delay -max -clock [get_clocks {SYS_CLK}]  2.000 [get_ports {PB[1]}]
set_input_delay -add_delay -min -clock [get_clocks {SYS_CLK}]  1.000 [get_ports {PB[1]}]
set_input_delay -add_delay -max -clock [get_clocks {SYS_CLK}]  2.000 [get_ports {PB[2]}]
set_input_delay -add_delay -min -clock [get_clocks {SYS_CLK}]  1.000 [get_ports {PB[2]}]
set_input_delay -add_delay -max -clock [get_clocks {SYS_CLK}]  2.000 [get_ports {PB[3]}]
set_input_delay -add_delay -min -clock [get_clocks {SYS_CLK}]  1.000 [get_ports {PB[3]}]
set_input_delay -add_delay -max -clock [get_clocks {SYS_CLK}]  2.000 [get_ports {PB[4]}]
set_input_delay -add_delay -min -clock [get_clocks {SYS_CLK}]  1.000 [get_ports {PB[4]}]
set_input_delay -add_delay -max -clock [get_clocks {altera_reserved_tck}]  2.000 [get_ports {altera_reserved_tdi}]
set_input_delay -add_delay -min -clock [get_clocks {altera_reserved_tck}]  1.000 [get_ports {altera_reserved_tdi}]
set_input_delay -add_delay -max -clock [get_clocks {altera_reserved_tck}]  2.000 [get_ports {altera_reserved_tms}]
set_input_delay -add_delay -min -clock [get_clocks {altera_reserved_tck}]  1.000 [get_ports {altera_reserved_tms}]


#**************************************************************
# Set Output Delay
#**************************************************************

set_output_delay -add_delay  -clock [get_clocks {SYS_CLK}]  2.000 [get_ports {USER_LED[1]}]
set_output_delay -add_delay  -clock [get_clocks {SYS_CLK}]  2.000 [get_ports {USER_LED[2]}]
set_output_delay -add_delay  -clock [get_clocks {SYS_CLK}]  2.000 [get_ports {USER_LED[3]}]
set_output_delay -add_delay  -clock [get_clocks {SYS_CLK}]  2.000 [get_ports {USER_LED[4]}]
set_output_delay -add_delay  -clock [get_clocks {SYS_CLK}]  2.000 [get_ports {USER_LED[5]}]
set_output_delay -add_delay  -clock [get_clocks {SYS_CLK}]  2.000 [get_ports {USER_LED[6]}]
set_output_delay -add_delay  -clock [get_clocks {SYS_CLK}]  2.000 [get_ports {USER_LED[7]}]
set_output_delay -add_delay  -clock [get_clocks {SYS_CLK}]  2.000 [get_ports {USER_LED[8]}]
set_output_delay -add_delay -max -clock [get_clocks {altera_reserved_tck}]  2.000 [get_ports {altera_reserved_tdo}]
set_output_delay -add_delay -min -clock [get_clocks {altera_reserved_tck}]  1.000 [get_ports {altera_reserved_tdo}]


#**************************************************************
# Set Clock Groups
#**************************************************************

set_clock_groups -asynchronous -group [get_clocks {altera_reserved_tck}] 
set_clock_groups -asynchronous -group [get_clocks {altera_reserved_tck}] 
set_clock_groups -asynchronous -group [get_clocks {altera_reserved_tck}] 


#**************************************************************
# Set False Path
#**************************************************************

set_false_path -from [get_registers {*|alt_jtag_atlantic:*|jupdate}] -to [get_registers {*|alt_jtag_atlantic:*|jupdate1*}]
set_false_path -from [get_registers {*|alt_jtag_atlantic:*|rdata[*]}] -to [get_registers {*|alt_jtag_atlantic*|td_shift[*]}]
set_false_path -from [get_registers {*|alt_jtag_atlantic:*|read}] -to [get_registers {*|alt_jtag_atlantic:*|read1*}]
set_false_path -from [get_registers {*|alt_jtag_atlantic:*|read_req}] 
set_false_path -from [get_registers {*|alt_jtag_atlantic:*|rvalid}] -to [get_registers {*|alt_jtag_atlantic*|td_shift[*]}]
set_false_path -from [get_registers {*|t_dav}] -to [get_registers {*|alt_jtag_atlantic:*|tck_t_dav}]
set_false_path -from [get_registers {*|alt_jtag_atlantic:*|user_saw_rvalid}] -to [get_registers {*|alt_jtag_atlantic:*|rvalid0*}]
set_false_path -from [get_registers {*|alt_jtag_atlantic:*|wdata[*]}] -to [get_registers *]
set_false_path -from [get_registers {*|alt_jtag_atlantic:*|write}] -to [get_registers {*|alt_jtag_atlantic:*|write1*}]
set_false_path -from [get_registers {*|alt_jtag_atlantic:*|write_stalled}] -to [get_registers {*|alt_jtag_atlantic:*|t_ena*}]
set_false_path -from [get_registers {*|alt_jtag_atlantic:*|write_stalled}] -to [get_registers {*|alt_jtag_atlantic:*|t_pause*}]
set_false_path -from [get_registers {*|alt_jtag_atlantic:*|write_valid}] 
set_false_path -to [get_keepers {*altera_std_synchronizer:*|din_s1}]
set_false_path -from [get_keepers {altera_reserved_tdi}] -to [get_keepers {pzdyqx*}]
set_false_path -to [get_pins -nocase -compatibility_mode {*|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain*|clrn}]
set_false_path -to [get_registers {*|flash_busy_reg}]
set_false_path -to [get_registers {*|flash_busy_clear_reg}]
set_false_path -from [get_keepers {*nios2_control_nios2_cpu_cpu:*|nios2_control_nios2_cpu_cpu_nios2_oci:the_nios2_control_nios2_cpu_cpu_nios2_oci|nios2_control_nios2_cpu_cpu_nios2_oci_break:the_nios2_control_nios2_cpu_cpu_nios2_oci_break|break_readreg*}] -to [get_keepers {*nios2_control_nios2_cpu_cpu:*|nios2_control_nios2_cpu_cpu_nios2_oci:the_nios2_control_nios2_cpu_cpu_nios2_oci|nios2_control_nios2_cpu_cpu_debug_slave_wrapper:the_nios2_control_nios2_cpu_cpu_debug_slave_wrapper|nios2_control_nios2_cpu_cpu_debug_slave_tck:the_nios2_control_nios2_cpu_cpu_debug_slave_tck|*sr*}]
set_false_path -from [get_keepers {*nios2_control_nios2_cpu_cpu:*|nios2_control_nios2_cpu_cpu_nios2_oci:the_nios2_control_nios2_cpu_cpu_nios2_oci|nios2_control_nios2_cpu_cpu_nios2_oci_debug:the_nios2_control_nios2_cpu_cpu_nios2_oci_debug|*resetlatch}] -to [get_keepers {*nios2_control_nios2_cpu_cpu:*|nios2_control_nios2_cpu_cpu_nios2_oci:the_nios2_control_nios2_cpu_cpu_nios2_oci|nios2_control_nios2_cpu_cpu_debug_slave_wrapper:the_nios2_control_nios2_cpu_cpu_debug_slave_wrapper|nios2_control_nios2_cpu_cpu_debug_slave_tck:the_nios2_control_nios2_cpu_cpu_debug_slave_tck|*sr[33]}]
set_false_path -from [get_keepers {*nios2_control_nios2_cpu_cpu:*|nios2_control_nios2_cpu_cpu_nios2_oci:the_nios2_control_nios2_cpu_cpu_nios2_oci|nios2_control_nios2_cpu_cpu_nios2_oci_debug:the_nios2_control_nios2_cpu_cpu_nios2_oci_debug|monitor_ready}] -to [get_keepers {*nios2_control_nios2_cpu_cpu:*|nios2_control_nios2_cpu_cpu_nios2_oci:the_nios2_control_nios2_cpu_cpu_nios2_oci|nios2_control_nios2_cpu_cpu_debug_slave_wrapper:the_nios2_control_nios2_cpu_cpu_debug_slave_wrapper|nios2_control_nios2_cpu_cpu_debug_slave_tck:the_nios2_control_nios2_cpu_cpu_debug_slave_tck|*sr[0]}]
set_false_path -from [get_keepers {*nios2_control_nios2_cpu_cpu:*|nios2_control_nios2_cpu_cpu_nios2_oci:the_nios2_control_nios2_cpu_cpu_nios2_oci|nios2_control_nios2_cpu_cpu_nios2_oci_debug:the_nios2_control_nios2_cpu_cpu_nios2_oci_debug|monitor_error}] -to [get_keepers {*nios2_control_nios2_cpu_cpu:*|nios2_control_nios2_cpu_cpu_nios2_oci:the_nios2_control_nios2_cpu_cpu_nios2_oci|nios2_control_nios2_cpu_cpu_debug_slave_wrapper:the_nios2_control_nios2_cpu_cpu_debug_slave_wrapper|nios2_control_nios2_cpu_cpu_debug_slave_tck:the_nios2_control_nios2_cpu_cpu_debug_slave_tck|*sr[34]}]
set_false_path -from [get_keepers {*nios2_control_nios2_cpu_cpu:*|nios2_control_nios2_cpu_cpu_nios2_oci:the_nios2_control_nios2_cpu_cpu_nios2_oci|nios2_control_nios2_cpu_cpu_nios2_ocimem:the_nios2_control_nios2_cpu_cpu_nios2_ocimem|*MonDReg*}] -to [get_keepers {*nios2_control_nios2_cpu_cpu:*|nios2_control_nios2_cpu_cpu_nios2_oci:the_nios2_control_nios2_cpu_cpu_nios2_oci|nios2_control_nios2_cpu_cpu_debug_slave_wrapper:the_nios2_control_nios2_cpu_cpu_debug_slave_wrapper|nios2_control_nios2_cpu_cpu_debug_slave_tck:the_nios2_control_nios2_cpu_cpu_debug_slave_tck|*sr*}]
set_false_path -from [get_keepers {*nios2_control_nios2_cpu_cpu:*|nios2_control_nios2_cpu_cpu_nios2_oci:the_nios2_control_nios2_cpu_cpu_nios2_oci|nios2_control_nios2_cpu_cpu_debug_slave_wrapper:the_nios2_control_nios2_cpu_cpu_debug_slave_wrapper|nios2_control_nios2_cpu_cpu_debug_slave_tck:the_nios2_control_nios2_cpu_cpu_debug_slave_tck|*sr*}] -to [get_keepers {*nios2_control_nios2_cpu_cpu:*|nios2_control_nios2_cpu_cpu_nios2_oci:the_nios2_control_nios2_cpu_cpu_nios2_oci|nios2_control_nios2_cpu_cpu_debug_slave_wrapper:the_nios2_control_nios2_cpu_cpu_debug_slave_wrapper|nios2_control_nios2_cpu_cpu_debug_slave_sysclk:the_nios2_control_nios2_cpu_cpu_debug_slave_sysclk|*jdo*}]
set_false_path -from [get_keepers {sld_hub:*|irf_reg*}] -to [get_keepers {*nios2_control_nios2_cpu_cpu:*|nios2_control_nios2_cpu_cpu_nios2_oci:the_nios2_control_nios2_cpu_cpu_nios2_oci|nios2_control_nios2_cpu_cpu_debug_slave_wrapper:the_nios2_control_nios2_cpu_cpu_debug_slave_wrapper|nios2_control_nios2_cpu_cpu_debug_slave_sysclk:the_nios2_control_nios2_cpu_cpu_debug_slave_sysclk|ir*}]
set_false_path -from [get_keepers {sld_hub:*|sld_shadow_jsm:shadow_jsm|state[1]}] -to [get_keepers {*nios2_control_nios2_cpu_cpu:*|nios2_control_nios2_cpu_cpu_nios2_oci:the_nios2_control_nios2_cpu_cpu_nios2_oci|nios2_control_nios2_cpu_cpu_nios2_oci_debug:the_nios2_control_nios2_cpu_cpu_nios2_oci_debug|monitor_go}]


#**************************************************************
# Set Multicycle Path
#**************************************************************



#**************************************************************
# Set Maximum Delay
#**************************************************************

set_max_delay -from [get_registers {*altera_avalon_st_clock_crosser:*|in_data_buffer*}] -to [get_registers {*altera_avalon_st_clock_crosser:*|out_data_buffer*}] 100.000
set_max_delay -from [get_registers *] -to [get_registers {*altera_avalon_st_clock_crosser:*|altera_std_synchronizer_nocut:*|din_s1}] 100.000
set_max_delay -from [get_registers {*|in_wr_ptr_gray[*]}] -to [get_registers {*|altera_dcfifo_synchronizer_bundle:write_crosser|altera_std_synchronizer_nocut:sync[*].u|din_s1}] 100.000
set_max_delay -from [get_registers {*|out_rd_ptr_gray[*]}] -to [get_registers {*|altera_dcfifo_synchronizer_bundle:read_crosser|altera_std_synchronizer_nocut:sync[*].u|din_s1}] 100.000


#**************************************************************
# Set Minimum Delay
#**************************************************************

set_min_delay -from [get_registers {*altera_avalon_st_clock_crosser:*|in_data_buffer*}] -to [get_registers {*altera_avalon_st_clock_crosser:*|out_data_buffer*}] -100.000
set_min_delay -from [get_registers *] -to [get_registers {*altera_avalon_st_clock_crosser:*|altera_std_synchronizer_nocut:*|din_s1}] -100.000
set_min_delay -from [get_registers {*|in_wr_ptr_gray[*]}] -to [get_registers {*|altera_dcfifo_synchronizer_bundle:write_crosser|altera_std_synchronizer_nocut:sync[*].u|din_s1}] -100.000
set_min_delay -from [get_registers {*|out_rd_ptr_gray[*]}] -to [get_registers {*|altera_dcfifo_synchronizer_bundle:read_crosser|altera_std_synchronizer_nocut:sync[*].u|din_s1}] -100.000


#**************************************************************
# Set Input Transition
#**************************************************************



#**************************************************************
# Set Net Delay
#**************************************************************

set_net_delay -max 2.000 -from [get_registers {*altera_avalon_st_clock_crosser:*|in_data_buffer*}] -to [get_registers {*altera_avalon_st_clock_crosser:*|out_data_buffer*}]
set_net_delay -max 2.000 -from [get_registers *] -to [get_registers {*altera_avalon_st_clock_crosser:*|altera_std_synchronizer_nocut:*|din_s1}]
set_net_delay -max 2.000 -from [get_pins -compatibility_mode {*|in_wr_ptr_gray[*]*}] -to [get_registers {*|altera_dcfifo_synchronizer_bundle:write_crosser|altera_std_synchronizer_nocut:sync[*].u|din_s1}]
set_net_delay -max 2.000 -from [get_pins -compatibility_mode {*|out_rd_ptr_gray[*]*}] -to [get_registers {*|altera_dcfifo_synchronizer_bundle:read_crosser|altera_std_synchronizer_nocut:sync[*].u|din_s1}]


#**************************************************************
# Set Disable Timing
#**************************************************************

set_disable_timing -from * -to * [get_cells -hierarchical {QXXQ6833_0}]
set_disable_timing -from * -to * [get_cells -hierarchical {JEQQ5299_0}]
set_disable_timing -from * -to * [get_cells -hierarchical {JEQQ5299_1}]
set_disable_timing -from * -to * [get_cells -hierarchical {JEQQ5299_2}]
set_disable_timing -from * -to * [get_cells -hierarchical {JEQQ5299_3}]
set_disable_timing -from * -to * [get_cells -hierarchical {JEQQ5299_4}]
set_disable_timing -from * -to * [get_cells -hierarchical {JEQQ5299_5}]
set_disable_timing -from * -to * [get_cells -hierarchical {JEQQ5299_6}]
set_disable_timing -from * -to * [get_cells -hierarchical {JEQQ5299_7}]
set_disable_timing -from * -to * [get_cells -hierarchical {BITP7563_0}]
