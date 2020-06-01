quit -sim
vlib work
vmap work work
vlog adder_test.v
#vlog test_vector_gen.v
vlog adder4.v
vsim -novopt adder_tb
add wave sim:/adder_tb/adder4_1/*
run -all