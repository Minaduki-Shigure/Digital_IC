/*********************************************************************
 * Scalable testbench for the scaleable mux 
 * module name:scale_test.v
 * author: 
 * date: 
 
 *********************************************************************/

`define width 5
`timescale 1ns / 1ns
module scale_test;

    reg  [`width:1] a, b;
    wire [`width:1] out;
    reg sel;

// Instantiate the mux.  

    scale_mux #(`width) m1(.out(out), .a(a), .b(b), .sel(sel)); 

    initial
      begin 
	//  Display results to the screen
        $monitorb("%d out=%b a=%b b=%b sel=%b",$time,out,a,b,sel);
	//  Provide stimulus for the design
        #10 a = 5'b00001;
        b = 5'b10001;
         
	// Initialize (select a)
        #10 sel = 0;
	// Change the values of a and b (out still equals a)	 
        #10 a = 5'b11111;
        b = 5'b10101;
	// Change the value of sel (select b)
        #10 sel = 1;
	// Change the values of a and b (out still equals b)
        #10 a = 5'b11111;
        b = 5'b10101;	      
 	    
        #100 $finish;
      end

endmodule
