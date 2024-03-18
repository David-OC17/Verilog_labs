module cmp(
	input [31:0] counter_in,
	input [7:0] sw_input,
	output reg pwm_out // 
	
);
wire [31:0] comp;
assign comp = sw_input >= 180 ? 120_000 : (500 * sw_input)  + 30_000; 

always @(*)
begin 
	if(comp > counter_in)
		pwm_out <= 1;
	else 
		pwm_out <= 0;
end 
endmodule 