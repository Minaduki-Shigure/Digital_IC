
quit -sim
vlib work
vmap work work
vlog scale_test.v
vlog scale_mux.v

vsim  -novopt scale_test
add wave -r sim:/scale_test/m1/*
run -all