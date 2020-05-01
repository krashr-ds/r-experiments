# calculate the mean and store it in the variable mean_chance
mean_chance = 25 * 0.2

# calculate the standard deviation and store it in the variable std_chance
std_chance = sqrt(25*0.2*(1-0.2))

# probability of answering 5 questions correctly
five_correct <- dbinom(5, size = 25, prob = 0.2)

# probability of answering at least 5 questions correctly
atleast_five_correct <- pbinom(4, size = 25, prob = 0.2, lower.tail = FALSE)

# calculate the 60th percentile
qbinom(.60, 25, 0.2)
