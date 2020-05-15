/**********************************************************************
 * clock for testing the 8-bit Register
 * module name:rigister_test.v
 * author: Minaduki Shigure
 * date: 

 *********************************************************************/

`timescale 1 ns / 1 ns

module clock(clk);
    output clk;
    reg  start;

//clock oscillator, period = 20 time units
    nand #10 (clk, clk, start); // changes to start, clk are delayed 10 time units

    initial     //initialize the clock oscillator
    begin
        start = 0;        // After 10 time units, clk will equal 1.
        #10 start = 1;    // After another 10, clk will equal 0.
    end

endmodule

