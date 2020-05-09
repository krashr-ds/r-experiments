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

# ANOTHER EXAMPLE
# You can calculate a confidence interval, say a 95% confidence interval, 
# by taking the mean and adding and subtracting its standard error multiplied 
# by the given t value or z value. Usually confidence intervals are expressed as 
# a two-sided range as we will also do in this exercise.

#A 95% confidence intervals can be interpreted as that we are 95% confident that 
# this interval will contain our population statistic. Take our last example where 
# we found a standard error of 0.71, a population mean of 185, and a sample mean 
# of 186.5. As the sample size was 50, our relevant degrees of freedom were 49.

# calculate the t value and store it in the variable t_value
t_value <- round(qt(.975,49),2)

#' calculate a 95% confidence interval as a vector with two values and store it in a
#' a variable called conf_interval
conf_interval <- c(round(186.5-0.71*t_value,2),round(186.5+0.71*t_value,2))

# print conf_interval to the console
conf_interval
