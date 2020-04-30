# Your plot
plot(money, prosocial, xlab = "Money", ylab = "Prosocial Behavior")
# Store your regression coefficients in a variable called "line"
line <- lm(money ~ prosocial)
# Use "line" to tell abline() to make a line on your graph
abline(line)
