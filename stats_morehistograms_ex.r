# Create hist of horsepwr
cars %>%
  ggplot(aes(x = horsepwr)) +
  geom_histogram() +
  ggtitle("Horsepower of Automobiles")

# Create hist of horsepwr for affordable cars
cars %>% 
  filter(msrp < 25000) %>%
  ggplot(aes(x = horsepwr)) +
  geom_histogram() +
  xlim(c(90, 550)) +
  ggtitle("Horsepower of Automobiles with MSRP < $25,000")
