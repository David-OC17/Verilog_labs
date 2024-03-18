module vga_wr(

	input MAX10_CLK1_50,		//master clock = 50MHz
	input [9:0] SW,			//right-most pushbutton for reset

	output [2:0] VGA_R,	//red vga output - 3 bits
	output [2:0] VGA_G, //green vga output - 3 bits
	output [1:0] VGA_B,	//blue vga output - 2 bits
	output VGA_HS,		//horizontal sync out
	output VGA_VS			//vertical sync out
	);
	
	vga_top top(
	
		.clk(MAX10_CLK1_50),
		.clr(SW[0]),
		.red(VGA_R),
		.green(VGA_G),
		.blue(VGA_B),
		.hsync(VGA_HS),
		.vsync(VGA_VS)
		
	);
	


endmodule 