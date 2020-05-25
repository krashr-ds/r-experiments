# Using barely, plot yield vs. year, colored, grouped, and filled by site
ggplot(barley, aes(x = year, y = yield, color = site, group = site, fill = site)) +
  # Add a line summary stat aggregated by mean
  stat_summary(fun.y = mean, geom = "line") +
  # Add a ribbon summary stat with 10% opacity, no color
  stat_summary(fun.data = mean_sdl, fun.args = list(mult = 1), geom = "ribbon", alpha = 0.1, color = NA)
