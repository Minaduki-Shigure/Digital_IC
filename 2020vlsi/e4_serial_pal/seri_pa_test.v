`define num_results 32
`define num_vectors    38
`define fetch_cycle     5
`define outputs out
`define inputs reset,en,in
`timescale 1ns / 1ns
module sp_test;
  reg reset,en,in,clk;
  wire [3:0] out;   
serial_pal sp1(out,clk,reset,en,in);

 always #10 clk= ~clk;   
 always #15 in=~in;
 integer vector, num_errors;

  initial                 //CREATE INPUT STIMULUS WITH PROCEDURAL STATEMENTS
    begin
      $timeformat(-9, 1, " ns", 9);   //display time in nanoseconds
      clk=0;in=0;reset=1;en=0;num_errors=0;
      #55 reset=0;
      #40 en=1;
      #100 en=0;
      #40 en=1;
      #500 
      $display("\n*** REACHED END OF TEST VECTORS ***");
      $display("\nThere were %0d errors detected!\n", num_errors);
      $finish;
    end
  
   initial
    begin: DEBUG	 // Named so it can be disabled
    integer result;
    reg [3:0] expected, expected_results [1:`num_results];
      result =2; 
      $readmemb("expected_results.pat", expected_results); //load file
      //expected = expected_results[result];
      forever  @(out) //check outputs 
        begin           
           expected = expected_results[result];
           result = result + 1;             
          if ({`outputs} !== expected)
            begin
              num_errors = num_errors + 1;
              //$display("*** Error at %t:",$realtime,
              //         "\tTest Vector No. %0d:    Expected Results No. %0d.",(vector - 1), result);
              $display("\tout       = %b expected: %b",`outputs, expected);
           end
        end
    end  
  
endmodule