# Compute groupwise measures of spread
gap2007 %>%
  group_by(continent) %>%
  summarize(sd(lifeExp),
            IQR(lifeExp),
            n())

# Generate overlaid density plots
gap2007 %>%
  ggplot(aes(x = lifeExp, fill = continent)) +
  geom_density(alpha = 0.3)


# Compute stats for lifeExp in Americas
# This is a relatively normally-distributed curve
gap2007 %>%
  filter(continent == "Americas") %>%
  summarize(mean(lifeExp),
            sd(lifeExp))

# Compute stats for population
# This is a heavily skewed curve with many outliers 
gap2007 %>%
  summarize(median(pop),
            IQR(pop))
