onerror {exit -code 1}
vlib work
vlog -work work Pratica05_reg_5_bits.vo
vlog -work work Waveform4.vwf.vt
vsim -novopt -c -t 1ps -L cycloneiv_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.Pratica05_reg_5_bits_vlg_vec_tst -voptargs="+acc"
vcd file -direction Pratica05_reg_5_bits.msim.vcd
vcd add -internal Pratica05_reg_5_bits_vlg_vec_tst/*
vcd add -internal Pratica05_reg_5_bits_vlg_vec_tst/i1/*
run -all
quit -f
