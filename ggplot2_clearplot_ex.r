# Change type
TG$dose <- as.numeric(as.character(TG$dose))

# Plot
growth_by_dose <- ggplot(TG, aes(dose, len, color = supp)) +
  stat_summary(fun.data = mean_sdl,
               fun.args = list(mult = 1),
               position = position_dodge(0.2)) +
  stat_summary(fun.y = mean,
               geom = "line",
               position = position_dodge(0.1)) +
  theme_classic() +
  # Adjust labels and colors:
  labs(x = "Dose (mg/day)", y = "Odontoblasts length (mean, standard deviation)", color = "Supplement") +
  scale_color_brewer(palette = "Set1", labels = c("Orange juice", "Ascorbic acid")) +
  scale_y_continuous(limits = c(0,35), breaks = seq(0, 35, 5), expand = c(0,0))

# View plot
growth_by_dose
