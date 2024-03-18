module clk_div_wr(
	input MAX10_CLK1_50,
	input [1:0] KEY,
	output [9:0] LEDR
);

clk_divider WRAPPER(
.clk(MAX10_CLK1_50),
.rst(KEY[0]),
.clk_div(LEDR)
);

endmodule
