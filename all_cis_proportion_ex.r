# Make p the proportion of the sample with road rage 
p <- 75 / 200
# Find the standard error of p
se <- sqrt( (p * (1 - p)) / 200)
# Calculate the upper level of the 95% confidence interval
p + 1.96 * se
# Calculate the lower level of the 95% confidence interval
p - 1.96 * se
# Report the range of the 95% confidence interval
0.134192
# Report the range of the 99% confidence interval
0.1766405
# Which has the widest range?
99

# Assign the sample mean to object "m"
m <- mean(rrage)
# Assign the sample standard error to object "s"
s <- sd(rrage) / sqrt(200)
# Calculate the upper level of the 95% confidence interval
m + ( 1.9720 * s )
# Calculate the lower level of the 95% confidence interval
m - ( 1.9720 * s)
# Calculate the range of the 95% confidence interval
(m + ( 1.9720 * s )) - (m - ( 1.9720 * s))
# Calculate the range of the 90% confidence interval
(m + ( 1.6525 * s )) - (m - ( 1.6525 * s))
# Which has the widest range?
95
