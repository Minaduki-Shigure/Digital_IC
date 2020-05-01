//////////////////////////////////////////////////////////////////////////////////
// Company: Nanjing University
// Engineer: Minaduki Shigure
// 
// Create Date: 2020/04/29 11:06:42
// Design Name: 
// Module Name: counter_tb
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

module counter_tb;
    wire clk;
    reg load, rst;
    reg [4:0] data;
    wire [4:0] cnt;

    clock c1 (clk);
    counter cnt1 (.clk(clk), .load(load), .rst(rst), .data(data), .cnt(cnt));

    initial
    begin
        load = 0; data = 0; rst = 0;
        #30 rst = 1;
        #300 rst = 0;
        #30 rst = 1;
        #200 data = 10;
        #30 load = 1;
        #30 load = 0;
        #500 $finish;
    end

    initial 
    begin
// SET UP THE OUTPUT FORMAT FOR THE TEXT DISPLAY
        $display("\t\t\t         INPUTS         OUTPUTS \n");
        $display("\t\t\t  RST   LOAD   DATA  |  CNT_OUT  ");
        $display("\t\t\t  ---   ----   ----  |  ----");
        $timeformat(-9, 1, " ns", 9); //Display time in nanoseconds
        $monitor ($time,"     %b     %b      %h   |     %h   ",
                           rst, load, data, cnt);

    end

endmodule