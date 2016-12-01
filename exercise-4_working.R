# *****************************************************************************
# Data Science with R, Part 1: Exercise 4
# *****************************************************************************


# R objects (quick exercise)

# If you close R and want to look at solutions or other exercises you will need
# to re-load the workshop package
library(datascienceRworkshop1)

# *******************************************************************
# ----- R objects: Question 1
# *******************************************************************

# Create a vector of your first, middle and last names. Then create
# a vector of the words "first", "middle" and "last"



# ----- Answer 1






# *******************************************************************
# ----- R objects: Question 2
# *******************************************************************

# Use the function class() on one of your vectors. What class is it?




# ----- Answer 2




# *******************************************************************
# ----- R objects: Question 3
# *******************************************************************

# Run this code:

dat <- matrix(1:100, nrow=10)


# Now run class(dat) --  What does it tell you?





# ----- Answer 3





# *******************************************************************
# ----- R objects: Question 4
# *******************************************************************

# Lists are tough, we will talk about them more in the subsetting
# section but here is a short introduction.

mylist

# take a look at it. The information under each
# double bracket is a single element in the list

mylist


# you can grab individual items with double brackets

mylist[[2]]


# Both of these lines create a list but they're different
# how are they different?

list(1:3)
as.list(1:3)




# ----- Answer 4




# *******************************************************************
# ----- R objects: Question 5
# *******************************************************************

# Here is the basic format for a function

functionName <- function(input){
  # do something
  object_to_return
}


# So a very simple example might be

new_function <- function(myinput1, myinput2){

  do_stuff <- paste(myinput1, myinput2, sep="...")
  do_stuff# this is what get returned to the user

}


# Run the new_function code first -- select all the lines of the
# function and use CTRL-enter and then apply the function below


new_function("R", "is challenging sometimes")
new_function("R", "is powerful")



# use the basic structure above to create a function that accepts a
# number and returns that same value + 10



# ----- Answer 5



# *******************************************************************
# ----- R objects: EXTRA CREDIT 1
# *******************************************************************

# create your own function to compute and return the mean and
# standard deviation of a vector. You will want to create a vector
# with two values (mean and standard deviation) and return this vector

# > myfunc <- function(inpt1) {
#   +    return(c(mean(inpt1),sd(inpt1)))
#   + }
# > myfunc(1:10)
# [1] 5.50000 3.02765




