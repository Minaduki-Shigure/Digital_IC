/**********************************************************************
 * Stimulus for testing the 8-bit Register
 * module name:rigister_test.v
 * author: Minaduki Shigure
 * date: 

 *********************************************************************/

`timescale 1 ns / 1 ns

module test;
    wire [7:0] reg_out;              //declare vector for register output
    reg  [7:0] data;
    reg        ena, rst;

    clock c1 (clk);      //clock oscilator
    register reg1 (.r(reg_out), .clk(clk), .data(data), .ena(ena), .rst(rst));

  
/*********************************************************************
  SPECIFY INPUT STIMULI 
*********************************************************************/

    initial 
    begin
	// initialize inputs
        data = 8'b1; ena = 0;

	// Output should be unknown
        #15 ena = 1; rst = 1;
        #15 rst = 0;
	                // test that reset works:Output should go to zero
		#15 ena = 0; rst = 1;
                    // test that enable works
        #15 ena = 1;
        #15 data = 8'b10;
        #20 data = 8'b11;
        #20 data = 8'b101;
        #20 data = 8'b1001;
        #20 data = 8'b110;
        #20 data = 8'b1;
        #15 ena = 0;
                      // Output should be clocked from data
        #15 data = 8'b1111;
        #15 data = 8'b1010;
                     // Output should not be clocked from data.
        #1000 $finish;
    end
    
    initial 
    begin
// SET UP THE OUTPUT FORMAT FOR THE TEXT DISPLAY
        $display("\t\t\t         INPUTS         OUTPUTS \n");
        $display("\t\t\t  RST   ENA   DATA  |  REG_OUT  ");
        $display("\t\t\t  ---   ---   ----  |  ----");
        $timeformat(-9, 1, " ns", 9); //Display time in nanoseconds
        $monitor ($time,"     %b     %b     %h   |     %h   ",
                           rst, ena, data, reg_out);

    end

endmodule



