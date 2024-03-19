
// Testbench

module pwm_tb();

    // Inputs
    reg MAX10_CLK1_50;
    reg [1:0] KEY;
    reg [7:0] SW;

    // Outputs
    wire [6:0] HEX0, HEX1, HEX2;
    wire [9:0] ARDUINO_IO;

    // Instantiate the Unit Under Test (UUT)
    top_level_pwm_wr dut (
        .MAX10_CLK1_50(MAX10_CLK1_50),
        .KEY(KEY),
        .SW(SW),
        .HEX0(HEX0),
        .HEX1(HEX1),
        .HEX2(HEX2),
        .ARDUINO_IO(ARDUINO_IO)
    );

    // Clock generation
    always #10 MAX10_CLK1_50 = ~MAX10_CLK1_50;

    // Stimulus
    initial begin
        // Initialize inputs
        KEY = 2'b00;
        SW = 8'b00000000;

        // Apply reset
        KEY = 2'b01;
        #20;
        KEY = 2'b00;

        // Apply stimulus
        SW = 8'b01010101;
        #100;
        SW = 8'b10101010;
        #100;
        SW = 8'b11001100;
        #100;
        // Add more stimulus as needed

        // End simulation
        $Stop;
    end

endmodule
