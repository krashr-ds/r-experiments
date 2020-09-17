#DS Exercise
#Statistical Transformations

#p. 22

ggplot(data = diamonds) + 
  geom_bar(mapping = aes(x = cut))

# Same graph, using stat_count
ggplot(data = diamonds) +
  stat_count(mapping = aes(x = cut))

# Sample geom_bar using the identity value on the y axis

demo <- tribble(
  ~a, ~b,
  "bar_1", 20,
  "bar_2", 30,
  "bar_3", 40
)

ggplot(data = demo) + 
  geom_bar(
    mapping = aes(x = a, y = b), stat = "identity"
  )

# Proportional bar chart
# NOTE: To find the variables computed by the stat, look in help for "Computed Variables"
ggplot(data = diamonds) + 
  geom_bar(
    mapping = aes(x = cut, y = ..prop.., group = 1)
  )

# Draw more attention to the statistics
ggplot(data = diamonds) + 
  stat_summary(
    mapping = aes(x = cut, y = depth),
    fun.ymin = min,
    fun.ymax = max, 
    fun.y = median
  )

# See all statistical functions: ?stat_bin
# Or try the ggplot2 cheatsheat

# Color a bar chart
ggplot(data = diamonds) + 
  geom_bar(mapping = aes(x = cut, color = cut))

# Or FILL (better)
# default position = "stack"
ggplot(data = diamonds) + 
  geom_bar(mapping = aes(x = cut, fill = clarity))

# Three other position options: "identity"
# causes overlapping, so we either need to set alpha, or set fill=NA
# identity is more useful for geom_point, where it is the default

# overlapping semi-transparent fill (hard to read)
ggplot(
  data = diamonds,
  mapping = aes(x = cut, fill = clarity)
) + 
  geom_bar(alpha = 1/5, position = "identity")

# outlines
ggplot(
  data = diamonds,
  mapping = aes(x = cut, color = clarity)
) + 
  geom_bar(fill = NA, position = "identity")


# "fill"
# works like stack but fills the count as a proportion so you can compare bins
# (this diamonds clarity data looks especially good here)
ggplot(data = diamonds) +
  geom_bar(
    mapping = aes(x = cut, fill = clarity),
    position = "fill"
    )


# and "dodge"
# place the overlapping objects directly beside one another
ggplot(data = diamonds) +
  geom_bar(
    mapping = aes(x = cut, fill = clarity),
    position = "dodge"
  )

# Add jittering to dot plots to ensure ability to see all data points
ggplot(data = mpg) +
  geom_point(
    mapping = aes(x = displ, y = hwy),
    position = "jitter"
  )

