onerror {exit -code 1}
vlib work
vlog -work work Pratica04_Full_Adder.vo
vlog -work work Waveform3.vwf.vt
vsim -novopt -c -t 1ps -L cycloneiv_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.Pratica04_Full_Adder_vlg_vec_tst -voptargs="+acc"
vcd file -direction Pratica04_Full_Adder.msim.vcd
vcd add -internal Pratica04_Full_Adder_vlg_vec_tst/*
vcd add -internal Pratica04_Full_Adder_vlg_vec_tst/i1/*
run -all
quit -f
