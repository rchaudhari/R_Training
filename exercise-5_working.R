# *****************************************************************************
# Data Science with R, Part 1: Exercise 5
# *****************************************************************************


# Working with R objects: For this exercise we will be using the movies
# dataset

library(ggplot2movies)
data(movies)

# if you make a mistake and want to refresh simply type data(movies) again
# try it:

movies <- 1  # oops!!! Wrote over movies
movies # check, yep I wrote over it
data(movies) # reload it
head(movies) # phew

# If you close R and want to look at solutions or other exercises you will need
# to re-load the workshop package
library(datascienceRworkshop1)


# *******************************************************************
# ----- Working with R objects: Question 1
# *******************************************************************

# Remember that you can use a ? to find help on a specific function
# or data set and you can use ?? to search more generally for functions. Try,
# for example, typing ?movies. What happens if you type ?Sort with a
# capital "S"? How about if you type ??Sort.



# ----- Answer 1






# *******************************************************************
# ----- Working with R objects: Question 2
# *******************************************************************

# Type class(movies). What kind of object is movies (for
# example, is it a vector, matrix or data frame)?



# ----- Answer 2
#Data Frame



# *******************************************************************
# ----- Working with R objects: Question 3
# *******************************************************************

# How would you extract the value from the 3th row and 2th column?



# ----- Answer 3
# movies[[3,2]]



# *******************************************************************
# ----- Working with R objects: Question 4
# *******************************************************************

# What would you type to take a quick look at the first few rows of
# the data frame?



# ----- Answer 4
# head(movies)




# *******************************************************************
# ----- Working with R objects: Question 5
# *******************************************************************

# How would you extract just the 1st, 5th and 100th record from this
# data frame? Don't forget the combine function.



# ----- Answer 5
# movies[c(1,5,100),]




# *******************************************************************
# ----- Working with R objects: Question 6
# *******************************************************************

# Create a new dataset that consists of just the comedies from the data.



# ----- Answer  6
# comedy_movies <- movies[movies$Comedy == 1,]




# *******************************************************************
# ----- Working with R objects: Question 7
# *******************************************************************

# How would you create a dataset of comedies from 1920 -- limit your
# dataset to just the title, year and rating columns. What is the
# top rated comedy from that year (don't use sort or order, just look
# at the values in the console)? Save this object as comedy1920





# ----- Answer
# comedy_1920 <- comedy_movies[comedy_movies$year == 1920,c("title","year","rating")]



# *******************************************************************
# ----- Working with R objects: Question 8
# *******************************************************************

# How would you create a new vector called myvector from the first
# 10 comedy ratings from comedy1920?



# ----- Answer
# myvector <- comedy_1920$rating[1:10]


# *******************************************************************
# ----- Working with R objects: Question 9
# *******************************************************************

# How many records (rows) are in the movies dataset? There are several
# ways to see this. The cheat sheet might help, you could also use the
# RStudio environment tab.



# ----- Answer
# base::nrow(movies)



# *******************************************************************
# ----- Working with R objects: Question 10
# *******************************************************************

# Try typing str(movies). Does this give you the same information
# as that in Questions 4 and 9?



# ----- Answer





# *******************************************************************
# ----- Working with R objects: EXTRA CREDIT 1
# *******************************************************************

# Create a new data.frame with three columns. Have these be
# restaurant, streetname and cuisine. Use restaurants you know
# and create 3 or 4 rows.

# Now add a fourth column using the $ symbol called rating
# and rate each restaurant (out of 5).

# Add one new column that is a TRUE/FALSE and call
# it "open_now"  -- for the exercise be sure to include at least
# one TRUE and one FALSE

# Final step, filter your data to records where the restaurant is
# open now. Careful about how many equals signs you use.

# --- Solution ----
# > restaurants <- data.frame(
#   + restaurant = c("Bawarchi","Paradise","South Heaven"),
#   + streetname = c("Roselle","Higgins","Golf"),
#   + cuisine = c("Hyderabadi","Gujarathi","South Indian"))
# > restaurants
# restaurant streetname      cuisine
# 1     Bawarchi    Roselle   Hyderabadi
# 2     Paradise    Higgins    Gujarathi
# 3 South Heaven       Golf South Indian
# > restaurants$rating <- c(5,3,2)
# > restaurants
# restaurant streetname      cuisine rating
# 1     Bawarchi    Roselle   Hyderabadi      5
# 2     Paradise    Higgins    Gujarathi      3
# 3 South Heaven       Golf South Indian      2
# > restaurants$open_now <- c(TRUE,FALSE,TRUE)
# > restaurants
# restaurant streetname      cuisine rating open_now
# 1     Bawarchi    Roselle   Hyderabadi      5     TRUE
# 2     Paradise    Higgins    Gujarathi      3    FALSE
# 3 South Heaven       Golf South Indian      2     TRUE
# > restaurants[restaurants$open_now == TRUE,]
# restaurant streetname      cuisine rating open_now
# 1     Bawarchi    Roselle   Hyderabadi      5     TRUE
# 3 South Heaven       Golf South Indian      2     TRUE

# *******************************************************************
# ----- STOP HERE TEMPORARILY
# *******************************************************************




# *******************************************************************
# ----- Working with R objects: Question 11
# *******************************************************************

# What is the mean movie rating?



# ----- Answer
#5.93285


# *******************************************************************
# ----- Working with R objects: Question 12
# *******************************************************************


# What class is the mpaa field (Hint: use the class() function)?

# > class(movies$mpaa)
# [1] "character"

# The creator of this dataset set the missing values for mpaa
# as empty strings rather than the more common NA.
# Once you determine what class the field is limit the dataset 
# to those with an MPAA rating by running the following code:


movies <- movies[movies$mpaa != "",]




# ----- Answer



# *******************************************************************
# ----- Working with R objects: Question 13
# *******************************************************************

# How many PG movies are in the dataset? Take a look at the help
# for the table function (?table). You could apply the table
# function to the mpaa variable (careful not to try to apply
# the table function to the full dataset -- this would take
# a long time). 



# ----- Answer
# > base::nrow(movies[movies$mpaa == "PG",])
# [1] 528
# or use table(movies$mpaa)



# *******************************************************************
# ----- Working with R objects: Question 14
# *******************************************************************

# There is an alternate way of answering Question 13. Try running:

movies$mpaa == "PG"

# What does it produce? Now try summing the TRUE and FALSE values with:

sum(movies$mpaa == "PG")

# what does this give you?



# ----- Answer 14
# > sum(movies$mpaa == "PG")
# [1] 528


# *******************************************************************
# ----- Working with R objects: Question 15
# *******************************************************************

# What does the subset function do here:

tmp <- subset(movies, mpaa == "PG")
head(tmp)

# How might you use the subset function to extract movies 
# that are longer than 4 hours (the length field is in minutes)




# ----- Answer 15
# tmp <- subset(movies,length >= 240)


# *******************************************************************
# ----- Working with R objects: Question 16
# *******************************************************************

# Creating a new field in R is easy. Try running:

movies$many_votes <- movies$votes > 1000

# Try to create a new field called rating.centered by
# "centering" the current rating field (in other words, subtract the mean rating
# from the rating). What is the mean of rating.centered? Note that the result
# will be in scientific notation.



# ----- Answer 16
# movies$rating.centered <- movies$rating - mean(movies$rating)


# *******************************************************************
# ----- Working with R objects: Question 17
# *******************************************************************

# To test if a field or dataset has any NA values you can use the
# is.na() function. Try, for example:

is.na(c(1,2,NA, 4))

# What percentage of the budget field is NA? (Remember you can use
# sum on TRUE/FALSE)



# ----- Answer
# > sum(is.na(movies$budget))/nrow(movies)
# [1] 0.6318034






# *******************************************************************
# ----- Working with R objects: Question 18
# *******************************************************************

# Run the following code

x <- c(1, 2, 3, 4, NA, 5, 6)

# What is the mean of x

# ----- Answer 18
# > mean(x)
# [1] NA
# If any of the value in the mean function is NA, then the result is NA unless NA values are skipped

# *******************************************************************
# ----- Working with R objects: Question 19
# *******************************************************************

# Run the following code

x <- c("1", "2", "3", "4")

# Let's pretend you received this data and you know it should be
# numbers not strings. How would you compute the mean?

# ----- Answer 19
# > y <- as.numeric(x)
# > mean(y)
# [1] 2.5


# *******************************************************************
# ----- Working with R objects: Question 20
# *******************************************************************

# Run the following code

df <- data.frame(1:3, 1:3)

# What are the column names? What about the row names? How might you
# rewrite the code above to assign column names? 

# You can also change row and column names manually after creating the
# data.frame. See names(), colnames() and rownames(). Change the
# column names to "a" and "b". Change the row names to "one", "two"
# "three"


# ----- Answer 20
# > df <- data.frame(1:3, 1:3, row.names = c("one","two","three"))
# > df
# X1.3 X1.3.1
# one      1      1
# two      2      2
# three    3      3
# > names(df) <- c("a","b")
# > df
# a b
# one   1 1
# two   2 2
# three 3 3


# *******************************************************************
# ----- Working with R objects: EXTRA CREDIT 2
# *******************************************************************

# We will read a comma-separated file provided by Agriculture and
# Agri-Food Canada. Normally you would simply type the path to the
# file but since the file is stored in the R package we can use
# a handy function to get the path

filepath <- system.file("data-raw/agriCanada_example.csv", package="datascienceRworkshop1")
filepath # take a look at the path

# Use the read.csv function to read in the data, use stringsAsFactors=FALSE
# the file argument will be the path to the file. See the help ?read.csv. Call
# your object agri

# agri <- read.csv(filepath,stringsAsFactors = FALSE)

# Use the head function to take a quick look at the data.

# We will discuss plotting later but for now take a look
# at max temperature with

plot(agri$MaxTemp)

# Converting to a date can be a pain. Run this code and try to
# understand what each piece is doing.


agri$date<-as.Date(paste(agri$Year, agri$Mon, agri$Day, sep="-"))


# Now you can plot with

plot(agri$date, agri$MaxTemp)


# Final step, you should filter the data to days with temperatures above 30
# and run the plot again on this subset

# agri <- agri[agri$MaxTemp >= 30,]




