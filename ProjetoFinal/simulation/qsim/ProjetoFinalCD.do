onerror {exit -code 1}
vlib work
vlog -work work ProjetoFinalCD.vo
vlog -work work Waveform1.vwf.vt
vsim -novopt -c -t 1ps -L cycloneiii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.ProjetoFinalCD_vlg_vec_tst -voptargs="+acc"
vcd file -direction ProjetoFinalCD.msim.vcd
vcd add -internal ProjetoFinalCD_vlg_vec_tst/*
vcd add -internal ProjetoFinalCD_vlg_vec_tst/i1/*
run -all
quit -f
