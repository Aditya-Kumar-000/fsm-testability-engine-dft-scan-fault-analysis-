/////////////////////////////////////////////////////////////////////
// Design unit: c4
//            :
// File name  : c4.sv
//            :
// Description: Top level code for C4 Lab exercise
//            :
// Limitations: None
//            : 
// System     : SystemVerilog IEEE 1800-2005
//            :
// Author     : Mark Zwolinski
//            : School of Electronics and Computer Science
//            : University of Southampton
//            : Southampton SO17 1BJ, UK
//            : mz@ecs.soton.ac.uk
//
// Revision   : Version 1.0 28/08/17
//            : Version 2.0 04/11/20 
//
/////////////////////////////////////////////////////////////////////


module c4 (output logic k, l, input logic n_clk, rst, a);

logic s_plus, t_plus, s_bar, t_bar, clk,s,t;

assign clk = ~n_clk; // clock inversion

next_state n0 (.*); // instanties everything from next_state.sv
d_ff d0 (.q(s), .qbar(s_bar), .clk(clk), .rst(rst), .d(s_plus)); // stores the states S and T 
d_ff d1 (.q(t), .qbar(t_bar), .clk(clk), .rst(rst), .d(t_plus));
//output_reg o1 (.*);
output_comb c1 (.*)




// Data flow:     (S, T) → next_state → (S+, T+) → flip-flops → (S, T)

endmodule

