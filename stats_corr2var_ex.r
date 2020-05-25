# Compute correlation
# The function is symmetric with respect to x and y and it does not matter 
# what order you put the variables in.
ncbirths %>%
  summarize(N = n(), r = cor(weight, mage))

# Compute correlation for all non-missing pairs
# The "use" arg allows override of default behavior of returning NA when missing data encountered
# use = pairwise.complete.obs allows cor to compute using the data it has (ignore NA values for either var)
ncbirths %>%
  summarize(N = n(), r = cor(weight, weeks, use = "pairwise.complete.obs"))
