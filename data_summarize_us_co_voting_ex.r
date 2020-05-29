library(ggplot2)

# Filter, then summarize by year: US_co_by_year
# United States voting on colonialism by year
# This dataset is a combination of UN voting data & descriptions data pre-joined on rcid and session
US_co_by_year <- votes_joined %>%
  filter(country == "United States" & co == 1) %>%
  group_by(year) %>%
  summarize(percent_yes = mean(vote ==1))

# Graph the % of "yes" votes over time
ggplot(US_co_by_year, aes(x = year, y = percent_yes)) +
  geom_line()
