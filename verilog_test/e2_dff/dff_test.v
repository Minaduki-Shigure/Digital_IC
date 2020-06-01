`define num_results 13
`define num_vectors    13
`define fetch_cycle     5
`define outputs q,qn
`define inputs reset,set,d
`timescale 1ns / 1ns
module dff_test;
  reg  d;
  reg reset,set,clk;
     
 dff dff1(q,qn,d,clk,set,reset);

 always #10 clk= ~clk;   
  reg [2:0] test_vectors     [1:`num_vectors];  //arrays to hold pattern files
  integer vector, num_errors;
    
   /*****************************************************************************
 * Load in the test vector pattern file and apply each pattern to the 
 * adder inputs.
 ****************************************************************************/
 /* initial
    begin
      num_errors = 0; 
      $timeformat(-9, 1, " ns", 9);                //display time in nanoseconds
      clk=0;
      $readmemb("test_vectors.pat", test_vectors); //load input vector file
      {`inputs} = test_vectors[1];     //apply 1st test vector
      //#10; // synch to just before a fetch cycle
      for (vector = 2; vector <= `num_vectors; vector = vector + 1)
	    begin              
	        @(posedge clk or negedge set or negedge reset) {`inputs} = test_vectors[vector];               // apply one vector each fetch cycle
	        //@(posedge clk);
      end
      $display("\n*** REACHED END OF TEST VECTORS ***");
      $display("\nThere were %0d errors detected!\n", num_errors);
      $finish; // This prevents simulation beyond end of test patterns
    end */
    
    initial                 //CREATE INPUT STIMULUS WITH PROCEDURAL STATEMENTS
    begin
      $timeformat(-9, 1, " ns", 9);   //display time in nanoseconds
      clk=0;reset=1;set=1;num_errors = 0;
      #55 reset=0;d=1;
      #40 reset=1;
      #20 d=0;          
      #40 set=0;
      #20 set=1;
      //#10 d=0;
      #20 
      $display("\n*** REACHED END OF TEST VECTORS ***");
      $display("\nThere were %0d errors detected!\n", num_errors);
      #100 $finish;
    end
 
  initial
    begin: DEBUG	 // Named so it can be disabled
    integer result;
    reg [1:0] expected, expected_results [1:`num_results];
      result =0; 
      $readmemb("expected_results.pat", expected_results); //load file
      expected = expected_results[result];
      forever  @(posedge clk or negedge set or negedge reset) //check outputs 
        begin           
           result = result + 1;
          expected = expected_results[result];             
          if ({`outputs} !== expected)
            begin
              num_errors = num_errors + 1;
              //$display("*** Error at %t:",$realtime,
              //         "\tTest Vector No. %0d:    Expected Results No. %0d.",(vector - 1), result);
              $display("\tout       = %b%b expected: %b",`outputs, expected);
           end
        end
    end  
  
endmodule