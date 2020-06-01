`define num_results 35
`define num_vectors    35
`define fetch_cycle     5
`define outs cout,sum
module adder_tb;
  reg [3:0] a,b;
  reg cin;
  wire [3:0] sum;
  wire cout;
  integer i,j;
  
  adder4 adder4_1(cout,sum,a,b,cin);
  
  reg [8:0] test_vectors     [1:`num_vectors];  //arrays to hold pattern files
  

  integer vector, num_errors;
  //always #5 cin=~cin;
  
  /*****************************************************************************
 * Load in the test vector pattern file and apply each pattern to the 
 * adder inputs.
 ****************************************************************************/
  initial
    begin
      num_errors = 0;
      
      $timeformat(-9, 1, " ns", 9);                //display time in nanoseconds

      $readmemb("test_vectors.pat", test_vectors); //load input vector file

      {cin, a, b} = test_vectors[1];     //apply 1st test vector
      #(`fetch_cycle)      // synch to just before a fetch cycle
      for (vector = 2; vector <= `num_vectors; vector = vector + 1)
	   begin
          {cin, a, b} = test_vectors[vector];
	      #(`fetch_cycle);               // apply one vector each fetch cycle
        end
      $display("\n*** REACHED END OF TEST VECTORS ***");
      $display("\nThere were %0d errors detected!\n", num_errors);
      $finish; // This prevents simulation beyond end of test patterns
    end

  
    
  initial
    begin: DEBUG	 // Named so it can be disabled
    integer result;
    reg [4:0] expected, expected_results [1:`num_results];

      result =0; 
      $readmemb("expected_results.pat", expected_results); //load file
      expected = expected_results[result];
      forever  #(`fetch_cycle)  //check outputs 
        begin
          result = result + 1;
          expected = expected_results[result];
                         
          if ({`outs} !== expected)
            begin
              num_errors = num_errors + 1;
              $display("*** Error at %t:",$realtime,
                       "\tTest Vector No. %0d:    Expected Results No. %0d.",(vector - 1), result);
              if (sum !== expected[3:0])
                $display("\tsum       = %b   expected: %b",sum, expected[3:0]);
              if (cout !== expected[4])
                $display("\tcout       = %b   expected: %b",cout, expected[4]);
            end
        end
    end 
 endmodule
  