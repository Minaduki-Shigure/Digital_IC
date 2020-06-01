quit -sim
vlib work
vmap work work
vlog coder83_test.v
vlog coder83.v
vsim -novopt coder_test
add wave sim:/coder_test/code1/*
run -all