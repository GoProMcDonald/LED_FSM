`timescale 1ns/1ps

module led_tb;
reg clk=0;
reg rst=0;
wire [7:0] led;
wire tick;

always #5 clk=~clk;

led_fsm fsm_inst(.clk(clk), .rst(rst), .tick(tick), .led(led));
clk_divider div_inst(.clk(clk), .rst(rst), .tick(tick));	

initial begin
	$dumpfile("led.vcd");
	$dumpvars(0, led_tb);
	
	rst=1;
	#20;
	rst=0;
	#5000000;
	$finish;
end
endmodule
	