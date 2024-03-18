
module top_wrapper(
	input MAX10_CLK1_50,
	input [1:0] KEY,
	input [9:0] SW,
	output [9:0] LEDR,
	output [6:0] HEX0, HEX1, HEX2
);

wire [4:0] data_displays;

seq_example_with_clk_divider WRAPPER(
	.clk(MAX10_CLK1_50),
	.rst_n_a(KEY[1]),
	.enable(SW[1]),
	.counter_data(data_displays),
	.up_down_switch(SW[0]),
	.LED_CLK(LEDR[9])
);

reg [3:0] unidades;
reg [3:0] decenas;
reg [2:0] centenas;

always @(data_displays) 
begin
	unidades = data_displays % 10;
	decenas = (data_displays / 10) % 10;
	centenas = (data_displays / 100) % 100;

end

// Convertir a código de 7 segmentos
segmentos_7 UNIDADES(
	.data_segmentos_in(unidades),
	.data_segmentos_out(HEX0)
);

segmentos_7 DECENAS(
	.data_segmentos_in(decenas),
	.data_segmentos_out(HEX1)
);

segmentos_7 CENTENAS(
	.data_segmentos_in(centenas),
	.data_segmentos_out(HEX2)
);


endmodule
