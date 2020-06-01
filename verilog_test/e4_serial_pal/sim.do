quit -sim
vlib work
vmap work work
vlog seri_pa_test.v
vlog serial_pal.v
vsim -novopt sp_test
add wave sim:/sp_test/sp1/*
run -all