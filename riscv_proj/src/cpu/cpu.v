/******************************************************************************
 * CPU design 
 * module name:cpu.v
 * author: 
 * date: 
******************************************************************************/

`timescale 1ns / 1ns
module cpu(rst);
  input rst;

  wire [7:0] data, alu_out, accum;
  wire [4:0] pc_addr, ir_addr, addr;
  wire [2:0] opcode;

//Instantiate the main components in the design

  control      cntl (.rd(rd), .wr(wr), .ld_ir(ld_ir), .ld_acc(ld_acc), 
		     .ld_pc(ld_pc), .inc_pc(inc_pc), .halt(halt), 
		     .data_e(data_e), .sel(sel), .opcode(opcode), .zero(zero),
		     .clk(clock), .rst(rst));
  alu          alu1 (.alu_out(alu_out), .zero(zero), .opcode(opcode), 
		     .data(data), .accum(accum));
  register     acm  (.r(accum), .clk(clock), .data(alu_out), .ena(ld_acc), .rst(rst));
  register     ireg (.r({opcode, ir_addr}), .clk(clock), .data(data), 
		     .ena(ld_ir), .rst(rst));
  scale_mux #5 smx  (.out(addr), .a(ir_addr), .b(pc_addr), .sel(sel));
  mem          mem1 (.data(data), .addr(addr), .read(rd), .write(wr));
  counter      pc   (.cnt(pc_addr), .clk(inc_pc), .data(ir_addr), .rst(rst),
		     .load(ld_pc));
  clkgen       clk  (.clk(clock));

//Glue logic
  assign data = (data_e) ? alu_out: 8'bz;

endmodule
