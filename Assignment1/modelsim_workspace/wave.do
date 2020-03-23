onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /traffic_light_tb/CLK
add wave -noupdate /traffic_light_tb/rst_n
add wave -noupdate -expand /traffic_light_tb/main
add wave -noupdate -expand /traffic_light_tb/branch
add wave -noupdate /traffic_light_tb/tb/state
add wave -noupdate /traffic_light_tb/tb/count
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {0 ps} 0}
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
configure wave -timelineunits ps
update
WaveRestoreZoom {0 ps} {1050 ns}
