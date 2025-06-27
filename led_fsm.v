module led_fsm(
input clk, rst, tick,
output reg [7:0] led
);

always@(posedge clk or posedge rst)begin
	if(rst)begin
		led<={8'b00000001}; 
	end else begin
		if(tick)
		led<={led[6:0], led[7]};
	end
end
endmodule