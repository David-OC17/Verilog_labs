transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+C:/Users/daveo/OneDrive/Documentos/School/UNI_S.4/LOGIC/Verilog_labs/clk_divider {C:/Users/daveo/OneDrive/Documentos/School/UNI_S.4/LOGIC/Verilog_labs/clk_divider/clk_divider_tb.v}
vlog -vlog01compat -work work +incdir+C:/Users/daveo/OneDrive/Documentos/School/UNI_S.4/LOGIC/Verilog_labs/clk_divider {C:/Users/daveo/OneDrive/Documentos/School/UNI_S.4/LOGIC/Verilog_labs/clk_divider/clk_divider.v}

vlog -vlog01compat -work work +incdir+C:/Users/daveo/OneDrive/Documentos/School/UNI_S.4/LOGIC/Verilog_labs/clk_divider {C:/Users/daveo/OneDrive/Documentos/School/UNI_S.4/LOGIC/Verilog_labs/clk_divider/clk_divider_tb.v}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L fiftyfivenm_ver -L rtl_work -L work -voptargs="+acc"  clk_divider_tb

add wave *
view structure
view signals
run -all
