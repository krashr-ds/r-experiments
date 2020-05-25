ggplot(mtcars_by_cyl, aes(x = cyl, y = mean_wt)) +
  geom_col(aes(width = prop), fill = "skyblue") +
  # Add an errorbar layer
  geom_errorbar(
    # ... at mean weight plus or minus 1 std dev
    # NOTE: DO NOT PUT MATH IN PARENTHESES (WON'T WORK)
    aes(ymin = mean_wt - sd_wt, ymax = mean_wt + sd_wt),
    # with width 0.1
    width = 0.1
  )
