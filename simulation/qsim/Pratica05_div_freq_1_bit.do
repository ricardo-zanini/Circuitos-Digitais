onerror {exit -code 1}
vlib work
vlog -work work Pratica05_div_freq_1_bit.vo
vlog -work work Waveform1.vwf.vt
vsim -novopt -c -t 1ps -L cycloneiv_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.Pratica05_div_freq_1_bit_vlg_vec_tst -voptargs="+acc"
vcd file -direction Pratica05_div_freq_1_bit.msim.vcd
vcd add -internal Pratica05_div_freq_1_bit_vlg_vec_tst/*
vcd add -internal Pratica05_div_freq_1_bit_vlg_vec_tst/i1/*
run -all
quit -f
