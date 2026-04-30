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




//////////////////////////////////////////////
/////////   CHANGES /////////////////////////
// section 2.3: uncommented line and also added input logic
// Section 2.4: Added n and c to port list and removed comments from reg o1

/*
// module c4 (output logic k, l, input logic n_clk, rst, a,b); // added b for section 2.3

module c4 (output logic k, l, n, sdo, input logic n_clk, rst, a, b, c, m, sdi); // Section 2.4: Added n and c
// added sdo and m, sdi for 2.5

logic s, t, s_plus, t_plus, s_bar, t_bar, clk, n_plus;

assign clk = ~n_clk; // clock inversion

next_state n0 (.*); // instanties everything from next_state.sv
d_ff d0 (.q(s), .qbar(s_bar), .clk(clk), .rst(rst), .d(s_plus)); // stores the states S and T 
d_ff d1 (.q(t), .qbar(t_bar), .clk(clk), .rst(rst), .d(t_plus));
output_reg o1 (.*); // uncommented this for section 2.4
output_comb c1 (.*); // uncommented this for section 2.3




// Data flow:     (S, T) → next_state → (S+, T+) → flip-flops → (S, T)

endmodule

*/

//////////// THE ABOVE SECTION FOR UPTO 2.4 WITH SOME CHANGE ///////////////////////////

//////////// THE SECTION BELOW IS FOR 2.5 ONLY /////////////////////////////////////////



module c4 (output logic k, l, n, sdo, input logic n_clk, rst, a, b, c, m, sdi);

logic s, t, s_plus, t_plus, s_bar, t_bar, clk, n_plus;

assign clk = ~n_clk;

// Standard FSM logic
next_state n0 (.*);
output_comb c1 (.*);

// The combinational logic for N's next state (handling the 'enable' behaviour)
assign n_plus = s ? (t & c) : n;

// The Scan Chain: SDI -> S -> T -> N -> SDO
scan_dff ff_s (.q(s), .qbar(s_bar), .clk(clk), .rst(rst), .d(s_plus), .mode(m), .scan_in(sdi));
scan_dff ff_t (.q(t), .qbar(t_bar), .clk(clk), .rst(rst), .d(t_plus), .mode(m), .scan_in(s));
scan_dff ff_n (.q(n), .qbar(),      .clk(clk), .rst(rst), .d(n_plus), .mode(m), .scan_in(t));

assign sdo = n;

endmodule