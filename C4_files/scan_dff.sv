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

// Testable Flip-Flop (DFT): This file is for Design For Test
// 


module scan_dff (output logic q, qbar, input logic clk, rst, d, mode, scan_in); // scan in and mode added

always_ff @(posedge clk, negedge rst) // same ascyn reset
  if (~rst) // active low reset
    begin
    q <= 1'b0;
    qbar <= 1'b1;
    end
  else if (mode) // if mode is enabled 
    begin
    q <= scan_in; // take serial input, forms a shift register
    qbar <= ~scan_in;
    end
  else // works like normal flip-flop (just like d_ff.sv)
    begin
    q <= d;
    qbar <= ~d;
    end
    
endmodule