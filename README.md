# Beyond the Single Vessel: Comparative Meta-Analysis of Microbial Entropy in Continuous-Flow Gut Models

[![License: CC BY 4.0](https://img.shields.io/badge/License-CC_BY_4.0-lightgrey.svg)](https://creativecommons.org/licenses/by/4.0/)

## Overview
This repository contains the computational pipeline, harmonized datasets, and visualization code for the meta-analysis paper evaluating community Shannon Diversity Entropy (\(H'\)) dynamics across single-stage (Mini-Chemostat) and multi-stage (SHIME) continuous-flow bioreactor architectures.

## Repository Structure
```text
├── scripts/
│   ├── 01_data_acquisition.R        # Ingestion of baseline donor stool & accession PRJNA819079
│   ├── 02_meta_data_assembler.R     # Standardization of abundance metrics across platforms
│   └── 03_meta_analysis_pipeline.R  # Non-parametric statistical tests & ggplot2 visualization
├── data/
│   ├── mbra_harmonized.csv          # Single-chamber mini-chemostat standardized profiles
│   ├── shime_harmonized.csv         # Multi-stage SHIME vessel standardized profiles
│   └── master_meta_analysis_metrics.csv # Master merged dataset for Shannon diversity calculations
├── figures/
│   └── Figure1_Meta_Diversity_Panel.png # Multi-panel diversity entropy output
└── README.md
```
## System Requirements
R Version: 4.6.1 or higher

Required R Packages: tidyverse, GEOquery, curl, ggplot2

## Execution Instructions
Clone this repository:
git clone https://github.com/ismael-akala/beyond-the-single-vessel.git

Open RStudio/R console and source the processing script:
source("scripts/03_meta_analysis_pipeline.R")

## Citation & License
If you utilize this pipeline or dataset, please cite the associated manuscript and repository.

Zenodo Archive DOI: [Pending Release]

License: This work is licensed under a Creative Commons Attribution 4.0 International License (CC BY 4.0).
