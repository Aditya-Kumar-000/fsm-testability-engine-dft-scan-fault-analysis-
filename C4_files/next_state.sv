/////////////////////////////////////////////////////////////////////
// Design unit: next_state
//            :
// File name  : next_state.sv
//            :
// Description: Next state logic code for C4 Lab exercise
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
//            : Version 2.0 04/11/20 Use `define and `ifdef
//
/////////////////////////////////////////////////////////////////////

//////////////////////////////////////////////
/////////   CHANGES /////////////////////////
// section 2.3: changed undef to define on FA1





// macros are preprocessor directives handled before simulation/compilation
// FSM brain




// To insert a fault, change ONE of the following lines to `define`

`undef FSA0 // undefine a macro 
`define FSA1 // defined it for 2.3 b

// by default no fault is active

module next_state (output logic s_plus, t_plus, input logic s, s_bar, t, t_bar, a);

// s, t --> current state
// a --> input. s_plus, t_plus --> next state


logic a_bar, e, f, g, h; // internal signals

nand g0 (s_plus, e, f); // a nand gate with input from (outputs of nand g1 and nand g2) the output = s+

// S+ = NAND ( NAND (s_bar,t), NAND (s,a,t_bar)) or NAND G1, G2


nand g1 (e, s_bar, t); // nand gate with input s_bar and t and output e



// The operation of `ifdef means that if the preprocessor evaluates these before compilation/synthesis. If the macro named in 
// `ifdef is defined then the code b/w tht `ifdeff and the next preprocessing directive ins kept otherwise its skipped.


`ifdef FSA0 // include following block if MACRO is not defined ****
assign f = 1'b0; // if FSA0 is defined only then f --> 0  *** Basically stuck at 0 fault
`elsif FSA1 // else if for preprocessor
assign f = 1'b1;
`else
nand g2 (f, s, a, t_bar); // nand gate with input s,a,t and output f
`endif

nand g3 (t_plus, g, h); // T+ = NAND(g4), NAND(g5)
nand g4 (g, a, s_bar, t_bar);
nand g5 (h, a_bar, s_bar, t);
not g6 (a_bar, a);

endmodule