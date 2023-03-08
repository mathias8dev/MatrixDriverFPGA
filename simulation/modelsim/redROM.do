vcom -reportprogress 300 -work work C:/Users/mcolin/Documents/Altera/ESE/ledMatrix/simulation/modelsim/redROM_tb.vhd
vsim work.redrom_tb
add wave -radix unsigned *
run 2us