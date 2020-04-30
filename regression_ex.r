# your data
money <- c(4, 3, 2, 2, 8, 1, 1, 2, 3, 4, 5, 6, 7, 9, 9, 8, 12)
education <- c(3, 4, 6, 9, 3, 3, 1, 2, 1, 4, 5, 7, 10, 8, 7, 6, 9)

# calculate the correlation between X and Y
cor(money,education)

# save regression coefficients as object "line"
line <- lm(money ~ education)

# print the regression coefficients
line$coefficients

# plot Y and X
plot(education, money, xlab = 'Education', ylab = 'Money', main = "My Scatterplot")

# add the regression line
abline(line)
