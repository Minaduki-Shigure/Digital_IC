`define outputs mh,ml,sh,sl,msh,msl
`define inputs clr,pause
`timescale 1ns / 1ns

module sw_test;
  reg clk,clr,pause;
  wire [3:0]  msh,msl,sh,sl,mh,ml;  

stopwatch sw1(msh,msl,sh,sl,mh,ml,clk,clr,pause);

always  #10 clk=~clk;


  initial                 //CREATE INPUT STIMULUS WITH PROCEDURAL STATEMENTS
    begin
      $timeformat(-9, 1, " ns", 9);   //display time in nanoseconds
      clk=0;clr=1;pause=1;
      #55 clr=0;
      #40 pause=0;
      #100 pause=1;
      #40 pause=0;
      #120000 
      $display("\n*** REACHED END OF TEST VECTORS ***");
      $finish;
    end
  
  initial $monitor ("\tout       = %d%d %d%d %d%d ",mh,ml,sh,sl,msh,msl);
  
  
endmodule