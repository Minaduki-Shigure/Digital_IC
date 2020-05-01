
quit -sim
vlib work
vmap work work
vlog counter_tb.v
vlog counter.v
vlog clock.v
vsim  -novopt counter_tb
add wave -r sim:/counter_tb/cnt1/*
run -all