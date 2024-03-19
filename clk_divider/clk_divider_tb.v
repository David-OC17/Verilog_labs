// clk_divider testbench - simulation

`timescale 1ns / 100ps

module clk_divider_tb ();

reg clk_tb;
reg rst_tb;
wire clk_div_tb;

clk_divider #(5) clk_tbDUT(
	.clk(clk_tb),
	.rst(rst_tb),
	.clk_div(clk_div_tb)
);

localparam CLOCK_PERIOD = 20; //ns


always #((CLOCK_PERIOD / 2)) clk_tb = ~clk_tb;

initial
begin
	clk_tb = 0;
	rst_tb = 0;
	#100
	
	rst_tb = 1;
	#1000
	
	rst_tb = 0;
	#1000
	
	$Stop;
end


endmodule
