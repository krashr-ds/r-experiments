#Assign the value of mtcars to the new variable mtcars2
mtcars2 <- mtcars

#Assign the label "high" to mpgcategory where mpg is greater than or equal to 20
mtcars2$mpgcategory[mtcars2$mpg >= 20] <- "high"

#Assign the label "low" to mpgcategory where mpg is less than 20
mtcars2$mpgcategory[mtcars2$mpg < 20] <- "low"

#Assign mpgcategory as factor to mpgfactor
mtcars2$mpgfactor <- as.factor(mtcars2$mpgcategory)
