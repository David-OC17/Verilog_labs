module top_level_pwm(
	input clk,
			rst_n_a,
	input [7:0] sw_grados,
	output wire pwm_pin,
	output wire [6:0] wire_unidades, wire_decenas, wire_centenas
);

wire [31:0] counter_out_wire;


counter  counter_pwm(
	.clk(clk),
	.rst_n_a(rst_n_a),
	.counter_out(counter_out_wire)
);

cmp cmp_pwm(
	.counter_in(counter_out_wire),
	.sw_input(sw_grados),
	.pwm_out(pwm_pin)
);



reg [3:0] unidades;
reg [3:0] decenas;
reg [2:0] centenas;

always @(sw_grados) begin
	unidades = sw_grados % 10;
	decenas = (sw_grados / 10) % 10;
	centenas = (sw_grados / 100) % 100;
end


segmentos_7 UNIDADES(
	.data_segmentos_in(unidades),
	.data_segmentos_out(wire_unidades)
);

segmentos_7 DECENAS(
	.data_segmentos_in(decenas),
	.data_segmentos_out(wire_decenas)
);

segmentos_7 CENTENAS(
	.data_segmentos_in(centenas),
	.data_segmentos_out(wire_centenas)
);



endmodule 