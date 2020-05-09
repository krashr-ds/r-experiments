# the mean of the probability mass function
expected_score <- sum(data$outcome * data$probs)

# calculate the variance and store it in a variable called variance
variance <- sum((data$outcome - expected_score)^2 * data$probs)

# calculate the standard deviation and store it in a variable called std
std <- sqrt(variance)
