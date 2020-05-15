//////////////////////////////////////////////////////////////////////////////////
// Company: Nanjing University
// Engineer: Minaduki Shigure
// 
// Create Date: 2020/5/14 21:48:24
// Design Name: 
// Module Name: alu_tb
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

`timescale 1 ns / 1 ns

`timescale 1ns / 1ns
module alu_tb;
  wire [7:0] alu_out;
  reg  [7:0] data, accum;
  reg  [2:0] opcode;
  integer    i, err_cnt;

// Instantiate the ALU.  Named mapping allows the designer to have freedom
//    with the order of port declarations

  alu   alu1 (.alu_out(alu_out), .zero(zero),               //outputs from ALU
	      .opcode(opcode), .data(data), .accum(accum)); //inputs to ALU

  //define mnemonics to represent opcodes
  `define PASSA 3'b000, 3'b001, 3'b110, 3'b111
  `define ADD   3'b010
  `define AND   3'b011
  `define XOR   3'b100
  `define PASSD 3'b101

// Define a safe delay between each strobing of the ALU inputs/outputs
  `define strobe      20

  initial
    begin
      // SET UP THE OUTPUT FORMAT FOR THE TEXT DISPLAY
      $display("\t\t\t            INPUTS                       OUTPUTS \n");
      $display("\t\t\t  OPCODE   DATA IN    ACCUM IN  |  ALU OUT   ZERO BIT");
      $display("\t\t\t  ------   --------   --------  |  --------  --------");
      $timeformat(-9, 1, " ns", 9); //Display time in nanoseconds
      err_cnt = 0;
      // APPLY STIMULUS TO THE INPUT PINS
      accum = 8'hDA;                //Initialize inputs to the ALU
      data = 8'h37;
      for (i = 0; i <= 7; i = i+1)  //VERIFY OPERATION FOR ALL 8 OPCODES
        begin
          //change inputs at strobe point
          #`strobe opcode = i;
          //Wait for ALU to process inputs
          #(`strobe/4)   check_outputs; //call a task to verify outputs
        end

      //VERIFY OPERATION WITH UNKNOWN OPCODE
      #(3*`strobe/4) opcode = 3'b00x;
      #(`strobe/4)   check_outputs;

      //VERIFY OPERATION OF ZERO BIT
      #(3*`strobe/4) accum = 8'h00; opcode = `ADD;
      #(`strobe/4)   check_outputs;

      //WAIT 1 MORE STROBE AND THEN FINISH
      #`strobe 
      if (err_cnt) $display("\nThere were %d errors in all.\n", err_cnt);
      else $display("\nNo errors were found!\n");
      #100 $finish;
    end

/**********************************************************************
 * SUBROUTINES TO COMPARE THE ALU OUTPUTS TO EXPECTED RESULTS
 *********************************************************************/
  task check_outputs;
    casez (opcode)
       `PASSA  : begin
                  $display("PASS ACCUM OPERATION:",
                           "      %b     %b   %b  |  %b      %b",
                           opcode, data, accum, alu_out, zero);
                  if ((alu_out !== accum) || (zero !== !accum)) error;
                 end
       `ADD    : begin
                   $display("ADD OPERATION       :",
                            "      %b     %b   %b  |  %b      %b",
                            opcode, data, accum, alu_out, zero);
                   if ((alu_out !== (accum + data)) || (zero !== !accum)) error;
                 end
       `AND    : begin
                   $display("AND OPERATION       :",
                            "      %b     %b   %b  |  %b      %b",
                            opcode, data, accum, alu_out, zero);
                   if ((alu_out !== (accum & data)) || (zero !== !accum)) error;
                 end
        `XOR   : begin
                   $display("XOR OPERATION       :",
                           "      %b     %b   %b  |  %b      %b",
                           opcode, data, accum, alu_out, zero);
                   if ((alu_out !== (accum ^ data)) || (zero !== !accum)) error;
                 end
       `PASSD  : begin
                   $display("PASS DATA OPERATION :",
                            "      %b     %b   %b  |  %b      %b",
                            opcode, data, accum, alu_out, zero);
                   if ((alu_out !== data) || (zero !== !accum)) error;
                 end
       default : begin
                   $display("UNKNOWN OPERATION   :",
                            "      %b     %b   %b  |  %b      %b",
                            opcode, data, accum, alu_out, zero);
                   if ((alu_out !== 8'bx) || (zero !== !accum)) error;
                 end
    endcase
  endtask

  task error;
    begin
      $display("\t\t\t ERROR AT %t,  EXPECTED  :  %b      %b\n",
               $realtime, 8'bx, !accum);
      err_cnt = err_cnt + 1;
    end
  endtask

endmodule