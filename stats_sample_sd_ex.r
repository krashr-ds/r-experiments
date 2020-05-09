# Given that the average percentage of a sample of 200 from the London population has a percentage of 
# hipsters of 10%, calculate the standard deviation of the sampling distributions and store this in a 
# variable called sample_sd.

# sample proportion
proportion_hipsters <- 0.10

# standard deviation of the sampling distribution
sample_sd <- sqrt((proportion_hipsters * (1 - proportion_hipsters))/200)
