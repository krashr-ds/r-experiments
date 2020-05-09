# simulating data
set.seed(11225)
data <- rnorm(10000)

# check for documentation of the dnorm function
help(dnorm)

# calculate the density of data and store it in the variable density
density <- dnorm(data)

# make a plot with as x variable data and as y variable density
plot(data, density)
