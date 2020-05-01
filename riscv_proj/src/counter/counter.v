//////////////////////////////////////////////////////////////////////////////////
// Company: Nanjing University
// Engineer: Minaduki Shigure
// 
// Create Date: 2020/04/29 11:06:37
// Design Name: 
// Module Name: counter
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

`timescale 1 ns / 1 ns

module counter(
    input clk,
    input load,
    input rst,
    input [4:0] data,
    output reg [4:0] cnt
)
    always @ (posedge clk, rst)
    begin
        if (!rst)
        begin
            cnt <= #3 0;
        end
        else
        begin
            if (clk)
            begin
                if (load)
                begin
                    cnt <= #3 data;
                end
                else
                begin
                    cnt <= #4 cnt + 1;
                end
            end
        end
    end

endmodule