# sample - 50 males, mean height 186.5cm, sd height 5, population mean height 185

# calculate the standard error and store it in the variable se
se <- round(5/sqrt(50),2)

# calculate the t value and store it in a variable called t_value
t_value <- round((186.5-185)/se,2)

# calculate the p value and store it in a variable called p_value
p_value <- round(pnorm(t_value, lower.tail=FALSE),2)

# print p_value to the console
p_value
