
module contador_updown # (parameter counter_max = 16)(
	input clk,
			rst_n_a,
			up_down,
			enable,
	output reg [4:0] counter_num // reg
);

always @(posedge clk or negedge rst_n_a)
begin 
	if(!rst_n_a)
		counter_num <= 5'b0;
	else
	begin
		if(enable)
		begin
			if(up_down) // si el switch esta levantado, cuenta hacia arriba
			begin
				if(counter_num == counter_max - 1)
					counter_num <= 5'b0;
				else
					counter_num <= counter_num + 1;
			end
			else 
			begin
				if(counter_num == 0)
					counter_num <= 5'b01111; // si llega a 0, lo reiniciamos desde arriba (a 15)
				else
					counter_num <= counter_num - 1;
			end
		end //end if enable
		
		else
		begin
			counter_num <= counter_num;
		end
	end
	
end 

endmodule 