/*****************************************************************************
 * clock ocillator for CPU  
 * 
 *
 *             |<- 10 ns ->|
 *           __       _____       _____       _____       _____       __
 *             |     |     |     |     |     |     |     |     |     |
 *     clk     |_____|     |_____|     |_____|     |_____|     |_____| 
 *
 * module name:clkgen.v
 * author: 
 * date: 
*****************************************************************************/

`timescale 1ns / 1ns
module clkgen(clk);
  output clk;
  reg clk;

  `define  period  10

  initial
    begin
      clk=1;
      forever
      begin
        #(`period/2) clk = 0;
        #(`period/2) clk = 1;
      end
    end

endmodule
