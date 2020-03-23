`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Nanjing University
// Engineer: Minaduki Shigure
// 
// Create Date: 2020/03/23 11:06:42
// Design Name: 
// Module Name: traffic_light
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


module traffic_light(
    input CLK,
    input rst_n,
    output [2:0] main,  // 3'b100 for Red, 3'b010 for Yellow, 3'b001 for Green
    output [2:0] branch
    );
    
    // 为了方便组合逻辑部分，这里的状态值进行了调整，看起来有些奇怪.
    parameter stand_by = 3'b000;
    parameter main_green = 3'b001;
    parameter main_yellow = 3'b011;
    parameter branch_green = 3'b100;
    parameter branch_yellow = 3'b110; 
    
    parameter main_green_time = 15;
    parameter main_yellow_time = 3;
    parameter branch_green_time = 7;
    parameter branch_yellow_time = 3;
    
    reg [2:0] state;
    reg [3:0] count;

    always @ (posedge CLK) // 假装时钟频率是1Hz.
    begin
        if (!rst_n)
        begin
            state <= stand_by;
            //main <= 3'b000;
            //branch <= 3'b000;
            count <= 0;
        end
        else
        begin
            case (state)
                stand_by:
                    if (rst_n)
                        state <= main_green;
                main_green:
                    if (count >= main_green_time - 1)
                    begin
                        state <= main_yellow;
                        count <= 0;
                    end
                    else
                        count <= count + 1;
                main_yellow:
                    if (count >= main_yellow_time - 1)
                    begin
                        state <= branch_green;
                        count <= 0;
                    end
                    else
                        count <= count + 1;
                branch_green:
                    if (count >= branch_green_time - 1)
                    begin
                        state <= branch_yellow;
                        count <= 0;
                    end
                    else
                        count <= count + 1;
                branch_yellow:
                    if (count >= branch_yellow_time - 1)
                    begin
                        state <= main_green;
                        count <= 0;
                    end
                    else
                        count <= count + 1;
                default:
                    state <= stand_by;
            endcase            
        end
    end
    
    assign main[2] = state[2];
    assign main[1] = state[1] & state[0];
    assign main[0] = ~state[1] & state[0];
    assign branch[2] = state[0];
    assign branch[1] = state[2] & state[1];
    assign branch[0] = state[2] & ~state[1];  
    
endmodule
