
quit -sim
vlib work
vmap work work
vlog mem_tb.v
vlog mem.v

vsim  -novopt mem_tb
add wave -r sim:/mem_tb/mem1/*
run -all