onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /control_test/i1/rd
add wave -noupdate /control_test/i1/wr
add wave -noupdate /control_test/i1/ld_ir
add wave -noupdate /control_test/i1/ld_acc
add wave -noupdate /control_test/i1/ld_pc
add wave -noupdate /control_test/i1/inc_pc
add wave -noupdate /control_test/i1/halt
add wave -noupdate /control_test/i1/data_e
add wave -noupdate /control_test/i1/sel
add wave -noupdate /control_test/i1/opcode
add wave -noupdate /control_test/i1/zero
add wave -noupdate /control_test/i1/clk
add wave -noupdate /control_test/i1/rst
add wave -noupdate /control_test/i1/state
add wave -noupdate /control_test/i1/nextstate
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {0 ns} 0}
quietly wave cursor active 0
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
configure wave -timelineunits ns
update
WaveRestoreZoom {0 ns} {1 us}
