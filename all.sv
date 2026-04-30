
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


module c4 (output logic s, t, input logic n_clk, rst, a);

logic s_plus, t_plus, s_bar, t_bar, clk;

assign clk = ~n_clk;

next_state n0 (.*);
d_ff d0 (.q(s), .qbar(s_bar), .clk(clk), .rst(rst), .d(s_plus));
d_ff d1 (.q(t), .qbar(t_bar), .clk(clk), .rst(rst), .d(t_plus));
//output_reg o1 (.*);
//output_comb c1 (.*)

endmodule


/////////////////////////////////////////////////////////////////////
// Design unit: d_ff
//            :
// File name  : d_ff.sv
//            :
// Description: D Flip-flop code for C4 Lab exercise
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


module d_ff (output logic q, qbar, input logic clk, rst, d);

always_ff @(posedge clk, negedge rst)
  if (~rst)
    begin
    q <= 1'b0;
    qbar <= 1'b1;
    end
  else
    begin
    q <= d;
    qbar <= ~d;
    end

endmodule

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


// To insert a fault, change ONE of the following lines to `define`

`undef FSA0
`undef FSA1

module next_state (output logic s_plus, t_plus, input logic s, s_bar, t, t_bar, a);

logic a_bar, e, f, g, h;

nand g0 (s_plus, e, f);
nand g1 (e, s_bar, t);

`ifdef FSA0
assign f = 1'b0;
`elsif FSA1
assign f = 1'b1;
`else
nand g2 (f, s, a, t_bar);
`endif

nand g3 (t_plus, g, h);
nand g4 (g, a, s_bar, t_bar);
nand g5 (h, a_bar, s_bar, t);
not g6 (a_bar, a);

endmodule


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
nand g9 (k, v, w);
not g10 (b_bar, b);
and g11 (l, b_bar, t);
    
endmodule


/////////////////////////////////////////////////////////////////////
// Design unit: output_reg
//            :
// File name  : output_reg.sv
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
// Revision   : Version 1.0 28/08/17
//            : Version 2.0 04/11/20 
//
/////////////////////////////////////////////////////////////////////

module output_reg (output logic n, input logic clk, s, t, c);

always_ff @(posedge clk)
  if (s)
    n <= t & c;
    
endmodule


/////////////////////////////////////////////////////////////////////
// Design unit: scan_dff
//            :
// File name  : scan_dff.sv
//            :
// Description: Scan D Flip-flop code for C4 Lab exercise
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

module scan_dff (output logic q, qbar, input logic clk, rst, d, mode, scan_in);

always_ff @(posedge clk, negedge rst)
  if (~rst)
    begin
    q <= 1'b0;
    qbar <= 1'b1;
    end
  else if (mode)
    begin
    q <= scan_in;
    qbar <= ~scan_in;
    end
  else
    begin
    q <= d;
    qbar <= ~d;
    end
    
endmodule



/////////////////////////////////////////////////////////////////////
// Design unit: test_c4
//            :
// File name  : test_c4.sv
//            :
// Description: Testbench for for C4 Lab exercise
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


module test_c4;

timeunit 1ns;
timeprecision 100ps;

logic s, t;
logic n_clk, rst, a;

c4 c4 (.*);

initial 
  begin
  n_clk = 0;
  #20;
  forever #10 n_clk = ~n_clk;
  end
  
initial

  begin
  rst = 1;
  a = 0;
  #10 rst = 0;
  #10 rst = 1;
  #40 a = 1;
  #60 a = 0;
  #20 a = 1;
  #20 a = 0;
  #40 a = 1;
  #20 a = 0;
  #20 a = 1;
  #20 $finish;
  end

endmodule
  