# USING KNOWN POPULATION SD (ALMOST NEVER) 

# Assign the sample mean to object "m"
m <- mean(samp)

# Assign the standard deviation to object "s"
s <- 8 / sqrt(300)

# Calculate the upper confidence interval
m + ( 1.96 * s )

# Calculate the lower confidence interval
m - ( 1.96 * s )

# USING SAMPLE SD

# Assign the sample mean to object "m"
m = mean(rrage)

# Assign the sample standard error to object "s"
s =  sd(rrage) / sqrt(200)

# Calculate the upper 95% confidence interval
m + (1.9720 * s)

# Calculate the lower 95% confidence interval
m - (1.9720 * s)
