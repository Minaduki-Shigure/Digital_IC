
quit -sim
vlib work
vmap work work

vlog cpu_test.v
vlog cpu.v
vlog clkgen.v

vlog ../register/register.v
vlog ../mux/scale_mux.v
vlog ../counter/counter.v
vlog ../alu/alu.v
vlog ../mem/mem.v
vlog ../control/control.v

vsim -novopt cpu_test
add wave -r sim:/cpu_test/cpu1/*
run -all
