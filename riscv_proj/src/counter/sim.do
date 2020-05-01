
quit -sim
vlib work
vmap work work
vlog counter_tb.v
vlog counter.v
vlog clock.v
vsim  -novopt test
add wave -r sim:/test/cnt1/*
run -all