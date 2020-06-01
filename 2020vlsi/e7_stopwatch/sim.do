quit -sim
vlib work
vmap work work
vlog stopwatch_test.v
vlog stopwatch.v
vsim -novopt sw_test
add wave sim:/sw_test/sw1/*
run -all