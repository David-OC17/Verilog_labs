
// Testbench

module UART_tb();

    // Inputs
    reg MAX10_CLK1_50;
    reg [9:0] SW;
    reg [1:0] KEY;
    
    // Outputs
    wire [9:0] LEDR;
    wire [6:0] HEX0, HEX1, HEX2, HEX3, HEX4, HEX5;

    // Instantiate the module under test
    DE10_Lite_wr dut (
        .MAX10_CLK1_50(MAX10_CLK1_50),
        .SW(SW),
        .KEY(KEY),
        .LEDR(LEDR),
        .HEX0(HEX0),
        .HEX1(HEX1),
        .HEX2(HEX2),
        .HEX3(HEX3),
        .HEX4(HEX4),
        .HEX5(HEX5)
    );

    // Clock generation
    always #5 MAX10_CLK1_50 = ~MAX10_CLK1_50;

    // Test scenario
    initial begin
        // Initialize inputs
        SW = 10'b0000000000;
        KEY = 2'b00;
		  
		  #10
		  // Enable sending
		  SW = 10'b_100000_0000;
		  
		  #10
		  //Star sending something
		  SW = 10'b_100000_1110;
		  
		  #10
		  // Send the msg
		  KEY = 2'b10;
		  
		  #10
		  // See the output for both the sets of three display
		  

        // End simulation
        $Stop;
    end

endmodule
