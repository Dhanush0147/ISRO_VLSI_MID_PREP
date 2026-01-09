
---

# Delta-Sigma ADC ASIC

**ISRO VLSI End-Term Project – Team 15**

![ISRO VLSI](https://img.shields.io/badge/ISRO-VLSI-orange)
![Technology](https://img.shields.io/badge/Tech-SCL180nm-blue)

This repository contains the **complete RTL-to-GDSII ASIC design flow** of a **high-resolution Delta-Sigma ADC**, developed as part of the **ISRO VLSI End-Term Submission** by **Team 15**.
The design targets **16–19 bit ENOB** at **0.5–2 ksps Nyquist rates** using the **SCL 180 nm CMOS PDK**.

---

## 🎯 Project Highlights

* **3rd-order DT-CRFB Delta-Sigma Modulator**

  * Auto-zeroing for flicker (1/f) noise suppression
* **Cascaded Digital Decimation Chain**

  * CIC Filter (L = 4, R = 64)
  * Compensation FIR (63 taps)
  * Half-Band FIR
* **Complete End-to-End Flow**

  * MATLAB behavioral → Verilog RTL → Synthesis → PnR → GDSII
* **Key Achievements**

  * ENOB: **16.22 bits @ 0.5 ksps**
  * Core Area: **20,116 µm²**
  * Utilization: **72%**
  * Routing Congestion: **0%**

---

## 🧩 Architecture Overview

### Design Flow

MATLAB Behavioral Modeling
↓
RTL Design & Verification
↓
Logic Synthesis (DC)
↓
Floorplanning & Place-and-Route (ICC2)
↓
GDSII Generation

### Decimation Chain

512 kHz Bitstream
→ CIC Filter (L=4, R=64) → 8 kHz
→ Compensation FIR (63 taps) → 4 kHz
→ Half-Band FIR → 2 kHz Output

---

## 📁 Repository Structure

Team_15/
├── MATLAB Simulink Models/
│   ├── FinalModel/
│   │   └── dtcrfb3nonideal.slx
│   ├── DIGITALFILTERFLOATINGPOINTREFERENCE/
│   └── MATLABSCRIPTS/
│       └── EnobvsSamplingrate.m
│
├── RTL Code (Verilog)/
│   ├── filtersynth.v        # Top-level digital filter
│   ├── decifilter.v         # CIC + FIR implementation
│   └── testbench/           # Self-contained verification
│
├── Synthesis & Layout files/
│   ├── synthesis/           # DC scripts and reports
│   ├── icc2Scripts/         # Floorplan → GDSII scripts
│   ├── GDSIIFile/
│   │   └── FilterTop.gds
│   └── Snapshots/           # PnR & congestion images
│
├── Team_15_report.pdf       # 44-page technical report
├── Team_15.pptx             # Final presentation
├── MATLAB_README.pdf
├── Simulation_environment.pdf
├── Environment_File.pdf
└── readme-1.md               # Detailed synthesis & PnR README

---

## 🚀 Quick Start

### 1. MATLAB / Simulink (R2025b)

Required Toolboxes:

* DSP System Toolbox
* Mixed-Signal Blockset
* Sigma-Delta Toolbox
* Filter Design Toolbox

Steps:

1. Open MATLAB R2025b
2. Navigate to MATLAB Simulink Models
3. Run the following scripts:

run DIGITALFILTERFLOATINGPOINTREFERENCE/Compensationcoefficients.m
run DIGITALFILTERFLOATINGPOINTREFERENCE/Halfbandcoefficeint.m
run MATLABSCRIPTS/EnobvsSamplingrate.m

Notes:

* Minimum simulation time: **120 seconds**
* Outputs ENOB vs Sampling Rate results

---

### 2. RTL Simulation (Vivado 2023.2)

Steps:

1. Open Vivado 2023.2
2. Load the RTL project
3. Run simulation

Simulation Characteristics:

* Input: 440 Hz sine + 1/f noise
* Total samples: ~292k
* Observed signals:

  * adcinput
  * adclvdspin
  * adcoutput
  * adcvalid

---

### 3. Synthesis & Place-and-Route (Synopsys)

#### Logic Synthesis (Design Compiler)

dc_shell -f synthesisScript/run_dc.tcl

* Standard Cell Library: tsl18fs120sclss.lib

#### Physical Design (ICC2)

icc2_shell -f icc2Scripts/01floorplan.tcl
icc2_shell -f icc2Scripts/02powerplan.tcl
...
icc2_shell -f icc2Scripts/06gdsiiout.tcl

* PDK: SCL 180 nm (.ndm bundle)
* Corners: SS / FF

---

## 📊 Key Results

ENOB:

* 17.2 bits @ 0.5 ksps
* 16.0 bits @ 1 ksps
* 15.25 bits @ 2 ksps

Area:

* 20,116 µm² (731 standard cells)

Utilization:

* 72.22%

Timing:

* WNS +0.524 ns @ 1 MHz

Routing Congestion:

* 0% overflow

Power:

* 9.67 µW total

All design targets met successfully.

---

## 🔬 Technical Highlights

### Modulator Selection

Rejected Architectures:

* Continuous-Time: jitter sensitive, ENOB ≤ 11.5
* Hybrid architectures: high complexity

Selected Architecture:

* 3rd-order DT-CRFB
* Robust against clock jitter
* ENOB ≥ 16 bits with non-idealities

Noise Reduction:

* Auto-zeroing provides ~30 dB flicker noise suppression

---

### RTL Verification

* Input: 440 Hz cosine (1 V) + flicker noise (10 mV)
* Modulator: Behavioral model
* Digital filter output rate: ~1 kHz
* Total output samples: 1143
* Results matched MATLAB reference

---

## 🛠️ Toolchain & Environment

* OS: Windows 11 + MobaXterm (Linux environment)
* MATLAB: R2025b
* Vivado: 2023.2
* Synopsys: Design Compiler X-2025.06, ICC2
* PDK: SCL 180 nm

---

## 📖 Documentation

* Technical Report (PDF) – Complete simulations and analysis
* Presentation (PPTX) – Architecture and results
* MATLAB Workflow Guide (PDF)
* RTL Testbench Guide (PDF)
* Synthesis & Layout README

---

## 📌 Notes

This repository is intended **strictly for academic and evaluation purposes** as part of the **ISRO VLSI End-Term Program**.

---
