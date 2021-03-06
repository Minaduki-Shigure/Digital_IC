###################################################################

# Created by write_script -format dctcl on Fri May 22 15:52:24 2020

###################################################################

# Set the current_design #
current_design MY_DESIGN

set_units -time ns -resistance kOhm -capacitance pF -voltage V -current uA
set_operating_conditions cb13fs120_tsmc_max -library cb13fs120_tsmc_max
remove_wire_load_model
set_local_link_library {sc_max.db}
set_register_merging [current_design] 17
set_driving_cell -lib_cell bufbd1 -library cb13fs120_tsmc_max [get_ports       \
{data1[4]}]
set_driving_cell -lib_cell bufbd1 -library cb13fs120_tsmc_max [get_ports       \
{data1[3]}]
set_driving_cell -lib_cell bufbd1 -library cb13fs120_tsmc_max [get_ports       \
{data1[2]}]
set_driving_cell -lib_cell bufbd1 -library cb13fs120_tsmc_max [get_ports       \
{data1[1]}]
set_driving_cell -lib_cell bufbd1 -library cb13fs120_tsmc_max [get_ports       \
{data1[0]}]
set_driving_cell -lib_cell bufbd1 -library cb13fs120_tsmc_max [get_ports       \
{data2[4]}]
set_driving_cell -lib_cell bufbd1 -library cb13fs120_tsmc_max [get_ports       \
{data2[3]}]
set_driving_cell -lib_cell bufbd1 -library cb13fs120_tsmc_max [get_ports       \
{data2[2]}]
set_driving_cell -lib_cell bufbd1 -library cb13fs120_tsmc_max [get_ports       \
{data2[1]}]
set_driving_cell -lib_cell bufbd1 -library cb13fs120_tsmc_max [get_ports       \
{data2[0]}]
set_driving_cell -lib_cell bufbd1 -library cb13fs120_tsmc_max [get_ports sel]
set_load -pin_load 0.025 [get_ports {Cout[4]}]
set_load -pin_load 0.025 [get_ports {Cout[3]}]
set_load -pin_load 0.025 [get_ports {Cout[2]}]
set_load -pin_load 0.025 [get_ports {Cout[1]}]
set_load -pin_load 0.025 [get_ports {Cout[0]}]
set_load -pin_load 0.0165 [get_ports {out1[4]}]
set_load -pin_load 0.0165 [get_ports {out1[3]}]
set_load -pin_load 0.0165 [get_ports {out1[2]}]
set_load -pin_load 0.0165 [get_ports {out1[1]}]
set_load -pin_load 0.0165 [get_ports {out1[0]}]
set_load -pin_load 0.0165 [get_ports {out2[4]}]
set_load -pin_load 0.0165 [get_ports {out2[3]}]
set_load -pin_load 0.0165 [get_ports {out2[2]}]
set_load -pin_load 0.0165 [get_ports {out2[1]}]
set_load -pin_load 0.0165 [get_ports {out2[0]}]
set_load -pin_load 0.0165 [get_ports {out3[4]}]
set_load -pin_load 0.0165 [get_ports {out3[3]}]
set_load -pin_load 0.0165 [get_ports {out3[2]}]
set_load -pin_load 0.0165 [get_ports {out3[1]}]
set_load -pin_load 0.0165 [get_ports {out3[0]}]
set_map_only [get_cells intadd_0/U4] 
set_map_only [get_cells intadd_2/U2] 
set_map_only [get_cells intadd_2/U3] 
set_map_only [get_cells intadd_0/U3] 
set_map_only [get_cells intadd_2/U4] 
set_map_only [get_cells intadd_1/U4] 
set_map_only [get_cells intadd_1/U3] 
set_map_only [get_cells intadd_0/U2] 
set_map_only [get_cells intadd_1/U2] 
set_register_merging [get_cells {R3_reg[1]}] 17
set_register_merging [get_cells {R3_reg[3]}] 17
set_register_merging [get_cells {R3_reg[2]}] 17
set_register_merging [get_cells {R3_reg[4]}] 17
set_register_merging [get_cells {R1_reg[0]}] 17
set_register_merging [get_cells {R1_reg[1]}] 17
set_register_merging [get_cells {R1_reg[2]}] 17
set_register_merging [get_cells {R1_reg[3]}] 17
set_register_merging [get_cells {R1_reg[4]}] 17
set_register_merging [get_cells {R2_reg[0]}] 17
set_register_merging [get_cells {R2_reg[1]}] 17
set_register_merging [get_cells {R2_reg[2]}] 17
set_register_merging [get_cells {R2_reg[3]}] 17
set_register_merging [get_cells {R2_reg[4]}] 17
set_register_merging [get_cells {R4_reg[0]}] 17
set_register_merging [get_cells {R4_reg[1]}] 17
set_register_merging [get_cells {R4_reg[2]}] 17
set_register_merging [get_cells {R4_reg[3]}] 17
set_register_merging [get_cells {R4_reg[4]}] 17
set_switching_activity -period 1 -toggle_rate 0.0333333 -static_probability    \
0.5 [get_ports {Cin1[4]}]
create_clock [get_ports clk]  -period 3  -waveform {0 1.5}
set_clock_latency -max 0.3  [get_clocks clk]
set_clock_latency -source -max 0.7  [get_clocks clk]
set_clock_uncertainty -setup 0.15  [get_clocks clk]
set_clock_transition -max -rise 0.12 [get_clocks clk]
set_clock_transition -max -fall 0.12 [get_clocks clk]
set_clock_transition -min -rise 0.12 [get_clocks clk]
set_clock_transition -min -fall 0.12 [get_clocks clk]
set_input_delay -clock clk  -max 0.45  [get_ports {data1[4]}]
set_input_delay -clock clk  -max 0.45  [get_ports {data1[3]}]
set_input_delay -clock clk  -max 0.45  [get_ports {data1[2]}]
set_input_delay -clock clk  -max 0.45  [get_ports {data1[1]}]
set_input_delay -clock clk  -max 0.45  [get_ports {data1[0]}]
set_input_delay -clock clk  -max 0.45  [get_ports {data2[4]}]
set_input_delay -clock clk  -max 0.45  [get_ports {data2[3]}]
set_input_delay -clock clk  -max 0.45  [get_ports {data2[2]}]
set_input_delay -clock clk  -max 0.45  [get_ports {data2[1]}]
set_input_delay -clock clk  -max 0.45  [get_ports {data2[0]}]
set_input_delay -clock clk  -max 0.4  [get_ports sel]
set_input_delay -clock clk  -max 0.2  [get_ports {Cin1[4]}]
set_input_delay -clock clk  -max 0.2  [get_ports {Cin1[3]}]
set_input_delay -clock clk  -max 0.2  [get_ports {Cin1[2]}]
set_input_delay -clock clk  -max 0.2  [get_ports {Cin1[1]}]
set_input_delay -clock clk  -max 0.2  [get_ports {Cin1[0]}]
set_input_delay -clock clk  -max 0.2  [get_ports {Cin2[4]}]
set_input_delay -clock clk  -max 0.2  [get_ports {Cin2[3]}]
set_input_delay -clock clk  -max 0.2  [get_ports {Cin2[2]}]
set_input_delay -clock clk  -max 0.2  [get_ports {Cin2[1]}]
set_input_delay -clock clk  -max 0.2  [get_ports {Cin2[0]}]
set_output_delay -clock clk  -max 0.5  [get_ports {out1[4]}]
set_output_delay -clock clk  -max 0.5  [get_ports {out1[3]}]
set_output_delay -clock clk  -max 0.5  [get_ports {out1[2]}]
set_output_delay -clock clk  -max 0.5  [get_ports {out1[1]}]
set_output_delay -clock clk  -max 0.5  [get_ports {out1[0]}]
set_output_delay -clock clk  -max 2.04  [get_ports {out2[4]}]
set_output_delay -clock clk  -max 2.04  [get_ports {out2[3]}]
set_output_delay -clock clk  -max 2.04  [get_ports {out2[2]}]
set_output_delay -clock clk  -max 2.04  [get_ports {out2[1]}]
set_output_delay -clock clk  -max 2.04  [get_ports {out2[0]}]
set_output_delay -clock clk  -max 0.4  [get_ports {out3[4]}]
set_output_delay -clock clk  -max 0.4  [get_ports {out3[3]}]
set_output_delay -clock clk  -max 0.4  [get_ports {out3[2]}]
set_output_delay -clock clk  -max 0.4  [get_ports {out3[1]}]
set_output_delay -clock clk  -max 0.4  [get_ports {out3[0]}]
set_output_delay -clock clk  -max 0.2  [get_ports {Cout[4]}]
set_output_delay -clock clk  -max 0.2  [get_ports {Cout[3]}]
set_output_delay -clock clk  -max 0.2  [get_ports {Cout[2]}]
set_output_delay -clock clk  -max 0.2  [get_ports {Cout[1]}]
set_output_delay -clock clk  -max 0.2  [get_ports {Cout[0]}]
set_input_transition -max 0.12  [get_ports {Cin1[4]}]
set_input_transition -min 0.12  [get_ports {Cin1[4]}]
set_input_transition -max 0.12  [get_ports {Cin1[3]}]
set_input_transition -min 0.12  [get_ports {Cin1[3]}]
set_input_transition -max 0.12  [get_ports {Cin1[2]}]
set_input_transition -min 0.12  [get_ports {Cin1[2]}]
set_input_transition -max 0.12  [get_ports {Cin1[1]}]
set_input_transition -min 0.12  [get_ports {Cin1[1]}]
set_input_transition -max 0.12  [get_ports {Cin1[0]}]
set_input_transition -min 0.12  [get_ports {Cin1[0]}]
set_input_transition -max 0.12  [get_ports {Cin2[4]}]
set_input_transition -min 0.12  [get_ports {Cin2[4]}]
set_input_transition -max 0.12  [get_ports {Cin2[3]}]
set_input_transition -min 0.12  [get_ports {Cin2[3]}]
set_input_transition -max 0.12  [get_ports {Cin2[2]}]
set_input_transition -min 0.12  [get_ports {Cin2[2]}]
set_input_transition -max 0.12  [get_ports {Cin2[1]}]
set_input_transition -min 0.12  [get_ports {Cin2[1]}]
set_input_transition -max 0.12  [get_ports {Cin2[0]}]
set_input_transition -min 0.12  [get_ports {Cin2[0]}]
