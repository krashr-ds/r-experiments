# The heat map we want to replace
# Don't remove, it's here to help you!
ggplot(barley, aes(x = year, y = variety, fill = yield)) +
  geom_tile() +
  facet_wrap( ~ site, ncol = 1) +
  scale_fill_gradientn(colors = brewer.pal(9, "Reds"))

# Using barley, plot yield vs. year, colored and grouped by variety
ggplot(barley, aes(year, yield, color = variety, group = variety)) +
  # Add a line layer
  geom_line() +
  # Facet, wrapping by site, with 1 row
  facet_wrap( ~ site, nrow = 1)
