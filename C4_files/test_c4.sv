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


//////////////////////////////////////////////
/////////   CHANGES /////////////////////////
// section 2.3 

/*


module test_c4;

timeunit 1ns;
timeprecision 100ps;
 // logic s, t; // commented this for section 2.3
logic k,l, n; // added this for section 2.3 ////// for sectio 2.4 added c and n

logic n_clk, rst, a,b,c;

c4 c4 (.*);

initial 
  begin
  n_clk = 0;
  #20;
  forever #10 n_clk = ~n_clk; // the internal clock is inverted to suit FPGA
  end
  
initial
begin
  rst = 1;
  a = 0;
  b = 0;
  c = 1;

  #10 rst = 0;
  #10 rst = 1;

  #20 a = 0; b = 0;
  #20 a = 1; b = 0;
  #20 a = 1; b = 1;
  #20 a = 1; b = 0;
  #20 a = 0; b = 1;
  #20 a = 1; b = 1;
  #20 a = 0; b = 0;
  #20 a = 1; b = 1;
  #20 a = 1; b = 0;
  #20 a = 0; b = 1;
  #20 a = 0; b = 0;

  #20 $finish;
end

endmodule


*/


//////////////// above from 2.1 - 2.4 ////////////////



/////////////// below 2.5 only /////////////////////////



module test_c4;

timeunit 1ns;
timeprecision 100ps;

logic k, l, n, sdo; 
logic n_clk, rst, a, b, c, m, sdi;

c4 c4 (.*);

// Generate the clock (Falling edge triggers at 30, 50, 70, 90...)
initial begin
  n_clk = 0;
  #20;
  forever #10 n_clk = ~n_clk; 
end
  
initial begin
  // 0. Initialize Everything
  rst = 1; a = 0; b = 0; c = 0; m = 0; sdi = 0;
  #10 rst = 0;
  #10 rst = 1; 

  // ==========================================
  // TEST 1: Targeting FSA1 (Stuck-at-1)
  // We want to force f=0. We need S=1, T=0, A=1
  // ==========================================
  
  // STEP 1: SHIFT IN (Load S=1, T=0, N=0)
  m = 1;       // Enable Scan Mode
  #20 sdi = 0; // t=40: Setup for clock at 50ns. This '0' will end up in N.
  #20 sdi = 0; // t=60: Setup for clock at 70ns. This '0' will end up in T.
  #20 sdi = 1; // t=80: Setup for clock at 90ns. This '1' will end up in S.
  
  // STEP 2: CAPTURE
  #20          // t=100: The flip-flops now hold S=1, T=0, N=0.
  m = 0;       // Disable Scan Mode (Back to normal FSM operation)
  a = 1;       // Apply our FSA1 test vector
               // The clock edge at 110ns captures the combinational logic's response!
  
  // STEP 3: SHIFT OUT (Observe SDO)
  #20          // t=120: We have captured the result.
  m = 1;       // Enable Scan Mode to read the data
  sdi = 0;     // Feed zeros behind our data to flush the chain
  
  #60;         // Wait 3 clock cycles (130ns, 150ns, 170ns) for all 3 bits to exit via SDO.


  // ==========================================
  // TEST 2: Targeting FSA0 (Stuck-at-0)
  // We want to force f=1. We need S=1, T=0, A=0
  // ==========================================
  
  // STEP 1: SHIFT IN (Load S=1, T=0, N=0)
  #20 sdi = 0; // t=200
  #20 sdi = 0; // t=220
  #20 sdi = 1; // t=240
  
  // STEP 2: CAPTURE
  #20          // t=260
  m = 0;       // Normal mode
  a = 0;       // Apply our FSA0 test vector
               // Clock edge at 270ns captures the response.
  
  // STEP 3: SHIFT OUT (Observe SDO)
  #20          // t=280
  m = 1;       // Scan mode
  sdi = 0;     // Flush the chain
  
  #80 $finish;
end

endmodule