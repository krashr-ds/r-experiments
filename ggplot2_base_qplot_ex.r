# The old way (shown)
plot(mpg ~ wt, data = mtcars) # formula notation
with(mtcars, plot(wt, mpg)) # x, y notation

# Using ggplot:
ggplot(mtcars, aes(x = wt, y = mpg)) +
  geom_point()

# Using qplot:
qplot(wt, mpg, data = mtcars)
