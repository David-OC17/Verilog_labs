transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+C:/Users/daveo/OneDrive/Documentos/School/UNI_S.4/LOGIC/Verilog_labs/7segment_display {C:/Users/daveo/OneDrive/Documentos/School/UNI_S.4/LOGIC/Verilog_labs/7segment_display/segmentos_7.v}
vlog -vlog01compat -work work +incdir+C:/Users/daveo/OneDrive/Documentos/School/UNI_S.4/LOGIC/Verilog_labs/UART/src {C:/Users/daveo/OneDrive/Documentos/School/UNI_S.4/LOGIC/Verilog_labs/UART/src/UART_tx.v}
vlog -vlog01compat -work work +incdir+C:/Users/daveo/OneDrive/Documentos/School/UNI_S.4/LOGIC/Verilog_labs/UART/src {C:/Users/daveo/OneDrive/Documentos/School/UNI_S.4/LOGIC/Verilog_labs/UART/src/UART_rx.v}
vlog -vlog01compat -work work +incdir+C:/Users/daveo/OneDrive/Documentos/School/UNI_S.4/LOGIC/Verilog_labs/UART/src {C:/Users/daveo/OneDrive/Documentos/School/UNI_S.4/LOGIC/Verilog_labs/UART/src/UART_baudrate_generator.v}
vlog -vlog01compat -work work +incdir+C:/Users/daveo/OneDrive/Documentos/School/UNI_S.4/LOGIC/Verilog_labs/UART/src {C:/Users/daveo/OneDrive/Documentos/School/UNI_S.4/LOGIC/Verilog_labs/UART/src/TOP.v}
vlog -vlog01compat -work work +incdir+C:/Users/daveo/OneDrive/Documentos/School/UNI_S.4/LOGIC/Verilog_labs/UART/src {C:/Users/daveo/OneDrive/Documentos/School/UNI_S.4/LOGIC/Verilog_labs/UART/src/DE10_Lite_wr.v}
vlog -vlog01compat -work work +incdir+C:/Users/daveo/OneDrive/Documentos/School/UNI_S.4/LOGIC/Verilog_labs/UART/tb {C:/Users/daveo/OneDrive/Documentos/School/UNI_S.4/LOGIC/Verilog_labs/UART/tb/UART_tb.v}

vlog -vlog01compat -work work +incdir+C:/Users/daveo/OneDrive/Documentos/School/UNI_S.4/LOGIC/Verilog_labs/UART/misc/../tb {C:/Users/daveo/OneDrive/Documentos/School/UNI_S.4/LOGIC/Verilog_labs/UART/misc/../tb/UART_tb.v}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L fiftyfivenm_ver -L rtl_work -L work -voptargs="+acc"  UART_tb

add wave *
view structure
view signals
run -all
