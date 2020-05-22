onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -format Logic /cpu_test/cpu1/rst
add wave -noupdate -format Literal /cpu_test/cpu1/data
add wave -noupdate -format Literal /cpu_test/cpu1/alu_out
add wave -noupdate -format Literal /cpu_test/cpu1/accum
add wave -noupdate -format Literal /cpu_test/cpu1/pc_addr
add wave -noupdate -format Literal /cpu_test/cpu1/ir_addr
add wave -noupdate -format Literal /cpu_test/cpu1/addr
add wave -noupdate -format Literal -expand /cpu_test/cpu1/opcode
add wave -noupdate -format Logic /cpu_test/cpu1/rd
add wave -noupdate -format Logic /cpu_test/cpu1/wr
add wave -noupdate -format Logic /cpu_test/cpu1/ld_ir
add wave -noupdate -format Logic /cpu_test/cpu1/ld_acc
add wave -noupdate -format Logic /cpu_test/cpu1/ld_pc
add wave -noupdate -format Logic /cpu_test/cpu1/inc_pc
add wave -noupdate -format Logic /cpu_test/cpu1/halt
add wave -noupdate -format Logic /cpu_test/cpu1/data_e
add wave -noupdate -format Logic /cpu_test/cpu1/sel
add wave -noupdate -format Logic /cpu_test/cpu1/zero
add wave -noupdate -format Logic /cpu_test/cpu1/clock
add wave -noupdate -format Literal -radix hexadecimal /cpu_test/cpu1/ireg/r
add wave -noupdate -format Literal -radix hexadecimal /cpu_test/cpu1/ireg/data
add wave -noupdate -format Logic /cpu_test/cpu1/ireg/clk
add wave -noupdate -format Logic /cpu_test/cpu1/ireg/ena
add wave -noupdate -format Logic /cpu_test/cpu1/ireg/rst
add wave -noupdate -format Literal /cpu_test/cpu1/mem1/data
add wave -noupdate -format Literal /cpu_test/cpu1/mem1/addr
add wave -noupdate -format Logic /cpu_test/cpu1/mem1/read
add wave -noupdate -format Logic /cpu_test/cpu1/mem1/write
add wave -noupdate -format Literal -radix unsigned /cpu_test/cpu1/cntl/MealyState
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {340000 ps} 0}
configure wave -namecolwidth 150
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 0
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ps
update
WaveRestoreZoom {150600 ps} {413200 ps}
