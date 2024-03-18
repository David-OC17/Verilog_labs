
module TOP_tb();

// Variable declaration
reg clk_tb;
reg Rst_n_tb;
reg Rx_tb; // Input binary data through here

wire Tx_tb;
wire [7:0] RxData_tb; // Check the ouput to verify received data

// Clock config
localparam CLOCK_PERIOD = 20; //ns

initial
begin
	#10
	clk_tb = 0;
end

always #((CLOCK_PERIOD / 2)) clk_tb = ~clk_tb;


// Main module
TOP BOARD1(
    	.Clk(clk_tb)                     ,
    	.Rst_n(Rst_n_tb)                   ,   
   	.Rx(Rx_tb)                      ,    
    	.Tx(Tx_tb)                      ,
		.RxData(RxData_tb)		    	      ,
);

// Simulation instructions
initial
begin
	
	
	$stop;
end


endmodule
