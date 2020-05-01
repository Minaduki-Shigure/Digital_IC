/***********************************************************************
 * the 8-bit Register
 * module name:rigister.v
 * author: Minaduki Shigure
 * date: 

 *********************************************************************/

`timescale 1 ns / 100 ps

module register(r, clk, data, ena, rst);
    output [7:0] r;
    input  [7:0] data;
    input        clk, ena, rst;
    reg    [7:0] r;

    always @ (posedge clk, rst)
    begin
        if (!rst)
        begin
            r <= 0;
        end
        else
        begin
            if (clk)
            begin
                if (ena)
                begin
                    r <= data;
                end
                else
                begin
                    r <= r;
                end
            end
        end
    end
  
endmodule
