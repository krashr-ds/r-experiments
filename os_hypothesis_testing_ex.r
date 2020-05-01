# calculate the value of cut_off
# the prefered option
cut_off <- round(qnorm(0.95, mean = 25, sd = round(3.5 / sqrt(40), 2)), 2)
# other accepted solutions
cut_off_2 <- round(qnorm(0.95, mean = 25, sd = 3.5 / sqrt(40)), 2)
cut_off_3 <- qnorm(0.95, mean = 25, sd = round(3.5 / sqrt(40), 2))
cut_off_4 <- qnorm(0.95, mean = 25, sd = 3.5 / sqrt(40))

# print the value of cut_off to the console
cut_off
