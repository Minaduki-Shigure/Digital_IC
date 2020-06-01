`define num_results 10
`define num_vectors    10
`define fetch_cycle     5
`define outputs dout
`define inputs din
module coder_test;
  reg [7:0] din;
  wire [7:0] dout;
  
  code_8_3 code1(din,dout);
  
  reg [7:0] test_vectors     [1:`num_vectors];  //arrays to hold pattern files
  
  integer vector, num_errors;
    
   /*****************************************************************************
 * Load in the test vector pattern file and apply each pattern to the 
 * adder inputs.
 ****************************************************************************/
  initial
    begin
      num_errors = 0; 
      $timeformat(-9, 1, " ns", 9);                //display time in nanoseconds
      $readmemb("test_vectors.pat", test_vectors); //load input vector file
      {`inputs} = test_vectors[1];     //apply 1st test vector
      //#10; // synch to just before a fetch cycle
      for (vector = 2; vector <= `num_vectors; vector = vector + 1)
	    begin              
	        #10 {`inputs} = test_vectors[vector];               // apply one vector each fetch cycle
	        //@(posedge clk);
      end
      $display("\n*** REACHED END OF TEST VECTORS ***");
      $display("\nThere were %0d errors detected!\n", num_errors);
      $finish; // This prevents simulation beyond end of test patterns
    end
 
  initial
    begin: DEBUG	 // Named so it can be disabled
    integer result;
    reg [7:0] expected, expected_results [1:`num_results];
      result =0; 
      $readmemb("expected_results.pat", expected_results); //load file
      expected = expected_results[result];
      forever   //check outputs 
        begin           
          #10 result = result + 1;
          expected = expected_results[result];             
          if ({`outputs} !== expected)
            begin
              num_errors = num_errors + 1;
              $display("*** Error at %t:",$realtime,
                       "\tTest Vector No. %0d:    Expected Results No. %0d.",(vector - 1), result);
              $display("\tout       = %b   expected: %b",`outputs, expected);
           end
        end
    end 
  endmodule