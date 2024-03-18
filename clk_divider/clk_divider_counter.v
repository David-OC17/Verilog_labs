
// C_MAX: max counter for the counter
module seq_example_with_clk_divider #(parameter  C_MAX = 100, parameter Frec_input = 5)(
	input clk, rst_n_a,
	input up_down_switch,
	input enable, // for counter
	output [7:0] counter_data,
	output LED_CLK
);

wire [4:0] clk_div_wire;

clk_divider #(.Frec_input(Frec_input)) DIVISOR_RELOJ(
	.clk(clk),
	.rst(rst_n_a),
	.clk_div(clk_div_wire)
);

contador_updown COUNTER(
	.clk(clk_div_wire),
	.rst_n_a(rst_n_a),
	.enable(enable),
	.up_down(up_down_switch),
	.counter_num(counter_data)
);

//counter COUNTER(
//	.clk(clk_div_wire),
//	.rst_n(rst_n_a),
//	.count_counter(counter_data)
//);

//seq_example #(.C_MAX(C_MAX)) COUNTER(
//	.clk(clk_div_wire),
//	.rst_n_a(rst_n_a),
//	.out_data(counter_data)
//);

assign LED_CLK = clk_div_wire;

endmodule
