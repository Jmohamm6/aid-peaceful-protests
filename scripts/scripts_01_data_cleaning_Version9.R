# Load libraries
library(dplyr)
library(readr)

# Load ACLED protest data
acled <- read_csv("data/acled_protests.csv")
# Load USAID projects data
usaid <- read_csv("data/usaid_projects.csv")
# Load population data
pop <- read_csv("data/population.csv")

# Example cleaning steps
# Filter relevant years, fix district/province names, handle missing values, etc.

# Save processed data
write_csv(acled, "data/processed/acled_clean.csv")
write_csv(usaid, "data/processed/usaid_clean.csv")
write_csv(pop, "data/processed/pop_clean.csv")