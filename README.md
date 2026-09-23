# Beyond the Single Vessel: Comparative Meta-Analysis of Microbial Entropy in Continuous-Flow Gut Models

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

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

git clone [https://github.com/ismael-akala/beyond-the-single-vessel.git](https://github.com/ismael-akala/beyond-the-single-vessel.git)

source("scripts/03_meta_analysis_pipeline.R")

Yes, exactly! You paste everything into that single `README.md` editor window and hit **Commit changes...**.

Here is the exact complete markdown text ready to copy-paste. It has the placeholder for the Zenodo DOI so you don't have to edit anything else before pasting:

```markdown
# Beyond the Single Vessel: Comparative Meta-Analysis of Microbial Entropy in Continuous-Flow Gut Models

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

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

* **R Version:** `4.6.1` or higher
* **Required R Packages:** `tidyverse`, `GEOquery`, `curl`, `ggplot2`

## Execution Instructions

1. Clone this repository:
```bash
git clone [https://github.com/ismael-akala/beyond-the-single-vessel.git](https://github.com/ismael-akala/beyond-the-single-vessel.git)

```


2. Open RStudio/R console and source the processing script:
```R
source("scripts/03_meta_analysis_pipeline.R")

```



## Citation & License

If you utilize this pipeline or dataset, please cite the associated manuscript and repository.

* **Zenodo Archive DOI:** *[Pending Release]*
* **License:** MIT License

```

