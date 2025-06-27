module clk_divider(
input clk, rst,
output reg tick
);

localparam DIV = 100000/2;
reg [31:0] cnt;

always@(posedge clk or posedge rst)begin
	if(rst)begin
		cnt<=0; tick<=0;
	end else begin
		if(cnt==DIV-1)begin
			tick<=1; cnt<=0;
		end else begin
			cnt<=cnt+1; tick<=0;
		end
	end
end
endmodule