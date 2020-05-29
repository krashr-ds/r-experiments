# Uses dplyr, tidyr, purrr & broom

country_coefficients <- by_year_country %>%

  # nest everything except country into data
  nest(-country) %>%
  
  # map a linear regression model y explained by x (y ~ x) onto each dataset in data,
  # then map the tidy function onto each model to produce & save summary statistics (Intercept & slope)
  mutate(model = map(data, ~ lm(percent_yes ~ year, data = .)),
         tidied = map(model, tidy)) %>%
         
  # unnest the summary statistics from each model to bring them back to the top data level
  unnest(tidied)


# Print the resulting country_coefficients variable
country_coefficients
