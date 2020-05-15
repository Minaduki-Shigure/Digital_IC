
quit -sim
vlib work
vmap work work
vlog control_tb.v
vlog control.v
vlog clock.v
vsim  -novopt control_tb
add wave -r sim:/control_tb/control1/*
run -all