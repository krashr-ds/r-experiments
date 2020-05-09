# Make p the proportion of the sample with road rage 
p <- 70 / 200
# Find the standard error of p
se <- sqrt( (p * (1 - p)) / 200)
# Calculate the upper level of the confidence interval
p + 1.96 * se
# Calculate the lower level of the confidence interval
p - 1.96 * se
