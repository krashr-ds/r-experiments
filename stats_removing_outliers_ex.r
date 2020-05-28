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


#ANOTHER EXAMPLE
# Filter for Asia, add column indicating outliers
gap_asia <- gap2007 %>%
  filter(continent == "Asia") %>%
  mutate(is_outlier = lifeExp < 50)

# Remove outliers, create box plot of lifeExp
gap_asia %>%
  filter(! is_outlier) %>%
  ggplot(aes(x = 1, y = lifeExp)) +
  geom_boxplot()
