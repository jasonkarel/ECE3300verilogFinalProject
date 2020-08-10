`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/01/2019 09:27:57 PM
// Design Name: 
// Module Name: trafficcontrol
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


module trafficcontrol(clock, reset, main, side, walk);

input clock, reset;
output reg [2:0] main, side;
output reg [1:0] walk;

localparam [2:0] s0 = 3'b000, s1 = 3'b001, s2 = 3'b010,
 s3 = 3'b011, s4 = 3'b100 ,s5 = 3'b101, s6 = 3'b111;

reg [2:0] state_reg, state_next;
reg [5:0] count;
//reg [2:0] main_reg, main_next, side_reg, side_next;
//reg [1:0] walk_reg, walk_next;

always @(posedge clock, posedge reset)
if(reset)
    begin
    state_reg <= s0;
    count = 0;
    end
    else
    begin
    state_reg <= state_next;
    count = 0;
    end

always@*
begin
state_next = state_reg;
count = 0;
case (state_reg)
    s0:
    begin
    if (count == 10)
    begin
    state_next = s1;
    end
    else
    begin
    count = count + 1;
    end
    end
    s1:
    begin
        if (count == 13)
        begin
        state_next = s2;
        end
        else
        begin
        count = count + 1;
        end
    end
    s2:
    begin
        if (count == 20)
        begin
        state_next = s3;
        end
        else
        begin
        count = count + 1;
        end
    end
    s3:
    begin
        if (count == 23)
        begin
        state_next = s4;
        end
        else
        begin
        count = count + 1;
        end
    end
    s4:
    begin
        if (count == 33)
        begin
        state_next = s5;
        end
        else
        begin
        count = count + 1;
        end
    end
    s5:
    begin
        if (count == 36)
        begin
        state_next = s0;
        end
        else
        begin
        count = count + 1;
        end
    end
endcase
end
always@(state_reg)
begin
case (state_reg)
    s0:
    begin
    main = 3'b100;
    side = 3'b100;
    walk = 2'b10;
    end
    s1:
    begin
    main = 3'b001;
    side = 3'b100;
    walk = 2'b10;
    end
    s2:
    begin
    main = 3'b010;
    side = 3'b100;
    walk = 2'b10;
    end
    s3:
    begin
    main = 3'b100;
    side = 3'b001;
    walk = 2'b10;
    end
    s4:
    begin
    main = 3'b100;
    side = 3'b010;
    walk = 2'b10;
    end
    s5:
    begin
    main = 3'b100;
    side = 3'b100;
    walk = 2'b01;
    end
    default:
    begin
    main = 3'b100;
    side = 3'b100;
    walk = 2'b10;
    end
    endcase
    
end


endmodule
