# Facet hists using hwy mileage and ncyl
common_cyl %>%
  ggplot(aes(x = hwy_mpg)) +
  geom_histogram() +
  facet_grid(ncyl ~ suv, labeller = label_both) +
  ggtitle("Highway MPG by Cylinders per SUV")
