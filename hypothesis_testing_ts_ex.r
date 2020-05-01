# calculate the value of the variable lower_cut_off
lower_cut_off <- round(qnorm(0.025,25,round(3.5/sqrt(40),2),lower.tail=TRUE),2)

# calculate the value of the variable upper_cut_off
upper_cut_off <- round(qnorm(0.975,25,round(3.5/sqrt(40),2)),2)

# print lower_cut_off to the console
lower_cut_off

# print upper_cut_off to the console
upper_cut_off
