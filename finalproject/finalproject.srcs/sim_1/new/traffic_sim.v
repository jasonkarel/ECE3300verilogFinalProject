`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/02/2019 10:28:34 PM
// Design Name: 
// Module Name: traffic_sim
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module traffic_sim;
module traffic_sim;
reg clk, rst;
wire [2:0] main, side;
wire [1:0] walk;

trafficcontrol uut(clk, rst, main, side, walk); 
initial begin
clk = 0; rst = 0; 
#1 clk=~clk;
#1 clk=~clk; rst = 1;
#1 clk=~clk;
#1 clk=~clk; rst = 0;
#1 clk=~clk;
#1 clk=~clk;
#1 clk=~clk;
#1 clk=~clk;
#1 clk=~clk;
#1 clk=~clk;
#1 clk=~clk;
#1 clk=~clk;
#1 clk=~clk;
#1 clk=~clk;
#1 clk=~clk;
#1 clk=~clk;
end
endmodule
endmodule
