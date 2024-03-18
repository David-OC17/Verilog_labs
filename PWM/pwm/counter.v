module counter #(
parameter clk_freq = 50_000_000,
parameter counter_max = clk_freq / 50)(
	input clk,
			rst_n_a,
	output reg [31:0] counter_out // 
);

always @(posedge clk or negedge rst_n_a)
begin
	if(!rst_n_a)
	begin
		counter_out <= 0;
	end
	else 
		begin
			if(counter_out >= counter_max - 1)
			begin
				counter_out <= 32'd0;
			end 
			else
				counter_out <= counter_out + 32'd1;
		end 
end

endmodule 