# Giacomo Azzari — Curriculum Vitae

<div align="center">

[![LaTeX](https://img.shields.io/badge/Document-LaTeX-blue.svg?logo=latex&logoColor=white)](cv.tex)
[![Status](https://img.shields.io/badge/Status-MSc%20Student-success.svg)](#-about-me)
[![UniPD](https://img.shields.io/badge/University-Padua-8B0000.svg)](https://www.unipd.it)
[![Ghent University](https://img.shields.io/badge/Exchange-UGent%20FEA-1E64C8.svg)](https://www.ugent.be/ea/en)
[![LinkedIn](https://img.shields.io/badge/LinkedIn-Giacomo%20Azzari-0A66C2.svg?logo=linkedin)](https://www.linkedin.com/in/giacomo-azzari)
[![Email](https://img.shields.io/badge/Email-giacomoazzari%40gmail.com-EA4335.svg?logo=gmail)](mailto:giacomoazzari@gmail.com)

**Electronic Engineer** specializing in **Analog Integrated Circuits**, **RF & High-Frequency Electronics**, **Semiconductor Microtechnologies**, and **Embedded Systems**.

</div>

---

## 📄 Curriculum Vitae Versions

Choose between the concise industry resume and the comprehensive academic/R&D curriculum:

| Document | Type | Length | Best Suited For | Direct Link |
| :--- | :--- | :---: | :--- | :--- |
| **`cv.pdf`** | **Industry Resume** | **1 Page** | Fast-paced corporate ATS screening, tech recruitment, and industry engineering roles. Focused on key skills, impact, and engineering projects. | [📥 **View / Download 1-Page PDF**](cv.pdf) |
| **`cv_extended.pdf`** | **Comprehensive CV** | **2 Pages** | Research laboratories, PhD/academic applications, European institutions, and technical deep-dives. Detailed course modules, cleanroom practicum, and extended projects. | [📥 **View / Download 2-Page PDF**](cv_extended.pdf) |

---

## 👤 About Me

I am an Electronic Engineer currently completing my Master's Degree (Laurea Magistrale) in **Electronic Engineering** at the **University of Padua**, enriched by an **Erasmus+ MSc exchange** at **Ghent University** (Faculty of Engineering & Architecture, Belgium). 

My technical passion lies at the intersection of **transistor-level analog circuit design**, **RF microelectronics**, **semiconductor cleanroom microfabrication**, and **low-power embedded firmware architectures**. 

---

## 🎓 Education & Academic Background

- **Master of Science in Electronic Engineering (Laurea Magistrale)**  
  *University of Padua, Italy* · `Oct 2025 – Present`  
  *Focus:* Advanced Analog Integrated Circuits, RF Electronics, Microtechnologies, and Signal Processing.

- **Erasmus+ MSc Exchange Student (Electrical Engineering / Electronics)**  
  *Universiteit Gent (Ghent University), Belgium — Faculty of Engineering & Architecture* · `Sep 2026 – Jan 2027`  
  *Completed 30 ECTS in English:*
  - **Advanced Analog Design:** Transistor-level design, OTA topologies, noise analysis, frequency compensation.
  - **IC Technology & Microsystems:** Semiconductor microfabrication flows, cleanroom processing, MEMS actuators & sensors.
  - **Electromagnetic-aware High-Frequency Design:** RF parasitics, transmission line theory, high-speed signal integrity.
  - **Internet of Things:** Low-power edge node architectures and sensor networks.

- **Bachelor of Science in Information Engineering**  
  *University of Padua, Italy* · `Oct 2021 – Jul 2025`  
  *Thesis:* **Underwater Acoustic Transducers Design & Development** — Research and parametric modeling of electroacoustic transducer topologies, piezoelectric materials, and acoustic impedance matching for underwater wireless telemetry (Supervised by *Prof. Filippo Campagnaro*).

---

## 🛠️ Core Technical Competencies

- **Integrated Circuit Design & EDA Tools:** Transistor-level Analog IC Design, SPICE simulation, RF layout & parasitic modeling, AMD Vivado IDE, STM32CubeIDE, MATLAB & Simulink, LabVIEW, Wolfram Mathematica, Microfabrication / MEMS.
- **Embedded Systems & IoT:** ARM Cortex-M (STM32), Low-Power Edge Node Architectures, FreeRTOS, Peripheral Interfaces (I2C, SPI, UART, ADC, DAC, PWM, DMA).
- **Programming & Hardware Description:** C, C++, Python (Data acquisition, test automation, computer vision), VHDL, Verilog-HDL, Java, Kotlin, Linux, Git, Bash, LaTeX.
- **Laboratory & Instrumentation:** Digital Storage Oscilloscopes (DSO), Logic Analyzers, Spectrum Analyzers, Arbitrary Function Generators, SMD Soldering & rework.
- **Workplace Safety & Compliance:** Certified for High-Risk Laboratory Environments (Art. 37 D.Lgs. 81/08).

---

## 🤝 Leadership & Community Engagement

- **Italian Referees Association (AIA) — Castelfranco Veneto Branch:**  
  *Branch Committee Member, IT Coordinator & Regional Football Referee (2020 – Present)*  
  Direct institutional IT and cloud infrastructure; officiate football matches at the regional and provincial levels. Honored with the *“Manuel Bailo” Award* (Best Branch Referee, 2022–2023 season) and serve as mentor for debutant referees.
- **Azione Cattolica Italiana — Montebelluna (TV):**  
  *Branch Committee Member & Youth Group Leader (2020 – Present)*  
  Coordinate developmental, civic, and educational programs for adolescents aged 14–18.

---

## 📬 Contact & Connect

- 💼 **LinkedIn:** [linkedin.com/in/giacomo-azzari](https://www.linkedin.com/in/giacomo-azzari)
- ✉️ **Email:** [giacomoazzari@gmail.com](mailto:giacomoazzari@gmail.com)
- 📍 **Location:** Padua / Montebelluna (TV), Italy · Ghent, Belgium

---

<details>
<summary><b>🔧 Developer Notes & Local Compilation</b></summary>

<br>

Both CV versions are written in modern LaTeX and automatically compiled via GitHub Actions on every push.

If you wish to compile locally with `pdflatex`:

```bash
# Compile the 1-page Industry Resume
pdflatex -interaction=nonstopmode cv.tex

# Compile the 2-page Extended CV
pdflatex -interaction=nonstopmode cv_extended.tex
```

Or using the included Makefile:
```bash
make          # Compiles both versions
make clean    # Cleans auxiliary files (.aux, .log, .out)
```

</details>
