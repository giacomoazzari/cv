# Giacomo Azzari — Professional Engineering CV / Resume in LaTeX

This repository contains a professional, ATS-friendly LaTeX Curriculum Vitae tailored for **Electronic Engineering**, **Embedded Systems**, and **Hardware/Firmware Engineering**.

---

## 📄 Overview of Files

| File | Description |
| :--- | :--- |
| **`cv.tex`** | **1-Page Industry Resume** (High-impact, concise, optimized for tech & corporate ATS screening). |
| **`cv.pdf`** | Compiled 1-page PDF ready for review and job applications. |
| **`cv_extended.tex`** | **2-Page Comprehensive CV** (Detailed project breakdown, extended coursework, lab practicum, for European / academic / R&D applications). |
| **`cv_extended.pdf`** | Compiled 2-page PDF. |
| **`compile.sh`** | Compilation bash script for one-command builds. |
| **`Makefile`** | Standard build tool support (`make`, `make 1page`, `make 2page`, `make clean`). |

---

## 🛠️ How to Compile

Both documents compile with **pdfLaTeX** using standard packages included in MacTeX / TeX Live 2025.

### Option 1: Using the compile script
```bash
# Compile both versions (1-page and 2-page)
./compile.sh all

# Compile only the 1-page version
./compile.sh 1page

# Compile only the 2-page version
./compile.sh 2page

# Clean auxiliary files (.aux, .log, .out)
./compile.sh clean
```

### Option 2: Using Make
```bash
make          # Builds both cv.pdf and cv_extended.pdf
make 1page    # Builds cv.pdf
make 2page    # Builds cv_extended.pdf
make clean    # Removes intermediate build artifacts
```

### Option 3: Direct `pdflatex` command
```bash
/Library/TeX/texbin/pdflatex -interaction=nonstopmode cv.tex
/Library/TeX/texbin/pdflatex -interaction=nonstopmode cv_extended.tex
```

*(Note: Run twice to resolve hyperref links and outlines).*

---

## ✏️ Customization Guide

### 1. Contact Information & Links
In both `cv.tex` and `cv_extended.tex`, customize the header block:
- **Phone:** Replace `+39 3XX XXXXXXX` with your actual phone number.
- **LinkedIn:** Update `linkedin.com/in/giacomo-azzari` to your profile slug.
- **GitHub:** Update `github.com/giacomoazzari` with your personal GitHub account.
- **Location:** Configured as `Padua / Veneto, Italy`.

### 2. Education & Thesis
- **University of Padua (Università degli Studi di Padova)** is set as your Alma Mater.
- Replace `[Insert Thesis Title, e.g., ...]` with the actual title of your Bachelor's thesis.
- If you are enrolled in or completed a Master of Science (Laurea Magistrale), simply uncomment the provided `\resumeSubheading` block under the `\section{Education}`.

### 3. Color Theme Customization
Both templates use an executive color palette. You can easily modify the primary accent color at the top of the files:

```latex
% Default: Deep Professional Navy
\definecolor{primary}{RGB}{15, 44, 89}

% Alternative: Tech Slate Gray
% \definecolor{primary}{RGB}{30, 41, 59}

% Alternative: Classic Pure Black (Monochrome)
% \definecolor{primary}{RGB}{0, 0, 0}

% Alternative: Deep Emerald Green
% \definecolor{primary}{RGB}{16, 88, 62}
```

### 4. Technical Skills & Projects
The sections are categorized for electronic hardware and embedded systems roles:
- **Hardware & EDA:** Altium Designer, KiCad, LTspice, Cadence Virtuoso.
- **Embedded & MCUs:** STM32 (ARM Cortex-M), ESP32, AVR, FreeRTOS, I2C, SPI, UART, CAN.
- **Software:** C, C++, Python, MATLAB/Simulink, VHDL/Verilog.
- **Lab Instruments:** Oscilloscopes, Logic Analyzers, Spectrum Analyzers, Soldering.
- **Leadership:** Highlights your civic advocacy and student initiatives in Montebelluna.

You can modify or swap any project bullets to match specific job applications.
