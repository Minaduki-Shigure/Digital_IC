quit -sim
vlib work
vmap work work
vlog counter_test.v
vlog counter.v
vsim -novopt counter_tb
add wave sim:/counter_tb/counter_1/*
run -all