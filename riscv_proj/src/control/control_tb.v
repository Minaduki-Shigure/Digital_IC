//////////////////////////////////////////////////////////////////////////////////
// Company: Nanjing University
// Engineer: Minaduki Shigure
// 
// Create Date: 2020/5/15 15:22:16
// Design Name: 
// Module Name: control_tb
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

`timescale 1ns / 1ns
module control_tb;

  `define period         10
  `define fetch_cycle    80
  `define setup_time     2
  `define prop_delay     6 /* time for changes on inputs to reach outputs */

  `define num_vectors    16
  `define num_results    128

  `define outs rd,wr,ld_ir,ld_acc,ld_pc,inc_pc,halt,data_e,sel
  
  reg [2:0] opcode;
  reg       rst, zero, clk;

  reg [4:0] test_vectors     [1:`num_vectors];  //arrays to hold pattern files
  reg[(3*8):0] mnemonic; //reg to hold 3 8-bit ASCII character opcode mnemonic

  integer vector, num_errors;

  control control1(`outs, opcode, zero, clk, rst);

/*****************************************************************************
 * Generate the clock
 ****************************************************************************/
  initial
    begin
      clk=1;
      forever #(`period/2) clk = !clk; 
    end

/*****************************************************************************
 * Load in the test vector pattern file and apply each pattern to the 
 * controller inputs.
 ****************************************************************************/
  initial
    begin
      num_errors = 0;
      
      $timeformat(-9, 1, " ns", 9);                //display time in nanoseconds

      $readmemb("test_vectors.pat", test_vectors); //load input vector file

      {rst, zero, opcode} = test_vectors[1];     //apply 1st test vector
      #(`fetch_cycle -`setup_time)      // synch to just before a fetch cycle
      for (vector = 2; vector <= `num_vectors; vector = vector + 1)
	begin
          {rst, zero, opcode} = test_vectors[vector];
	  #`fetch_cycle ;               // apply one vector each fetch cycle
        end
      $display("\n*** REACHED END OF TEST VECTORS ***");
      $display("\nThere were %0d errors detected!\n", num_errors);
      $finish; // This prevents simulation beyond end of test patterns
    end

/*****************************************************************************
 * Load in the expected results pattern file and compare each pattern to the 
 * controller outputs.
 ****************************************************************************/
  initial
    begin: DEBUG	 // Named so it can be disabled
    integer result;
    reg [8:0] expected, expected_results [1:`num_results];

      #2 result = 0; 
      $readmemb("expected_results.pat", expected_results); //load file
      wait (opcode)      //Wait until the first vector after the reset
      forever @(posedge clk)  //check outputs at every posedge of clk
        begin
          result = result + 1;
          expected = expected_results[result];
          #`prop_delay if ({`outs} !== expected)
            begin
              num_errors = num_errors + 1;
              $display("*** Error at %t:",$realtime,
                       "\tTest Vector No. %0d:    Expected Results No. %0d.",
                        (vector - 1), result);
              if (rd !== expected[8])
                $display("\trd       = %b   expected: %b",
                         rd, expected[8]);
              if (wr !== expected[7])
                $display("\twr       = %b   expected: %b",
                         wr, expected[7]);
              if (ld_ir !== expected[6])
                $display("\tld_ir  = %b   expected: %b",
                         ld_ir, expected[6]);
              if (ld_acc !== expected[5])
                $display("\tld_acc = %b   expected: %b",
                         ld_acc, expected[5]);
              if (ld_pc !== expected[4])
                $display("\tld_pc  = %b   expected: %b",
                         ld_pc, expected[4]);
              if (inc_pc !== expected[3])
                $display("\tinc_pc   = %b   expected: %b",
                         inc_pc, expected[3]);
              if (halt !== expected[2])
                $display("\thalt     = %b   expected: %b",
                         halt, expected[2]);
	      if (data_e !== expected[1])
		$display("\tdata_e   = %b   expected: %b",
			 data_e, expected[1]);
	      if (sel !== expected[0])
                $display("\tsel      = %b   expected: %b",
                         data_e, expected[0]);
            end
        end
    end 

  always @(opcode)                     //get an ASCII mnemonic for each opcode
    begin
      case(opcode)
        3'h0    : mnemonic = "HLT";
        3'h1    : mnemonic = "SKZ";
        3'h2    : mnemonic = "ADD";
        3'h3    : mnemonic = "AND";
        3'h4    : mnemonic = "XOR";
        3'h5    : mnemonic = "LDA";
        3'h6    : mnemonic = "STO";
        3'h7    : mnemonic = "JMP";
        default : mnemonic = "???";
      endcase
    end


endmodule
