# Assign the sample mean to object "m"
m <- mean(samp)

# Assign the standard deviation to object "s"
s <- 8 / sqrt(300)

# Calculate the upper confidence interval
m + ( 1.96 * s )

# Calculate the lower confidence interval
m - ( 1.96 * s )
