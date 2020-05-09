# Check the structure as a starting point
str(fish.species)

# Use gather to go from fish.species to fish.tidy
# ARGS: data structure to tidy, Name of Key column (Species), Value column (Capture), and Grouping variable (with - in front)
fish.tidy <- gather(fish.species, Species, Capture, -Year)
