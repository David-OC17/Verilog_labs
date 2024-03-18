// Clock divider

module clk_divider #(parameter Frec_input = 50_000_000)(
	input clk,
	input rst,
	output reg clk_div
);

reg [31:0] count;

localparam frec_clk_sis = 50_000_000 / Frec_input;

always @(posedge(clk) or negedge(rst))
begin
	if(rst==0)
		count <= 32'b0;
	else if (count == frec_clk_sis -1)
		count <= 32'b0;
	else
		count <= count + 1;
end

always @(posedge(clk) or negedge(rst))
begin
	if(rst == 1'b0)
		clk_div <= 1'b0;
	else if (count == frec_clk_sis -1)
		clk_div <= ~clk_div;
	else
		clk_div = clk_div;
end

endmodule
