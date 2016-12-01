# *****************************************************************************
# Data Science with R, Part 1: Exercise 3
# *****************************************************************************


# R language basics (quick exercise)

# If you close R and want to look at solutions or other exercises you will need
# to re-load the workshop package
library(datascienceRworkshop1)

# *********************************
# ----- R language basics: Question 1
# *********************************

# Run the following code (don't re-type, just run this
# exact code). Why is it giving an error?


Speed <- c(55, 65, 30)
mean(speed)


# ----- Your answer



# *********************************
# ----- R language basics: Question 2
# *********************************

# Look at the following code. How would you test if x is equal to
# y? What about if x is NOT equal to z. Extra credit, how would you test
# if x is equal to y OR y is equal to z?

x <- 52
y <- 52
z <- 88




# ----- Answer 2



# *********************************
# ----- R language basics: Question 3
# *********************************

# Create vector of numbers 1,3,5,7, 9 with the combine function.
# Now use the help for the function seq. How would you create
# the same vector without typing each number?


# ----- Answer 3





# *********************************
# ----- R language basics: Question 4
# *********************************

# We will cover indexing in more detail. To start with a simple 
# example create a vector of letters. There is actually a built
# in constant in R for letters that we'll use for convenience.
# run this code and take a look at myvec.

myvec <- LETTERS

# We discussed using square brackets to index. How would you
# extract the letter "D" (4th letter)?

# I introduced you to the combine function. Here we use c()
# to create a vector of 4 and 6.

c(4,6)

# Can the piece of code above c(4,6) be included in the 
# square brackets to pull out the letters "D" and "F"?






# ----- Answer 4
myvec[-c(4,6)]


# *********************************
# ----- R language basics: Question 5
# *********************************

# See the arguments for paste and try to figure out how to 
# paste my_string below such that it looks like "a+b+c"
# if you're not using the sep argument does the collapse
# argument have to be named? See the help ?paste

my_string <- c("a", "b", "c")




# *********************************
# ----- R language basics: Extra credit 1
# *********************************

# Use function nesting to take the standard deviation (sd) of
# 1000 random normal values -- rnorm(1000). Run the
# code several times and see if you see a pattern.
# what is the default standard deviation for the rnorm
# function.

# > x <- rnorm(1000)
# > sd(x)
# [1] 1.033164
# > x <- rnorm(1000)
# > sd(x)
# [1] 0.9938373


# *********************************
# ----- R language basics: Extra credit 2
# *********************************

# A standard deviation is a square-root of a variance
# how would you see the underlying code for the sd() function


# >sd
# function (x, na.rm = FALSE) 
#   sqrt(var(if (is.vector(x) || is.factor(x)) x else as.double(x), 
#            na.rm = na.rm))
# <bytecode: 0x10bf75f50>
#   <environment: namespace:stats>


