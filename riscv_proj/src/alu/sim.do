
quit -sim
vlib work
vmap work work
vlog alu_tb.v
vlog alu.v

vsim  -novopt alu_tb
add wave -r sim:/alu_tb/alu1/*
run -all