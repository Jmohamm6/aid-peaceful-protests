library(pscl)
library(readr)

df <- read_csv("data/processed/analysis_ready.csv")

# Fit Zero-Inflated Negative Binomial model
model <- zeroinfl(
  total_protests ~ log_projects_per_1000 + urban + log_population,
  data = df,
  dist = "negbin"
)

summary(model)
# Save results/tables/figures as needed