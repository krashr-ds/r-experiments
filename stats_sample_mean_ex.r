# set the seed such that you will get the same sample as in the solution code
set.seed(11225)

# empty vector sample means
sample_means <- NULL

# take 200 samples from scandinavia_data
for (i in 1:500){
  samp <- sample(scandinavia_data, 200)
  sample_means[i] <- mean(samp)
}

# calculate the population mean, that is, the mean of scandinavia_data and print it
mean(scandinavia_data)

# calculate the mean of the sample means, that is, sample_means
mean(sample_means)
