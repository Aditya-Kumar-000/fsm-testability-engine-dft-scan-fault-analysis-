# FSM Testability & Scan Path Verification Engine

## Overview

This project implements and verifies a Finite State Machine (FSM) with a strong emphasis on **Design for Testability (DFT)** principles. It demonstrates how sequential circuits can be systematically tested using:

- Transition-based functional testing
- Single stuck-at fault modelling
- Scan path design for full controllability and observability

The design is implemented in SystemVerilog and validated using ModelSim and Quartus on FPGA.

---

## Key Features

### 1. FSM Design
- Two-state-variable synchronous FSM (S, T)
- Next-state logic implemented using gate-level NAND structures
- Asynchronous active-low reset
- Falling-edge triggered flip-flops

---

### 2. Functional Verification
- Deterministic test sequences to traverse all state transitions
- Reset-driven initialization for reproducibility
- Full transition coverage validation

---

### 3. Fault Injection (Single Stuck-At Model)
- Compile-time fault injection using SystemVerilog macros:
  - `FSA0` → node forced to logic 0
  - `FSA1` → node forced to logic 1
- Enables controlled simulation of manufacturing defects
- Used to evaluate:
  - Fault detection capability
  - Fault diagnosability

---

### 4. Combinational Output Logic
- Outputs derived from internal FSM state and inputs
- Demonstrates limited observability problem in sequential systems
- Highlights difficulty of testing without DFT

---

### 5. Sequential Output Logic
- Output register with conditional update
- Demonstrates state retention across clock cycles
- Introduces additional verification complexity

---

### 6. Scan Path Design (DFT)
- All flip-flops converted to scan-enabled flip-flops
- Serial scan chain implemented using:
  - `scan_dff`
  - `mode` control (normal vs scan mode)
- Enables:
  - Direct state injection
  - Full internal state observation

---

## Why This Project Matters

Testing sequential logic is fundamentally harder than combinational logic due to limited access to internal states.

This project demonstrates:

- Why traditional functional testing is insufficient
- How scan design transforms testability
- The trade-off between design complexity and verification capability

These are **core concepts used in real ASIC/FPGA design flows**.

---

## Tools & Technologies

- **SystemVerilog (IEEE 1800)**
- **ModelSim** – Simulation & waveform analysis
- **Intel Quartus** – Synthesis & FPGA deployment
- **DE1-SoC FPGA Board**

---

## File Structure

## File Structure
Theta_3/
├── C4_files/
│   ├── C4_pins.qsf
│   ├── all.txt
│   ├── c4.sv
│   ├── d_ff.sv
│   ├── next_state.sv
│   ├── output_comb.sv
│   ├── output_reg.sv
│   ├── scan_dff.sv
│   └── test_c4.sv
├── all.sv
└── notes-2.pdf
