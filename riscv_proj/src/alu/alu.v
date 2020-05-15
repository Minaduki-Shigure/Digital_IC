//////////////////////////////////////////////////////////////////////////////////
// Company: Nanjing University
// Engineer: Minaduki Shigure
// 
// Create Date: 2020/5/14 21:48:13
// Design Name: 
// Module Name: alu
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

module alu(
    input [7:0] accum,
    input [7:0] data,
    input [2:0] opcode,
    output reg zero,
    output reg [7:0] alu_out
);

parameter
    PASSACCUM0 = 3'b000,
    PASSACCUM1 = 3'b001,
    ADDOP = 3'b010,
    ANDOP = 3'b011,
    XOROP = 3'b100,
    PASSDATA = 3'b101,
    PASSACCUM2 = 3'b110,
    PASSACCUM3 = 3'b111;

parameter 
    op_delay = 3.5,
    zero_delay = 1.2;

always @ (accum or data or opcode)
begin
    case (opcode)
        PASSACCUM0 : alu_out <= #op_delay accum;
        PASSACCUM1 : alu_out <= #op_delay accum;
        ADDOP : alu_out <= #op_delay data + accum;
        ANDOP : alu_out <= #op_delay data & accum;
        XOROP : alu_out <= #op_delay data ^ accum;
        PASSDATA : alu_out <= #op_delay data;
        PASSACCUM2 : alu_out <= #op_delay accum;
        PASSACCUM3 : alu_out <= #op_delay accum;
        default: alu_out <= #op_delay 8'bxxxx_xxxx;
    endcase 
    zero <= #zero_delay (!accum);
end

endmodule