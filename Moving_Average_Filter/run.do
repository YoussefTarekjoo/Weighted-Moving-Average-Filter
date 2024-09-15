vlib work
vlog FIR.v FIR_tb.v +cover -covercells
vsim -voptargs=+acc work.FIR_TB -cover
add wave *
run -all