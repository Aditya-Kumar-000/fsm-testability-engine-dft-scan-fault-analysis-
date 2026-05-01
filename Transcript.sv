# Reading pref.tcl
# //  ModelSim SE-64 2020.1 Jan 28 2020
# //
# //  Copyright 1991-2020 Mentor Graphics Corporation
# //  All Rights Reserved.
# //
# //  ModelSim SE-64 and its associated documentation contain trade
# //  secrets and commercial or financial information that are the property of
# //  Mentor Graphics Corporation and are privileged, confidential,
# //  and exempt from disclosure under the Freedom of Information Act,
# //  5 U.S.C. Section 552. Furthermore, this information
# //  is prohibited from disclosure under the Trade Secrets Act,
# //  18 U.S.C. Section 1905.
# //
# Loading project Theta_3_simulation
# Compile of c4.sv was successful.
# Compile of d_ff.sv failed with 3 errors.
# Compile of next_state.sv was successful.
# Compile of output_comb.sv was successful.
# Compile of output_reg.sv was successful.
# Compile of scan_dff.sv was successful.
# Compile of test_c4.sv was successful.
# 7 compiles, 1 failed with 3 errors.
# Compile of c4.sv was successful.
# Compile of d_ff.sv failed with 3 errors.
# Compile of next_state.sv was successful.
# Compile of output_comb.sv was successful.
# Compile of output_reg.sv was successful.
# Compile of scan_dff.sv was successful.
# Compile of test_c4.sv was successful.
# 7 compiles, 1 failed with 3 errors.
# Compile of c4.sv was successful.
# Compile of d_ff.sv was successful.
# Compile of next_state.sv was successful.
# Compile of output_comb.sv was successful.
# Compile of output_reg.sv was successful.
# Compile of scan_dff.sv was successful.
# Compile of test_c4.sv was successful.
# 7 compiles, 0 failed with no errors.
vsim -voptargs=+acc work.test_c4
# vsim -voptargs="+acc" work.test_c4 
# Start time: 21:00:35 on Apr 30,2026
# ** Note: (vsim-3812) Design is being optimized...
# Loading sv_std.std
# Loading work.test_c4(fast)
# Loading work.c4(fast)
# Loading work.next_state(fast)
# Loading work.d_ff(fast)
run -all
# ** Note: $finish    : H:/fsm-testability-engine-dft-scan-fault-analysis--main/C4_files/test_c4.sv(59)
#    Time: 260 ns  Iteration: 0  Instance: /test_c4
# 1
# Break in Module test_c4 at H:/fsm-testability-engine-dft-scan-fault-analysis--main/C4_files/test_c4.sv line 59
add wave -position end  sim:/test_c4/n_clk
add wave -position end  sim:/test_c4/rst
add wave -position end  sim:/test_c4/a
add wave -position end  sim:/test_c4/s
add wave -position end  sim:/test_c4/t
run -all
# Break key hit
# Break in Module test_c4 at H:/fsm-testability-engine-dft-scan-fault-analysis--main/C4_files/test_c4.sv line 38
run -continue
# Break key hit
# Break in Module test_c4 at H:/fsm-testability-engine-dft-scan-fault-analysis--main/C4_files/test_c4.sv line 38
restart
# ** Note: (vsim-12125) Error and warning message counts have been reset to '0' because of 'restart'.
# ** Note: (vsim-8009) Loading existing optimized design _opt
# Loading work.test_c4(fast)
# Loading work.c4(fast)
# Loading work.next_state(fast)
# Loading work.d_ff(fast)
run
# ** Note: $finish    : H:/fsm-testability-engine-dft-scan-fault-analysis--main/C4_files/test_c4.sv(59)
#    Time: 260 ns  Iteration: 0  Instance: /test_c4
# 1
# Break in Module test_c4 at H:/fsm-testability-engine-dft-scan-fault-analysis--main/C4_files/test_c4.sv line 59
quit -sim
# End time: 22:22:07 on Apr 30,2026, Elapsed time: 1:21:32
# Errors: 0, Warnings: 1
# Compile of c4.sv failed with 1 errors.
# Compile of d_ff.sv was successful.
# Compile of next_state.sv was successful.
# Compile of output_comb.sv was successful.
# Compile of output_reg.sv was successful.
# Compile of scan_dff.sv was successful.
# Compile of test_c4.sv failed with 5 errors.
# 7 compiles, 2 failed with 6 errors.
# Compile of c4.sv failed with 1 errors.
# Compile of d_ff.sv was successful.
# Compile of next_state.sv was successful.
# Compile of output_comb.sv was successful.
# Compile of output_reg.sv was successful.
# Compile of scan_dff.sv was successful.
# Compile of test_c4.sv was successful.
# 7 compiles, 1 failed with 1 error.
# Compile of c4.sv failed with 1 errors.
# Compile of d_ff.sv was successful.
# Compile of next_state.sv was successful.
# Compile of output_comb.sv was successful.
# Compile of output_reg.sv was successful.
# Compile of scan_dff.sv was successful.
# Compile of test_c4.sv was successful.
# 7 compiles, 1 failed with 1 error.
# ** Error: 捁散獳椠⁳敤楮摥മ
# $
#        Unable to replace existing ini file (H:/fsm-testability-engine-dft-scan-fault-analysis--main/Theta_3_simulation.mpf).  File can not be renamed.
# Compile of c4.sv failed with 1 errors.
# Compile of d_ff.sv was successful.
# Compile of next_state.sv was successful.
# Compile of output_comb.sv was successful.
# Compile of output_reg.sv was successful.
# Compile of scan_dff.sv was successful.
# Compile of test_c4.sv was successful.
# 7 compiles, 1 failed with 1 error.
# Compile of c4.sv was successful.
# Compile of d_ff.sv was successful.
# Compile of next_state.sv was successful.
# Compile of output_comb.sv was successful.
# Compile of output_reg.sv was successful.
# Compile of scan_dff.sv was successful.
# Compile of test_c4.sv was successful.
# 7 compiles, 0 failed with no errors.
vlog -work H:/fsm-testability-engine-dft-scan-fault-analysis--main/work -refresh -force_refresh
# Model Technology ModelSim SE-64 vlog 2020.1 Compiler 2020.01 Jan 28 2020
# Start time: 22:33:08 on Apr 30,2026
# vlog -reportprogress 300 -work H:/fsm-testability-engine-dft-scan-fault-analysis--main/work -refresh -force_refresh 
# -- Refreshing module c4
# -- Refreshing module d_ff
# -- Refreshing module next_state
# -- Refreshing module output_comb
# -- Refreshing module output_reg
# -- Refreshing module scan_dff
# -- Refreshing module test_c4
# End time: 22:33:09 on Apr 30,2026, Elapsed time: 0:00:01
# Errors: 0, Warnings: 0
vcom -work H:/fsm-testability-engine-dft-scan-fault-analysis--main/work -refresh -force_refresh
# Model Technology ModelSim SE-64 vcom 2020.1 Compiler 2020.01 Jan 28 2020
# Start time: 22:33:09 on Apr 30,2026
# vcom -reportprogress 300 -work H:/fsm-testability-engine-dft-scan-fault-analysis--main/work -refresh -force_refresh 
# -- Skipping module c4
# -- Skipping module d_ff
# -- Skipping module next_state
# -- Skipping module output_comb
# -- Skipping module output_reg
# -- Skipping module scan_dff
# -- Skipping module test_c4
# End time: 22:33:10 on Apr 30,2026, Elapsed time: 0:00:01
# Errors: 0, Warnings: 0
vsim -voptargs=+acc work.test_c4
# vsim -voptargs="+acc" work.test_c4 
# Start time: 22:33:12 on Apr 30,2026
# ** Note: (vsim-3813) Design is being optimized due to module recompilation...
# ** Error (suppressible): H:/fsm-testability-engine-dft-scan-fault-analysis--main/C4_files/c4.sv(34): (vopt-2247) The implicit port connection (.*) did not find a matching port, net, variable or interface instance for port 'b'.
# Optimization failed
# ** Warning: (vopt-31) Unable to unlink file "H:/fsm-testability-engine-dft-scan-fault-analysis--main/work/@_opt/_lib3_0.qpg".
# ** Warning: (vopt-31) Unable to unlink file "H:/fsm-testability-engine-dft-scan-fault-analysis--main/work/@_opt/_lib3_0.qtl".
# The process cannot access the file because it is being used by another process. (GetLastError() = 32)
# ** Warning: (vopt-133) Unable to remove directory "H:/fsm-testability-engine-dft-scan-fault-analysis--main/work/@_opt".
# ** Note: (vsim-12126) Error and warning message counts have been restored: Errors=1, Warnings=3.
# Error loading design
# End time: 22:33:14 on Apr 30,2026, Elapsed time: 0:00:02
# Errors: 2, Warnings: 9
# Break key hit
# Compile of c4.sv was successful.
# Compile of d_ff.sv was successful.
# Compile of next_state.sv was successful.
# Compile of output_comb.sv was successful.
# Compile of output_reg.sv was successful.
# Compile of scan_dff.sv was successful.
# Compile of test_c4.sv was successful.
# 7 compiles, 0 failed with no errors.
vlog -work H:/fsm-testability-engine-dft-scan-fault-analysis--main/work -refresh -force_refresh
# Model Technology ModelSim SE-64 vlog 2020.1 Compiler 2020.01 Jan 28 2020
# Start time: 22:35:08 on Apr 30,2026
# vlog -reportprogress 300 -work H:/fsm-testability-engine-dft-scan-fault-analysis--main/work -refresh -force_refresh 
# -- Refreshing module c4
# -- Refreshing module d_ff
# -- Refreshing module next_state
# -- Refreshing module output_comb
# -- Refreshing module output_reg
# -- Refreshing module scan_dff
# -- Refreshing module test_c4
# End time: 22:35:08 on Apr 30,2026, Elapsed time: 0:00:00
# Errors: 0, Warnings: 0
vcom -work H:/fsm-testability-engine-dft-scan-fault-analysis--main/work -refresh -force_refresh
# Model Technology ModelSim SE-64 vcom 2020.1 Compiler 2020.01 Jan 28 2020
# Start time: 22:35:08 on Apr 30,2026
# vcom -reportprogress 300 -work H:/fsm-testability-engine-dft-scan-fault-analysis--main/work -refresh -force_refresh 
# -- Skipping module c4
# -- Skipping module d_ff
# -- Skipping module next_state
# -- Skipping module output_comb
# -- Skipping module output_reg
# -- Skipping module scan_dff
# -- Skipping module test_c4
# End time: 22:35:09 on Apr 30,2026, Elapsed time: 0:00:01
# Errors: 0, Warnings: 0
vsim -voptargs=+acc work.test_c4
# vsim -voptargs="+acc" work.test_c4 
# Start time: 22:35:10 on Apr 30,2026
# ** Note: (vsim-3812) Design is being optimized...
# Loading sv_std.std
# Loading work.test_c4(fast)
# Loading work.c4(fast)
# Loading work.next_state(fast)
# Loading work.d_ff(fast)
# Loading work.output_comb(fast)
add wave -position end  sim:/test_c4/n_clk
add wave -position end  sim:/test_c4/rst
add wave -position end  sim:/test_c4/a
add wave -position end  sim:/test_c4/b
add wave -position end  sim:/test_c4/k
add wave -position end  sim:/test_c4/l
run
# ** Note: $finish    : H:/fsm-testability-engine-dft-scan-fault-analysis--main/C4_files/test_c4.sv(62)
#    Time: 260 ns  Iteration: 0  Instance: /test_c4
# 1
# Break in Module test_c4 at H:/fsm-testability-engine-dft-scan-fault-analysis--main/C4_files/test_c4.sv line 62
quit -sim
# End time: 23:03:49 on Apr 30,2026, Elapsed time: 0:28:39
# Errors: 0, Warnings: 2
# Compile of c4.sv was successful.
# Compile of d_ff.sv was successful.
# Compile of next_state.sv was successful.
# Compile of output_comb.sv was successful.
# Compile of output_reg.sv was successful.
# Compile of scan_dff.sv was successful.
# Compile of test_c4.sv was successful.
# 7 compiles, 0 failed with no errors.
vlog -work H:/fsm-testability-engine-dft-scan-fault-analysis--main/work -refresh -force_refresh
# Model Technology ModelSim SE-64 vlog 2020.1 Compiler 2020.01 Jan 28 2020
# Start time: 23:04:47 on Apr 30,2026
# vlog -reportprogress 300 -work H:/fsm-testability-engine-dft-scan-fault-analysis--main/work -refresh -force_refresh 
# -- Refreshing module c4
# -- Refreshing module d_ff
# -- Refreshing module next_state
# -- Refreshing module output_comb
# -- Refreshing module output_reg
# -- Refreshing module scan_dff
# -- Refreshing module test_c4
# End time: 23:04:48 on Apr 30,2026, Elapsed time: 0:00:01
# Errors: 0, Warnings: 0
vcom -work H:/fsm-testability-engine-dft-scan-fault-analysis--main/work -refresh -force_refresh
# Model Technology ModelSim SE-64 vcom 2020.1 Compiler 2020.01 Jan 28 2020
# Start time: 23:04:48 on Apr 30,2026
# vcom -reportprogress 300 -work H:/fsm-testability-engine-dft-scan-fault-analysis--main/work -refresh -force_refresh 
# -- Skipping module c4
# -- Skipping module d_ff
# -- Skipping module next_state
# -- Skipping module output_comb
# -- Skipping module output_reg
# -- Skipping module scan_dff
# -- Skipping module test_c4
# End time: 23:04:48 on Apr 30,2026, Elapsed time: 0:00:00
# Errors: 0, Warnings: 0
vsim -voptargs=+acc work.test_c4
# vsim -voptargs="+acc" work.test_c4 
# Start time: 23:04:53 on Apr 30,2026
# ** Note: (vsim-3813) Design is being optimized due to module recompilation...
# Loading sv_std.std
# Loading work.test_c4(fast)
# Loading work.c4(fast)
# Loading work.next_state(fast)
# Loading work.d_ff(fast)
# Loading work.output_reg(fast)
# Loading work.output_comb(fast)
quit -sim
# End time: 23:05:56 on Apr 30,2026, Elapsed time: 0:01:03
# Errors: 0, Warnings: 2
# Break key hit
# Compile of c4.sv was successful.
# Compile of d_ff.sv was successful.
# Compile of next_state.sv was successful.
# Compile of output_comb.sv was successful.
# Compile of output_reg.sv was successful.
# Compile of scan_dff.sv was successful.
# Compile of test_c4.sv was successful.
# 7 compiles, 0 failed with no errors.
vlog -work H:/fsm-testability-engine-dft-scan-fault-analysis--main/work -refresh -force_refresh
# Model Technology ModelSim SE-64 vlog 2020.1 Compiler 2020.01 Jan 28 2020
# Start time: 23:07:20 on Apr 30,2026
# vlog -reportprogress 300 -work H:/fsm-testability-engine-dft-scan-fault-analysis--main/work -refresh -force_refresh 
# -- Refreshing module c4
# -- Refreshing module d_ff
# -- Refreshing module next_state
# -- Refreshing module output_comb
# -- Refreshing module output_reg
# -- Refreshing module scan_dff
# -- Refreshing module test_c4
# End time: 23:07:21 on Apr 30,2026, Elapsed time: 0:00:01
# Errors: 0, Warnings: 0
vcom -work H:/fsm-testability-engine-dft-scan-fault-analysis--main/work -refresh -force_refresh
# Model Technology ModelSim SE-64 vcom 2020.1 Compiler 2020.01 Jan 28 2020
# Start time: 23:07:21 on Apr 30,2026
# vcom -reportprogress 300 -work H:/fsm-testability-engine-dft-scan-fault-analysis--main/work -refresh -force_refresh 
# -- Skipping module c4
# -- Skipping module d_ff
# -- Skipping module next_state
# -- Skipping module output_comb
# -- Skipping module output_reg
# -- Skipping module scan_dff
# -- Skipping module test_c4
# End time: 23:07:22 on Apr 30,2026, Elapsed time: 0:00:01
# Errors: 0, Warnings: 0
vsim -voptargs=+acc work.test_c4
# vsim -voptargs="+acc" work.test_c4 
# Start time: 23:07:24 on Apr 30,2026
# ** Note: (vsim-3813) Design is being optimized due to module recompilation...
# Loading sv_std.std
# Loading work.test_c4(fast)
# Loading work.c4(fast)
# Loading work.next_state(fast)
# Loading work.d_ff(fast)
# Loading work.output_reg(fast)
# Loading work.output_comb(fast)
# Break key hit
quit -sim
# End time: 23:08:10 on Apr 30,2026, Elapsed time: 0:00:46
# Errors: 0, Warnings: 2
vlog -work H:/fsm-testability-engine-dft-scan-fault-analysis--main/work -refresh -force_refresh
# Model Technology ModelSim SE-64 vlog 2020.1 Compiler 2020.01 Jan 28 2020
# Start time: 23:11:43 on Apr 30,2026
# vlog -reportprogress 300 -work H:/fsm-testability-engine-dft-scan-fault-analysis--main/work -refresh -force_refresh 
# -- Refreshing module c4
# -- Refreshing module d_ff
# -- Refreshing module next_state
# -- Refreshing module output_comb
# -- Refreshing module output_reg
# -- Refreshing module scan_dff
# -- Refreshing module test_c4
# End time: 23:11:44 on Apr 30,2026, Elapsed time: 0:00:01
# Errors: 0, Warnings: 0
vcom -work H:/fsm-testability-engine-dft-scan-fault-analysis--main/work -refresh -force_refresh
# Model Technology ModelSim SE-64 vcom 2020.1 Compiler 2020.01 Jan 28 2020
# Start time: 23:11:44 on Apr 30,2026
# vcom -reportprogress 300 -work H:/fsm-testability-engine-dft-scan-fault-analysis--main/work -refresh -force_refresh 
# -- Skipping module c4
# -- Skipping module d_ff
# -- Skipping module next_state
# -- Skipping module output_comb
# -- Skipping module output_reg
# -- Skipping module scan_dff
# -- Skipping module test_c4
# End time: 23:11:45 on Apr 30,2026, Elapsed time: 0:00:01
# Errors: 0, Warnings: 0
vsim -voptargs=+acc work.test_c4
# vsim -voptargs="+acc" work.test_c4 
# Start time: 23:11:50 on Apr 30,2026
# ** Note: (vsim-8009) Loading existing optimized design _opt
# Loading sv_std.std
# Loading work.test_c4(fast)
# Loading work.c4(fast)
# Loading work.next_state(fast)
# Loading work.d_ff(fast)
# Loading work.output_reg(fast)
# Loading work.output_comb(fast)
add wave -position end  sim:/test_c4/n_clk
add wave -position end  sim:/test_c4/rst
add wave -position end  sim:/test_c4/a
add wave -position end  sim:/test_c4/b
add wave -position end  sim:/test_c4/c
run
# ** Note: $finish    : H:/fsm-testability-engine-dft-scan-fault-analysis--main/C4_files/test_c4.sv(71)
#    Time: 260 ns  Iteration: 0  Instance: /test_c4
# 1
# Break in Module test_c4 at H:/fsm-testability-engine-dft-scan-fault-analysis--main/C4_files/test_c4.sv line 71
quit -sim
# Break key hit
# End time: 00:02:52 on May 01,2026, Elapsed time: 0:51:02
# Errors: 0, Warnings: 1
# Compile of c4.sv was successful.
# Compile of d_ff.sv was successful.
# Compile of next_state.sv was successful.
# Compile of output_comb.sv was successful.
# Compile of output_reg.sv was successful.
# Compile of scan_dff.sv was successful.
# Compile of test_c4.sv was successful.
# 7 compiles, 0 failed with no errors.
vlog -work H:/fsm-testability-engine-dft-scan-fault-analysis--main/work -refresh -force_refresh
# Model Technology ModelSim SE-64 vlog 2020.1 Compiler 2020.01 Jan 28 2020
# Start time: 00:10:28 on May 01,2026
# vlog -reportprogress 300 -work H:/fsm-testability-engine-dft-scan-fault-analysis--main/work -refresh -force_refresh 
# -- Refreshing module c4
# -- Refreshing module d_ff
# -- Refreshing module next_state
# -- Refreshing module output_comb
# -- Refreshing module output_reg
# -- Refreshing module scan_dff
# -- Refreshing module test_c4
# End time: 00:10:29 on May 01,2026, Elapsed time: 0:00:01
# Errors: 0, Warnings: 0
vcom -work H:/fsm-testability-engine-dft-scan-fault-analysis--main/work -refresh -force_refresh
# Model Technology ModelSim SE-64 vcom 2020.1 Compiler 2020.01 Jan 28 2020
# Start time: 00:10:29 on May 01,2026
# vcom -reportprogress 300 -work H:/fsm-testability-engine-dft-scan-fault-analysis--main/work -refresh -force_refresh 
# -- Skipping module c4
# -- Skipping module d_ff
# -- Skipping module next_state
# -- Skipping module output_comb
# -- Skipping module output_reg
# -- Skipping module scan_dff
# -- Skipping module test_c4
# End time: 00:10:30 on May 01,2026, Elapsed time: 0:00:01
# Errors: 0, Warnings: 0
vsim -voptargs=+acc work.test_c4
# vsim -voptargs="+acc" work.test_c4 
# Start time: 00:10:33 on May 01,2026
# ** Note: (vsim-3813) Design is being optimized due to module recompilation...
# Loading sv_std.std
# Loading work.test_c4(fast)
# Loading work.c4(fast)
# Loading work.next_state(fast)
# Loading work.output_comb(fast)
# Loading work.scan_dff(fast)
add wave -position end  sim:/test_c4/k
add wave -position end  sim:/test_c4/l
add wave -position end  sim:/test_c4/n
add wave -position end  sim:/test_c4/sdo
add wave -position end  sim:/test_c4/n_clk
add wave -position end  sim:/test_c4/rst
add wave -position end  sim:/test_c4/a
add wave -position end  sim:/test_c4/b
add wave -position end  sim:/test_c4/c
add wave -position end  sim:/test_c4/m
add wave -position end  sim:/test_c4/sdi
run
quit -sim
# Break key hit
# End time: 00:17:03 on May 01,2026, Elapsed time: 0:06:30
# Errors: 0, Warnings: 2
# Compile of c4.sv was successful.
# Compile of d_ff.sv was successful.
# Compile of next_state.sv was successful.
# Compile of output_comb.sv was successful.
# Compile of output_reg.sv was successful.
# Compile of scan_dff.sv was successful.
# Compile of test_c4.sv was successful.
# 7 compiles, 0 failed with no errors.
vlog -work H:/fsm-testability-engine-dft-scan-fault-analysis--main/work -refresh -force_refresh
# Model Technology ModelSim SE-64 vlog 2020.1 Compiler 2020.01 Jan 28 2020
# Start time: 00:17:29 on May 01,2026
# vlog -reportprogress 300 -work H:/fsm-testability-engine-dft-scan-fault-analysis--main/work -refresh -force_refresh 
# -- Refreshing module c4
# -- Refreshing module d_ff
# -- Refreshing module next_state
# -- Refreshing module output_comb
# -- Refreshing module output_reg
# -- Refreshing module scan_dff
# -- Refreshing module test_c4
# End time: 00:17:30 on May 01,2026, Elapsed time: 0:00:01
# Errors: 0, Warnings: 0
vcom -work H:/fsm-testability-engine-dft-scan-fault-analysis--main/work -refresh -force_refresh
# Model Technology ModelSim SE-64 vcom 2020.1 Compiler 2020.01 Jan 28 2020
# Start time: 00:17:30 on May 01,2026
# vcom -reportprogress 300 -work H:/fsm-testability-engine-dft-scan-fault-analysis--main/work -refresh -force_refresh 
# -- Skipping module c4
# -- Skipping module d_ff
# -- Skipping module next_state
# -- Skipping module output_comb
# -- Skipping module output_reg
# -- Skipping module scan_dff
# -- Skipping module test_c4
# End time: 00:17:31 on May 01,2026, Elapsed time: 0:00:01
# Errors: 0, Warnings: 0
vsim -voptargs=+acc work.test_c4
# vsim -voptargs="+acc" work.test_c4 
# Start time: 00:17:31 on May 01,2026
# ** Note: (vsim-3813) Design is being optimized due to module recompilation...
# Loading sv_std.std
# Loading work.test_c4(fast)
# Loading work.c4(fast)
# Loading work.next_state(fast)
# Loading work.output_comb(fast)
# Loading work.scan_dff(fast)
add wave -position end  sim:/test_c4/k
add wave -position end  sim:/test_c4/l
add wave -position end  sim:/test_c4/n
add wave -position end  sim:/test_c4/sdo
add wave -position end  sim:/test_c4/n_clk
add wave -position end  sim:/test_c4/rst
add wave -position end  sim:/test_c4/a
add wave -position end  sim:/test_c4/b
add wave -position end  sim:/test_c4/c
add wave -position end  sim:/test_c4/m
add wave -position end  sim:/test_c4/sdi
run
quit -sim
# Break key hit
# End time: 00:18:11 on May 01,2026, Elapsed time: 0:00:40
# Errors: 0, Warnings: 2
# Compile of c4.sv was successful.
# Compile of d_ff.sv was successful.
# Compile of next_state.sv was successful.
# Compile of output_comb.sv was successful.
# Compile of output_reg.sv was successful.
# Compile of scan_dff.sv was successful.
# Compile of test_c4.sv was successful.
# 7 compiles, 0 failed with no errors.
vlog -work H:/fsm-testability-engine-dft-scan-fault-analysis--main/work -refresh -force_refresh
# Model Technology ModelSim SE-64 vlog 2020.1 Compiler 2020.01 Jan 28 2020
# Start time: 00:18:57 on May 01,2026
# vlog -reportprogress 300 -work H:/fsm-testability-engine-dft-scan-fault-analysis--main/work -refresh -force_refresh 
# -- Refreshing module c4
# -- Refreshing module d_ff
# -- Refreshing module next_state
# -- Refreshing module output_comb
# -- Refreshing module output_reg
# -- Refreshing module scan_dff
# -- Refreshing module test_c4
# End time: 00:18:58 on May 01,2026, Elapsed time: 0:00:01
# Errors: 0, Warnings: 0
vcom -work H:/fsm-testability-engine-dft-scan-fault-analysis--main/work -refresh -force_refresh
# Model Technology ModelSim SE-64 vcom 2020.1 Compiler 2020.01 Jan 28 2020
# Start time: 00:18:58 on May 01,2026
# vcom -reportprogress 300 -work H:/fsm-testability-engine-dft-scan-fault-analysis--main/work -refresh -force_refresh 
# -- Skipping module c4
# -- Skipping module d_ff
# -- Skipping module next_state
# -- Skipping module output_comb
# -- Skipping module output_reg
# -- Skipping module scan_dff
# -- Skipping module test_c4
# End time: 00:18:58 on May 01,2026, Elapsed time: 0:00:00
# Errors: 0, Warnings: 0
vsim -voptargs=+acc work.test_c4
# vsim -voptargs="+acc" work.test_c4 
# Start time: 00:19:00 on May 01,2026
# ** Note: (vsim-3813) Design is being optimized due to module recompilation...
# Loading sv_std.std
# Loading work.test_c4(fast)
# Loading work.c4(fast)
# Loading work.next_state(fast)
# Loading work.output_comb(fast)
# Loading work.scan_dff(fast)
run
quit -sim
# Break key hit
# End time: 00:23:00 on May 01,2026, Elapsed time: 0:04:00
# Errors: 0, Warnings: 2


