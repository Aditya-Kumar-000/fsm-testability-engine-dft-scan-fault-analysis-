/////////////////////////////////////////////////////////////////////
// Design unit: output_comb
//            :
// File name  : output_comb.sv
//            :
// Description: Output Register code for C4 Lab exercise
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
// Revision   : Version 1.0 28/10/25
//
/////////////////////////////////////////////////////////////////////

module output_comb (output logic k, l, input logic s, t, s_bar, t_bar, b);

logic b_bar, v, w;

nand g7 (v, s_bar, t);
nand g8 (w, t_bar, b);
nand g9 (k, v, w); // output k = NAND (g8),  NAND (g9)
not g10 (b_bar, b);
and g11 (l, b_bar, t); // output L = (NOT B and T)
    
endmodule