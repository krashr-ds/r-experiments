# Our data
money <- c(1,2,3,4,5,6,7,8,9,10)
prosocial <- c(3, 2, 1, 4, 5, 10, 8, 7, 6,9)
# Find the regression coefficients
lm(prosocial ~ money)
