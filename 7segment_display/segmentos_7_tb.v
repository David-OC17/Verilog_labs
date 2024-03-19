
// Testbench

module segmentos_7_tb();

reg [7:0] value_input;
wire [6:0] display1, display2, display3;

reg [3:0] unidades;
reg [3:0] decenas;
reg [2:0] centenas;

always @(value_input) begin
	unidades = value_input % 10;
	decenas = (value_input / 10) % 10;
	centenas = (value_input / 100) % 100;
end

segmentos_7 UNIDADES(
	.data_segmentos_in(unidades),
	.data_segmentos_out(display1)
);

segmentos_7 DECENAS(
	.data_segmentos_in(decenas),
	.data_segmentos_out(display2)
);

segmentos_7 CENTENAS(
	.data_segmentos_in(centenas),
	.data_segmentos_out(display3)
);

// all async, no clock needed
initial
begin
	#10
	value_input = 100;
	
	#10
	value_input = 150;
	
	#10
	value_input = 0;
	
	#10
	$Stop;

end

endmodule

