# Analysis_Final_v2_COPY.R
data <- read.csv("survey_data_new.csv")
d2 <- data[data$q1 != 99, ] # What is q1? Why 99?
d2$var_x <- d2$income / 12
# Fix for the error I found Tuesday
d2$var_x[14] <- 4500 
# I think I need to filter age here
d3 <- d2[d2$age > 18, ]
plot(d3$var_x, d3$q2) # Wait, did I clean q2 yet?
# Source("other_script.R") # This script changes 'd3' internally! 
result <- lm(q2 ~ var_x, data=d3)
summary(result)