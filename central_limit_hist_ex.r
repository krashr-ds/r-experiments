# empty vector sample means
sample_means <- NULL

# take 200 samples from scandinavia_data
for (i in 1:1000){
  samp <- sample(household_income, 200)
  sample_means[i] <- mean(samp)
}

# make a histogram of household_income
hist(household_income)
# make a histogram of sample_means
hist(sample_means)
