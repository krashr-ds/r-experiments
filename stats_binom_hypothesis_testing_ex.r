# calculate the mean (expected probability) and assign it to a variable called average
#NOT SURE WHY THIS WOULDN'T BE 25*.2?????
average <- 0.2

# calculate the standard error and assign it to a variable called se
se <- round(sqrt((.2*.8)/25),2)

# calculate the z value and assign it to a variable z_value
z_value <- round((((12/25) - 0.2) / se), 2)

# calculate the p value and store it in a variable p_value
p_value <- round(pnorm(z_value, lower.tail=FALSE), 2)

# print p_value to the console
p_value
