# Delta-Sigma ADC ASIC Repository (ISRO VLSI Team 15)

[![ISRO VLSI](https://img.shields.io/badge/ISRO-VLSI-orange)](https://www.isro.gov.in/) [![SCL180nm](https://img.shields.io/badge/Tech-SCL180nm-blue)](https://www.scl.gov.in/)

This repository contains the **complete RTL-to-GDSII design flow** for a high-resolution **Delta-Sigma ADC ASIC** developed for **ISRO VLSI End-Term Submission** by **Team 15**. The design achieves **16-19 bit ENOB** at **0.5-2 ksps Nyquist rates** using **SCL180nm PDK**.[file:2][file:6]

## 🎯 Project Highlights
- **3rd-order DT-CRFB Modulator** with auto-zeroing for flicker noise mitigation
- **Cascaded Decimation Filter**: CIC (L=4, R=64) + Compensation FIR (63 taps) + Halfband FIR
- **Full Flow**: MATLAB behavioral → Verilog RTL → Synthesis → PnR → GDSII
- **Key Metrics**: ENOB 16.22 bits @ 0.5 ksps, Area 20,116 µm², 72% util, 0% congestion[file:2][file:5]

![Project Flow](image.jpg)
*Folder structure overview[file:8]*

![Architecture](docs/flow_diagram.png)
*Figure 1: Complete Delta-Sigma ADC Flow (Team_15_report.pdf, p.2)[file:2]*

## 📋 Repository Structure

Team_15/
├── 📁 MATLAB Simulink Models/ # Behavioral modeling & noise analysis
│ ├── FinalModel/dtcrfb3nonideal.slx # Selected 3rd-order CRFB w/ non-idealities
│ ├── DIGITALFILTERFLOATINGPOINTREFERENCE/
│ └── MATLABSCRIPTS/EnobvsSamplingrate.m
├── 📁 RTL Code (Verilog)/ # SystemVerilog RTL + self-contained testbench
│ ├── filtersynth.v # Top-level FilterTop
│ ├── decifilter.v # CIC + FIR stages
│ └── testbench/ # Sine+noise → sigma-delta → CIC
├── 📁 Synthesis & Layout files/ # DC/ICC2 complete flow
│ ├── synthesis/ # Netlist, SDC, area/timing/power reports
│ ├── icc2Scripts/ # 01floorplan.tcl → 06gdsiiout.tcl
│ ├── GDSIIFile/FilterTop.gds # Final layout database
│ └── Snapshots/ # PnR images, congestion maps
├── 📄 Team_15_report.pdf # Technical report (44 pages)
├── 📄 Team_15.pptx # Presentation slides
├── 📄 MATLAB_README.pdf # Simulink setup & workflow
├── 📄 Simulation_environment.pdf # RTL testbench details
├── 📄 Environment_File.pdf # Toolchain/PDK specs
└── 📄 readme-1.md # Synthesis/layout README

text

## 🚀 Quick Start

### 1. MATLAB/Simulink (R2025b required)
```bash
# Required toolboxes: Mixed-Signal, DSP, Sigma-Delta, Filter Design
cd "MATLAB Simulink Models"
run DIGITALFILTERFLOATINGPOINTREFERENCE/Compensationcoefficients.m
run DIGITALFILTERFLOATINGPOINTREFERENCE/Halfbandcoefficeint.m
run MATLABSCRIPTS/EnobvsSamplingrate.m  # ~120s runtime, outputs ENOB tables
SimTime: 120s minimum for ADC-AC SNR measurement[file:4][file:6]

2. RTL Simulation (Vivado 2023.2)
bash
# Self-contained testbench: 440Hz sine + 1/f noise → sigma-delta → CIC
open_project rtl/
run_simulation  # ~292k samples, 22ms sim time
Monitor: adcinput, adclvdspin, adcoutput, adcvalid[file:7]

3. Synthesis & PnR (Synopsys)
tcl
# DC Synthesis
dc_shell -f synthesisScript/run_dc.tcl  # tsl18fs120sclss.lib

# ICC2 PnR (sequential scripts)
icc2_shell -f icc2Scripts/01floorplan.tcl
icc2_shell -f icc2Scripts/02powerplan.tcl
# ... → 06gdsiiout.tcl → FilterTop.gds
PDK: SCL180nm (.ndm bundle), PVT: SS/FF corners[file:5][file:6]

📊 Key Results
Metric	Value	Target Met
ENOB	16.22 bits (0.5ksps)
16.00 bits (1ksps)
15.25 bits (2ksps)	✅[file:2]
Area	20,116 µm² (731 cells)	✅[file:2]
Utilization	72.22%	✅[file:2]
Timing	WNS +0.524ns (1MHz)	✅[file:2]
Congestion	0% overflow (1740 blue bins)	✅[file:2]
Power	9.67 µW total	✅[file:2]
ENOB Plot
ENOB vs Nyquist (PPT Image Picture 33 or Report Table 4)[file:2][file:3]

LayoutCongestion
GDSII (Snapshots/) & Global Routing Fig.12 (report p.9)[file:2][file:5]

🔬 Technical Highlights
Modulator Selection
Rejected: CT (jitter-sensitive, max 11.5 ENOB), Hybrid (complex)

Selected: 3rd-order DT-CRFB (jitter-resilient, 16+ ENOB w/ non-idealities)

Noise Mitigation: Auto-zeroing (30dB 1/f rejection > chopping)[file:2]

Decimation Chain
text
512kHz bitstream ──CIC(L4,R64)──► 8kHz ──Comp.FIR(63taps)──► 4kHz ──HB.FIR──► 2kHz
CIC: Hogenauer non-recursive (adders only)

FIRs: Parks-McClellan, polyphase, Q-format fixed-point[file:2]

RTL Verification
text
Input: 440Hz cos(1V) + flicker(10mV)
Modulator: Behavioral 1st-order (RC integrator + LVDS comp)
Filter: Full CIC → 1143 output samples (~1kHz rate)
Waveform: Fig.9 (report p.8)[file:2][file:7]

🛠️ Toolchain & Requirements
OS: Windows 11 + MobaXterm (Synopsys Linux)

MATLAB: R2025b (i7+, 120s+ sims)

Vivado: 2023.2 (SystemVerilog)

Synopsys: DC X-2025.06, ICC2 (SCL180nm PDK)[file:6]

📖 Documentation
Technical Report (PDF) - 44 pages, all sims/tables

Presentation (PPTX) - Slides w/ spectra, architectures

MATLAB Guide (PDF) - Simulink workflow

RTL Testbench (PDF)

Synthesis/Layout README[file:5]
