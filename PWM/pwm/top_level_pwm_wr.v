module top_level_pwm_wr(
	input MAX10_CLK1_50,
	input [1:0] KEY,
	input [7:0] SW,
	output [6:0] HEX0, HEX1, HEX2,
	output [9:0] ARDUINO_IO
);

top_level_pwm wr_top_level(
	.clk(MAX10_CLK1_50),
	.rst_n_a(KEY[0]),
	.sw_grados(SW),
	.wire_unidades(HEX0),
	.wire_decenas(HEX1),
	.wire_centenas(HEX2),
	.pwm_pin(ARDUINO_IO[0])
);


endmodule 