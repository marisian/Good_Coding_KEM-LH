source("./src/transformations.R")

# Configuration concern
RAW_PATH <- "./data/raw/survey_responses.csv"
OUT_PATH <- "./data/processed/survey_responses.csv"
REF_YEAR <- 2026

# Execution concern
survey_data <- read.csv(RAW_PATH)

# Indiviudal variable transformation concerns
survey_data$age <- calc_age(survey_data$birth_year, REF_YEAR)
survey_data$monthly_income <- calc_monthly_income(survey_data$income)

# Save to a new location to preserve the "raw" concern
write.csv(survey_data, OUT_PATH, row.names = FALSE)