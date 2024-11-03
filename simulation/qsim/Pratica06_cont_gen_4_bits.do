onerror {exit -code 1}
vlib work
vlog -work work Pratica06_cont_gen_4_bits.vo
vlog -work work Waveform6.vwf.vt
vsim -novopt -c -t 1ps -L cycloneiv_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.Pratica06_cont_gen_4_bits_vlg_vec_tst -voptargs="+acc"
vcd file -direction Pratica06_cont_gen_4_bits.msim.vcd
vcd add -internal Pratica06_cont_gen_4_bits_vlg_vec_tst/*
vcd add -internal Pratica06_cont_gen_4_bits_vlg_vec_tst/i1/*
run -all
quit -f
