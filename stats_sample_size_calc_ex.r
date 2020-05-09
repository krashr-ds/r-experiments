# Assign the standard deviation squared to new object "ss"
ss <- 1.25 ^ 2
# Assign the value of the Z-score squared to new object "zs"
zs <- 1.96 ^ 2
# Assign the value of the margin of error squared to the new object "ms"
ms <- 0.2 ^ 2
# Calculate the neccessary sample size
( ss * zs ) / ms


# Assign the value of p(1-p) to object "p"
p <- 0.25
# Assign the value of the Z-score to new object "z"
z <- 1.96
# Assign the value of the margin of error squared to the new object "ms"
ms <- .05^2
# Calculate the neccessary sample size
(p * z^2) / ms
