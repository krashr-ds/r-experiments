# Print bdims_summary
bdims_summary
#    N         r mean_hgt   sd_hgt mean_wgt   sd_wgt
#1 507 0.7173011 171.1438 9.407205 69.14753 13.34576

# Add slope and intercept
bdims_summary %>%
  mutate(slope = r * sd_wgt / sd_hgt, 
         intercept = mean_wgt - slope * mean_hgt)
#   N    r       mean_hgt sd_hgt  mean_wgt  sd_wgt    slope   intercept
#1 507 0.7173011 171.1438 9.407205 69.14753 13.34576 1.017617 -105.0113
