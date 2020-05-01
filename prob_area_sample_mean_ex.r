# calculation of the probablity that a sample mean of the beard length of 50 scand. hipsters is >= 26mm
# calculate the population mean
population_mean <- mean(scandinavia_data)

# calculate the population standard deviation
population_sd <- sd(scandinavia_data)

# calculate the standard deviation of the sampling distribution and put it in a variable sampling_sd
sampling_sd <- population_sd / sqrt(50)

# calculate the Z score and put in a variable called z_score
z_score <- (26 - population_mean) / sampling_sd

# cumulative probability calculation. Don't forget to set lower.tail to FALSE
pnorm(z_score, lower.tail=FALSE)
