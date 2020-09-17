#DS Exercise

library(tidyverse)

# Dot Plot: - relationship between engine size (displ) and fuel efficiency (hwy)
ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ, y = hwy))

# 234 rows, 11 columns
# manufacturer, model, displ (engine size), year, cyl, trans, drv, cty, hwy, fl, class
glimpse(mpg)

# Add class information to dot plot with color & side legend
ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ, y = hwy, color = class))

# Continuous variable cannot be mapped to color
# You can convert to categorical with as.factor

# This almost works, but you can't see cyl data
ggplot(data = mpg) + 
  geom_point( 
      mapping = aes(x = displ, y = hwy, colour = as.factor(year), fill = as.factor(cyl)), size = 2, stroke = 3, pch = 2)

# facets by class, nrow tells how to stack it
ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy)) +
  facet_wrap(~class, nrow = 2)

# by two variables
# some cells with few data points
ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy)) +
  facet_wrap(drv ~ cyl)

# same as above
ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy)) +
  facet_wrap(c("drv", "cyl"))
  

# facet wrap a continuous variable
ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy)) +
  facet_wrap(~ cty)

# facet wrap with dot
ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy)) +
  facet_wrap(drv ~ .)

ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy)) +
  facet_wrap(. ~ cyl)

# Smoothing data - default method = "loess" and formula 'y ~ x'
ggplot(data = mpg) +
  geom_smooth(mapping = aes(x = displ, y = hwy))

# group by
ggplot(data = mpg) +
  geom_smooth(mapping = aes(x = displ, y = hwy, group = drv))

# color by group
ggplot(data = mpg) +
  geom_smooth(mapping = aes(x = displ, y = hwy, color = drv), show.legend = FALSE)

# smooth over point data
# TWO IN ONE!!
ggplot(data = mpg) + 
    geom_point(mapping = aes(x = displ, y = hwy)) +
    geom_smooth(mapping = aes(x = displ, y = hwy))

# Better way of doing the same thing - less duplication
ggplot(data = mpg, mapping = aes(x = displ, y = hwy)) + 
  geom_point() +
  geom_smooth()

# add color ONLY to the point geom
ggplot(data = mpg, mapping = aes(x = displ, y = hwy)) + 
  geom_point(mapping = aes(color = class)) +
  geom_smooth()

# filtering data in a graph layer (Very Important Technique)
# the smooth line layer ONLY FOLLOWS class "subcompact" (purple dots)
ggplot(data = mpg, mapping = aes(x = displ, y = hwy)) + 
  geom_point(mapping = aes(color = class)) +
  geom_smooth(
    data = filter(mpg, class == "subcompact"),
    se = FALSE
  )

# Creates a smoothing line for each drv type
# se = FALSE suppresses the standard error bars so you can see the lines more clearly
ggplot(data = mpg, 
       mapping = aes(x = displ, y = hwy, color = drv)) + 
  geom_point() +
  geom_smooth(se = FALSE)


# Page 21
# Graph 1
ggplot(data = mpg, mapping = aes(x = displ, y = hwy)) + 
  geom_point() +
  geom_smooth(se = FALSE)

# Graph 2
ggplot(data = mpg, mapping = aes(x = displ, y = hwy)) + 
  geom_point() +
  geom_smooth(aes(group = drv), se = FALSE)

# Graph 3
ggplot(data = mpg, mapping = aes(x = displ, y = hwy, color = drv)) + 
  geom_point() +
  geom_smooth(se = FALSE)

# Graph 4
ggplot(data = mpg, mapping = aes(x = displ, y = hwy)) + 
  geom_point(mapping = aes(color = drv)) +
  geom_smooth(se = FALSE)

# Graph 5
ggplot(data = mpg, mapping = aes(x = displ, y = hwy)) + 
  geom_point(mapping = aes(color = drv)) +
  geom_smooth(mapping = aes(linetype = drv), se = FALSE)

# Graph 6 # almost...
ggplot(data = mpg, mapping = aes(x = displ, y = hwy)) + 
  geom_point(mapping = aes(color = drv, fill = drv), size = 1, stroke = 1, pch=21) 


