vcom -reportprogress 300 -work work C:/Users/pret/Documents/Code/Electronics/ledMatrix_V5/simulation/modelsim/hlsm_tb.vhd
vsim -gui -l msim_transcript work.hlsm_tb
add wave hlsm_tb/ar
add wave hlsm_tb/clock
add wave hlsm_tb/mx_clock
add wave hlsm_tb/mx_OE
add wave hlsm_tb/mx_LE
add wave hlsm_tb/mx_CBA
add wave hlsm_tb/hlsm_inst/state
add wave hlsm_tb/hlsm_inst/next_state
add wave hlsm_tb/hlsm_inst/lines
add wave hlsm_tb/hlsm_inst/lines_next
add wave hlsm_tb/hlsm_inst/pixel
add wave hlsm_tb/hlsm_inst/pixel_next
add wave hlsm_tb/hlsm_inst/cnt
add wave hlsm_tb/hlsm_inst/cnt_next
add wave hlsm_tb/hlsm_inst/rom_add
add wave hlsm_tb/hlsm_inst/rom_add_next
add wave hlsm_tb/hlsm_inst/rom_add_max
add wave hlsm_tb/rom_add_t
add wave hlsm_tb/rom_add_b

add wave hlsm_tb/hlsm_inst/cnt_pwm
add wave hlsm_tb/hlsm_inst/cnt_pwm_next



run 90ms

radix -unsigned