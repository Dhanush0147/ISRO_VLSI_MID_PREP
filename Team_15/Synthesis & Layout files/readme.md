# 📁 Project Name (e.g., ASIC Physical Design)

This repository contains all the necessary files, scripts, and reports for the physical design of the **Filter_Top** (e.g., *my\_processor*, *digital\_block*).

---

## 🏗️ Folder Structure Overview

The project is organized into the following main directories:

| Folder | Description |
| :--- | :--- |
| `synthesis` | Contains the **Netlist**, **Constraints**, and **Reports** generated from the synthesis and physical design flow. |
| `icc2_Scripts` | Contains the **Tcl scripts** used to execute the physical design steps in the IC Compiler II (ICC2) tool. |
| `GDSII_File` | Contains the final **GDSII database** of the chip layout. |
| `Snapshots` | Contains various **visual snapshots** of the physical design progress. |

---

## 📦 Detailed Folder Contents

### 1. `synthesis`

This directory acts as the central hub for the design input and output from the physical design flow.

* **`synthesis/ Gatelevel Netlist`**
    * Contains the **Gate-Level Netlist** ( `Filter_Top.v`), which is the main input for the Physical Design (Place and Route) flow.

* **`synthesis/Outputs`**
    * Contains the **output constraints** and design files generated after Physical Design, such as the timing-correlated netlist, Standard Parasitic Exchange Format (SPEF) file, and updated timing constraints.

* **`synthesis/Reports`**
    * Contains the detailed final reports of the design.
    * **Area Report** (e.g., cell area, utilization)
    * **Timing Report** (e.g., setup/hold slack, clock summary)
    * **Power Report** (e.g., leakage, static and dynamic power consumption)

* **`synthesis/Script`**
    * Contains the **input constraints** (e.g., SDC file) and **Tcl scripts** used during the synthesis process (if applicable) and any common configuration files.

### 2. `icc2_Scripts`

This directory holds the sequence of Tcl scripts used to run the Place and Route (PnR) flow. The scripts are typically executed sequentially.

* **`01_floorplan.tcl`**: Script for defining the **floorplan**, core size, and pin placement.
* **`02_powerplan.tcl`**: Script for creating the **power distribution network (PDN)**, including rings and straps.
* **`03_placement.tcl`**: Script for performing **cell placement** (including pre-placement optimization).
* **`04_cts.tcl`**: Script for running **Clock Tree Synthesis (CTS)**.
* **`05_routing.tcl`**: Script for performing **signal routing** and final optimizations.
* **`06_gdsii_out.tcl`**: Script to generate the final **GDSII** file and perform final checks.

### 3. `GDSII_File`

* **`Filter_Top.gds`**: The final **Graphic Database System II (GDSII)** file, which is the standard format used for chip fabrication.

### 4. `Snapshots`

This folder contains illustrative images and visual representations of the design at various stages.

* **PnR Pictures**: Images showing the overall cell placement and routing. 
* **Routing Pictures**: Detailed views of the signal routing layers.
* **GDSII Layout**: Screenshot of the final layout in a layout viewer (showing metal layers, vias, etc.).
* **Gate-Level Schematic**: A visual representation of a section of the synthesized netlist.