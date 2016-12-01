# *****************************************************************************
# Data Science with R, Part 1: Exercise 1
# *****************************************************************************


# If you close R and want to look at solutions or other exercises you will need
# to re-load the workshop package
library(datascienceRworkshop1)

# *********************************
# ----- R system: Question 1
# *********************************

# For all of the exercises just write your answers below the question anywhere.
# I will not be checking your work.


# (A) If you were to write a file from R right now where on your computer would
# it go? (B) What command would you use to find that path and (C) what command would
# you use to change it?


# ----- Answer 1

#(A)

#(B)

#(C)



# *********************************
# ----- R system: Question 2
# *********************************


# We will test out the path by writing a file and seeing
# where it lands. 

# You will learn about this code later, create a data frame
x <- data.frame(a=1:5, b=1:5)

# where does this file go?
write.csv(x, file="Rworkshop.csv", row.names=FALSE)

# Can you remove the file with this code? If you can't, why not?

rm(Rworkshop.csv)



# ----- Answer 2








# *********************************
# ----- R system: Question 3
# *********************************


# What objects (if any) are in your workspace right now? What command would you use
# to find out? What command would you use to remove an object?


# ----- Answer 3

#(A)

#(B)

#(C)



# *********************************
# ----- R system: Question 4
# *********************************



# Run this code, what happens? Hint: you will get a warning! We will
# discuss the "?" very soon. For now just know that it's the way to get
# the documentation on a known function in a loaded package. See ?mean
# for an example that will work -- because it's in a loaded package.

?read.dbf

# The following code lists all the LOADED packages. Is the package called foreign
# listed?

search()


# This code lists all the INSTALLED packages (installed on your machine)
# do you see foreign in this list? (You might need to browse to the
# bottom of the list of packages)

library()


# ----- Answer 4




# *********************************
# ----- R system: Question 5
# *********************************

# You can only use a function (or find help on a function) if the
# package with the function is both installed AND loaded. With the
# foreign package it is installed but NOT loaded so let's load it with:

library(foreign)

# now what happens if you run

?read.dbf

# ----- Answer 5





# *********************************
# ----- R system: Question 6
# *********************************

# Now how about running

?vif

# I happen to know that the vif function is in the car package.
# Try library() and search() is the car package installed or loaded?


# ----- Answer 6






# *********************************
# ----- R system: Question 7
# *********************************


# The car package is not installed or loaded. If you are running
# RStudio on a local machine go ahead and install "car" (tools -> install). 
# If you're using RStudio Server don't install just yet but I do want
# you to pull down the tools menu and click on install.packages. Instead
# of installing, just click cancel after you take a look at the
# menu that pops up.




# ----- Answer 7




# *********************************
# ----- R system: Question 8
# *********************************

# If you are using RStudio Server, I will install car
# in the background for you. When I tell you I've done it
# you can complete question 8 -- until then you can 
# move on to question 9.



# This question assumes you were able to install the car package. Try
# typing ?vif again. Do you get a message? Why?

# Assuming you get a message, what do you need to do to get ?vif to
# work?



# ----- Answer 8






# *********************************
# ----- R system: Question 9
# *********************************


# Run the following function what kind of information does it provide?


sessionInfo()

# ----- Answer 9


# *********************************
# ----- R system: Question 10
# *********************************

# What package is the median function in (see the documentation for median)?
# How are these lines of code different? Do they perform the same calculation?
# What would be a situation where you would use the :: syntax?

median(1:10)
stats::median(1:10)


# ----- Answer 10


# *********************************
# ----- R system: Extra credit 1
# *********************************


# Use the RStudio Tools/Global Options/Appearance drop down menu and see if you
# can change the Editor theme to something with a dark background. Pick
# a theme you like.


# *********************************
# ----- R system: Extra credit 2
# *********************************


# Take a look at the Environment tab in one of your RStudio panes. Do you see
# any objects? What is the Environment tab showing you (e.g. workspace, working
# directory)?


# *********************************
# ----- R system: Extra credit 3
# *********************************

# Select all the code below and then click CTRL (or CMD)- I
# what happens? What about if you choose CTRL-SHIFT-C?


newobject <- mean(c(1,3,5,6,
10, 14, 13))

newfunction <- function(x,y){
return(x+y)
}


# *********************************
# ----- R system: Extra credit 4
# *********************************

# If you have time, please explore additional tabs in
# RStudio Tools/Global options -- for example, see if you can
# find "snippets" and figure out what they are.

