# *****************************************************************************
# Data Science with R, Part 1: Exercise 6
# *****************************************************************************

# For this exercise we will use the Melanoma dataset from the MASS package
# for details see ?Melanoma


# If you close R and want to look at solutions or other exercises you will need
# to re-load the workshop package
library(datascienceRworkshop1)


# *******************************************************************
# ----- dplyr: Question 1
# *******************************************************************

# A little administration before the fun.
# First see what packages are loaded using:

search()

# Let's unload dplyr and MASS if they are loaded using this detach code
# If you get an "Error ... invalid 'name' argument" this
# is fine, just means that package is not loaded.

detach(package:dplyr)
detach(package:MASS)

# Now type:

select()

# What do you get and why?


# ----- Answer 1








# *******************************************************************
# ----- dplyr: Question 2
# *******************************************************************

# Now let's load both libraries

library(dplyr)
library(MASS)
data(Melanoma)

# take a look at the message you get in the console window when you load MASS.
# What does it say about select? (You might also get a warning about Melanoma
# and the '.GlobalEnv' -- this is because you have a Melanoma dataset in your
# workspace and then you load MASS which also has a Melanoma dataset)


# Hmmm... let's try to use select to select columns in Melanoma, do you get
# an error? Any idea why?

select(Melanoma, age, year)

# now type

?select

# does it come up with the help for a single function? If not which
# packages appear to have a select function?


# ----- Answer 2
# YES








# *******************************************************************
# ----- dplyr: Question 3
# *******************************************************************

# The problem above is not that common, but it happens. When two packages have
# the same function then the package with the function you want
# to use must be loaded SECOND! So let's try again

detach(package:dplyr)
detach(package:MASS)

library(MASS)
library(dplyr) #dplyr second!
data(Melanoma)

# now try to use the select function to select the fields age and thickness.
# Does it work?



# ----- Answer 3






# *******************************************************************
# ----- dplyr: Question 4
# *******************************************************************

# What would the code be to select all the Melanoma columns EXCEPT
# for status?



# ----- Answer 4
# > select(Melanoma, -status)







# *******************************************************************
# ----- dplyr: Question 5
# *******************************************************************

# Use dplyr's mutate function to create a new field called "source_table"
# with the value "Melanoma" and alter the sex field to read
# "male" and "female" rather than 1,0.

# You should overwrite the current Melanoma with code like
# Melanoma <- mutate(Melanoma, etc)


# hint: for recoding sex with base R you would use the following code
# factor(Melanoma$sex, levels=c(1,0), labels=c("Male", "Female"))
# remember you don't need the Melanoma$ when using dplyr

# Your table should look something like this:

# time status      sex age year thickness ulcer  source_table
#   10      3     Male  76 1972      6.76     1  Melanoma
#   30      3     Male  56 1968      0.65     0  Melanoma
#   35      2     Male  41 1977      1.34     0  Melanoma
#   99      3   Female  71 1968      2.90     0  Melanoma
#  185      1     Male  52 1965     12.08     1  Melanoma
#  204      1     Male  28 1971      4.84     1  Melanoma



# ----- Answer 5



# *******************************************************************
# ----- dplyr: Question 6
# *******************************************************************

# Use dplyr's filter function to create a new table with only males.
# Careful about if you use = or ==



# ----- Answer 6





# *******************************************************************
# ----- dplyr: Question 7
# *******************************************************************

# Create a new table based on the original Melanoma table that is
# sorted by thickness (hint: arrange function)



# ----- Answer 7




# *******************************************************************
# ----- dplyr: Question 8
# *******************************************************************

# What is the average age by sex (you will need group_by and summarize)
# see the help for group_by for examples



# ----- Answer




# *******************************************************************
# ----- dplyr: Question 9
# *******************************************************************

# Describe, in words, what this code does and then re-arrange using pipes

grp <- group_by(Melanoma, year)
avg <- summarize(grp, avgthick = mean(thickness), numberulcer = sum(ulcer==1))
dat <- mutate(avg, newcol = "mynewcol")
dat2 <- arrange(dat, numberulcer)


# ----- Answer 9



# *******************************************************************
# ----- dplyr: Question 10
# *******************************************************************

# Run this code (down to head(dat4)). It creates two tables that can be joined.

# mean time by year
dat3 <- group_by(Melanoma, year) %>% summarize(meantime = mean(time))
# mean thicknesss by year (limited to year>1970)
dat4 <- filter(Melanoma, year>1970) %>% group_by(year) %>% summarize(meanthick = mean(thickness))

head(dat3)
head(dat4)

# how would you join these two tables making sure to keep ALL
# records from both tables? What if you only wanted to keep
# matched records. Try ?join

# ----- Answer 10


# *******************************************************************
# ----- dplyr: Question 11
# *******************************************************************

# For this question create a new dataset where you calculate the average
# thickness by age and status first

# Once you have that use the spread function to make a table in the long format
# that looks like this. You will need to rename the variables yourself.
  
#     age status1 status2 status3
#       4      NA    2.74      NA
#      12      NA    7.09      NA
#      14    2.42      NA      NA
#      15      NA    0.58      NA

# Don't forget to load the appropriate package.







# *******************************************************************
# ----- dplyr: Question 12
# *******************************************************************

# Try converting the wide table you just created to a long format table
# that looks like this. See the help for gather. Use the solution if you
# need to.

#     age  status thickness
#       4 status1        NA
#      12 status1        NA
#      14 status1      2.42
#      15 status1        NA








# *******************************************************************
# ----- dplyr: EXTRA CREDIT 1
# *******************************************************************

# The agriculture data


filepath <- system.file("data-raw/agriCanada_example.csv", package="datascienceRworkshop1")
agri <- read.csv(filepath, stringsAsFactors = TRUE)


# We used the following commented out code to create a new date field
# and then filter to days with MaxTemp greater than 30 in 
# an earlier exercise. I want you to convert this code to dplyr syntax 
# (mutate and filter) -- use magrittr to use pipes. Remember you will 
# not need agri$


# agri$date<-as.Date(paste(agri$Year, agri$Mon, agri$Day, sep="-"))
# agri2 <- agri[agri$MaxTemp>30,]

# If you already have a date field why don't you delete it and start
# fresh with
agri$date <- NULL





