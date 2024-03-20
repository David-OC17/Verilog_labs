
// Testbench

module Password_tb();

wire             clk; 
wire				  rst;
wire             pb;
wire      [3:0]  enteredPassword;


Password_button DUT(
	.clk(),
	.rst(),
	.pb(),
	.enteredPassword(),
	output reg        admitted,
	output     [6:0]  display1,display2,display3,display4,din,
	output reg [4:0]  statusIndicator
);

initial
begin


	$Stop;
end

endmodule
