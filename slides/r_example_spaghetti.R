# file: Analysis_Final_REALLY_FINAL.R
d <- read.csv("./data/raw/survey_responses.csv")

# Vague naming and hardcoded logic
d$var1 <- 2026 - d$birth_year

# Overwriting the original column
d$income <- d$income / 12

print(mean(d$var1, na.rm = TRUE))

# Overwriting the source file
write.csv(d, "./data/raw/survey_responses.csv", row.names = FALSE)