library(dplyr)
library(readr)

# Load cleaned data
acled <- read_csv("data/processed/acled_clean.csv")
usaid <- read_csv("data/processed/usaid_clean.csv")
pop <- read_csv("data/processed/pop_clean.csv")

# Merge datasets on district
df <- acled %>%
  group_by(district) %>%
  summarise(total_protests = n()) %>%
  left_join(usaid, by="district") %>%
  left_join(pop, by="district")

# Calculate variables
df <- df %>%
  mutate(
    log_projects_per_1000 = log((total_projects/population) * 1000 + 1),
    log_population = log(population),
    urban = ifelse(area_type == "Urban", 1, 0)
  )

write_csv(df, "data/processed/analysis_ready.csv")