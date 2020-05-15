//////////////////////////////////////////////////////////////////////////////////
// Company: Nanjing University
// Engineer: Minaduki Shigure
// 
// Create Date: 2020/5/15 15:22:34
// Design Name: 
// Module Name: mem
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

`timescale 1ns / 1ns

module mem(
    inout [7:0] data,
    input [4:0] addr,
    input read,
    input write
);

reg [7:0] memory [31:0];

always @ (posedge write)
begin
    memory[addr] = data;
end

assign data = read ? memory[addr] : 8'bzzzz_zzzz;

endmodule