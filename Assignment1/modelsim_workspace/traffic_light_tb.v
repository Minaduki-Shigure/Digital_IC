`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Nanjing University
// Engineer: Minaduki Shigure
// 
// Create Date: 2020/03/23 11:07:06
// Design Name: 
// Module Name: traffic_light_tb
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


module traffic_light_tb(

    );
    
    reg CLK;
    reg rst_n;
    wire [2:0] main;
    wire [2:0] branch;
    
    traffic_light tb(
        .CLK(CLK),
        .rst_n(rst_n),
        .main(main),
        .branch(branch)
        );
        
    initial
    begin
        CLK = 0;
        rst_n = 1;
        #5 rst_n = 0;
        #5 rst_n = 1;
    end
    
    always
    begin
        #5 CLK = ~CLK;
    end
    
endmodule
