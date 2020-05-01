# variable scandinavia_data contains the beard lengths of scandinavian male population
set.seed(11225)
first_sample <- sample(scandinavia_data, 100)
round((sum(first_sample))/100, digits=2)
mean(first_sample)

