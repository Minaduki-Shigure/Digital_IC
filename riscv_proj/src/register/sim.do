
quit -sim
vlib work
vmap work work
vlog register_test.v
vlog register.v
vlog clock.v
vsim  -novopt test
add wave -r sim:/test/reg1/*
run -all