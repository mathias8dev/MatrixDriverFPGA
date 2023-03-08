vcom -reportprogress 300 -work work C:/Users/pret/Documents/Code/Electronics/ledMatrix_v5/simulation/modelsim/ledMatrix_tb.vhd
vsim work.ledmatrix_tb
add wave ledMatrix_tb/clock_50
add wave ledMatrix_tb/global_ar
add wave ledMatrix_tb/ledMatrix_inst/clock_4
add wave ledMatrix_tb/ledMatrix_inst/pll_locked
add wave ledMatrix_tb/matrix_clock
add wave ledMatrix_tb/matrix_LE
add wave ledMatrix_tb/matrix_OE
add wave ledMatrix_tb/matrix_CBA
add wave ledMatrix_tb/ledMatrix_inst/rom_address_top
add wave ledMatrix_tb/ledMatrix_inst/rom_address_bottom
add wave ledMatrix_tb/ledMatrix_inst/matrix_R1
add wave ledMatrix_tb/ledMatrix_inst/matrix_R2
add wave ledMatrix_tb/ledMatrix_inst/matrix_V1
add wave ledMatrix_tb/ledMatrix_inst/matrix_V2
add wave ledMatrix_tb/ledMatrix_inst/matrix_B1
add wave ledMatrix_tb/ledMatrix_inst/matrix_B2
add wave ledMatrix_tb/ledMatrix_inst/hlsm_inst/cnt
add wave ledMatrix_tb/ledMatrix_inst/hlsm_inst/cnt_pwm
add wave ledMatrix_tb/ledMatrix_inst/hlsm_inst/cnt_pwm_next
add wave ledMatrix_tb/ledMatrix_inst/hlsm_inst/cnt_next
add wave ledMatrix_tb/ledMatrix_inst/hlsm_inst/pixel
add wave ledMatrix_tb/ledMatrix_inst/hlsm_inst/rom_add
add wave ledMatrix_tb/ledMatrix_inst/hlsm_inst/rom_add_next
add wave ledMatrix_tb/ledMatrix_inst/hlsm_inst/lines
add wave ledMatrix_tb/ledMatrix_inst/hlsm_inst/lines_next
add wave ledMatrix_tb/ledMatrix_inst/hlsm_inst/state

add wave ledMatrix_tb/ledMatrix_inst/red1_color_cp
add wave ledMatrix_tb/ledMatrix_inst/red1_pwm_inst/color_cp
add wave ledMatrix_tb/ledMatrix_inst/red1_pwm_inst/color_cpm

add wave ledMatrix_tb/ledMatrix_inst/green1_color_cp
add wave ledMatrix_tb/ledMatrix_inst/green1_pwm_inst/color_cp
add wave ledMatrix_tb/ledMatrix_inst/green1_pwm_inst/color_cpm


add wave ledMatrix_tb/ledMatrix_inst/blue1_color_cp
add wave ledMatrix_tb/ledMatrix_inst/blue1_pwm_inst/color_cp
add wave ledMatrix_tb/ledMatrix_inst/blue1_pwm_inst/color_cpm



run 12 ms

radix -unsigned