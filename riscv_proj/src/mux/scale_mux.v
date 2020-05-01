/********************************************************************
 * scalable mux 
 * module name:scale_mux.v
 * author: Minaduki Shigure
 * date: 

 ********************************************************************/

`timescale 1ns / 1ns

module scale_mux(out, a, b, sel);

    parameter size = 1;

    output [size-1:0] out;
    input [size-1:0] a, b;
    input sel;

    assign out = sel ? b : a;

endmodule
