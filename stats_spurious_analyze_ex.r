# Create faceted scatterplot
ggplot(noise, aes(x = x, y = y)) +
  geom_point() + 
  facet_wrap(vars(z))


# Compute correlations for each dataset
noise_summary <- noise %>%
  group_by(z) %>%
  summarize(N = n(), spurious_cor = cor(x, y))

# Isolate sets with correlations above 0.2 in absolute strength
noise_summary %>%
  filter(abs(spurious_cor) > 0.2)
