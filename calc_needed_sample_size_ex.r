# Assign the standard deviation squared to new object "ss"
ss <- 1.25 ^ 2
# Assign the value of the Z-score squared to new object "zs"
zs <- 1.96 ^ 2
# Assign the value of the margin of error squared to the new object "ms"
ms <- 0.2 ^ 2
# Calculate the neccessary sample size
( ss * zs ) / ms
