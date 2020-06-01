quit -sim
vlib work
vmap work work
vlog dff_test.v
vlog dff.v
vsim -novopt dff_test
add wave sim:/dff_test/dff1/*
run 200