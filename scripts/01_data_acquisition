# 01_data_acquisition.R
# Setting up packages for programmatic data mining

# 1. Install BiocManager if not already installed (for genomic repositories)
if (!requireNamespace("BiocManager", quietly = TRUE)) {
  install.packages("BiocManager")
}

# 2. Define the exact packages needed for the meta-analysis
required_packages <- c("GEOquery", "tidyverse", "curl")

# 3. Check what is already installed on your system
installed_packages <- installed.packages()[, "Package"]

# 4. Filter out what is missing and install it safely
missing_packages <- required_packages[!(required_packages %in% installed_packages)]

if(length(missing_packages) > 0) {
  if("GEOquery" %in% missing_packages) {
    BiocManager::install("GEOquery", update = FALSE, ask = FALSE)
  }
  
  # Install standard CRAN packages that are left
  remaining_cran <- missing_packages[missing_packages != "GEOquery"]
  if(length(remaining_cran) > 0) {
    install.packages(remaining_cran)
  }
}

# 5. Load the libraries to verify everything works
library(GEOquery)
library(tidyverse)
library(curl)

print("Environment successfully set up for Phase 1 Meta-Analysis data retrieval!")

