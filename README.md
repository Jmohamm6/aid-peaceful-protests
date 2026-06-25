# A Quantitative Study of The Impact of Foreign Aid on Non-Violent Protest Frequency in Afghanistan

This repository contains code data sources, and scripts to a study that investigates the relationship between USAID-funded development projects and peaceful protest frequency in Afghanistan using a zero-inflated negative binomial (ZINB) regression. 

Note: This repository doesn't contain the process of cleaning and engineering data to fit a zero-inflated negative binomial regression into our analysis. Some steps must be independently taken, including cleaning acled, usaid and population data and arranging our set of variables are among a few missing steps. 
## Repository Structure

```
├── data/
│   ├── acled_protests.csv         # ACLED protest events, 2021-2025
│   ├── usaid_projects.csv         # USAID projects data by district
│   ├── population.csv             # World Bank population estimates
│   └── processed/                 # Cleaned/merged analysis-ready data
├── scripts/
│   ├── 01_data_cleaning.R         # Load & clean raw data
│   ├── 02_variable_construction.R # Create analysis variables
│   ├── 03_modeling_ZINB.R         # Fit ZINB regression
│   └── utils.R                    # Helper functions (optional)
├── notebooks/
│   └── analysis_walkthrough.Rmd   # Reproducible analysis notebook
├── results/
│   ├── tables/                    # Regression output
│   └── figures/                   # Plots (e.g., residuals, histograms)
├── environment.yml                # R environment file (optional)
├── README.md                      # This file
└── LICENSE                        # License for code and data
```

## Replication Instructions

1. **Clone the repository**
   ```
   git clone https://github.com/Jmohamm6/aid-peaceful-protests.git
   cd aid-peaceful-protests
   ```

2. **Install dependencies**  
   (Optionally use the provided `environment.yml` with [conda](https://docs.conda.io/projects/conda/en/latest/user-guide/tasks/manage-environments.html) or install R packages listed inside scripts.)

3. **Download raw data (optional)**  
   Place raw ACLED, USAID, and population files in `/data/` (see comments in scripts for download links).

4. **Run analysis**
   - Option 1: clean, process and engineer data for ZINB model.
   - Option 2: Step-by-step via `/scripts/` (in order: 01, 02, 03)
   - Option 2: Launch `/notebooks/analysis_walkthrough.Rmd` for a full pipeline walkthrough.

6. **Results**  
   Model outputs and figures are saved to `/results/`.

## Data Sources
- [ACLED Afghanistan](https://acleddata.com/)
- [SIGAR/USAID Projects](https://www.usaid.gov/)
- [World Bank Population Estimates](https://databank.worldbank.org/home.aspx)
- 

## Citation
If you use this code or analysis, please cite:
> Mohammadi, J. (2025). A Quantitative Study of The Impact of Foreign Aid on Non-Violent Protest Frequency in Afghanistan. Graduate Capstone, American University.

---
