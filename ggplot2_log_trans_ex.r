# Create density plot of old variable
# This is strongly right skewed & narrow
gap2007 %>%
  ggplot(aes(x = pop)) +
  geom_density()

# Transform the skewed pop variable by taking the natural log
gap2007 <- gap2007 %>%
  mutate(log_pop = log(pop))

# Create density plot of the log(pop)
# The graph is much nicer (but don't forget: units have changed)
gap2007 %>%
  ggplot(aes(x = log_pop)) +
  geom_density()
