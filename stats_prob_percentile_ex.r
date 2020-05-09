# probability of a woman having a hair length of less than 20 centimeters
round(pnorm(20, mean=25, sd=5), digits=2)

# 85th percentile of female hair length
round(qnorm(0.85, mean=25, sd=5), digits=2)
