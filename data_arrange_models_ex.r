# For a pre-created model percent_yes (y-axis / dependent) ~ "explained by" year (x-axis / independent)
# where linear models have been added to the tibble

# Filter by adjusted p-values
filtered_countries <- country_coefficients %>%
  filter(term == "year") %>%
  mutate(p.adjusted = p.adjust(p.value)) %>%
  filter(p.adjusted < .05)

# Sort for the countries increasing their "percent_yes" most quickly
# The "estimate" is the coefficient for year, the independent variable
# predicting the change in percent_yes, the dependent variable

filtered_countries %>%
  arrange(desc(estimate))


# Sort for the countries decreasing most quickly
filtered_countries %>%
  arrange(estimate)
