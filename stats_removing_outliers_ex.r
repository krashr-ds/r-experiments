# Uses library(broom)
# Create nontrivial_players
nontrivial_players <- mlbBat10 %>%
  filter(AB >= 10 & OBP < 0.500)

# Fit model to new data
mod_cleaner <- lm(SLG ~ OBP, data = nontrivial_players)

# View model summary
summary(mod_cleaner)
summary(mod)

# Visualize new model
ggplot(data = nontrivial_players, aes(x = OBP, y = SLG)) +
  geom_point() + 
  geom_smooth(method = "lm")
