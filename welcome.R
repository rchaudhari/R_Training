# *****************************************************************************
# Welcome to the Data Science with R Workshop (Part 1)
# *****************************************************************************

# What you are looking at is a script and we will be using scripts throughout
# the workshop to write and test code.

# To load the workshop package you use the library() function

library(datascienceRworkshop1)

# To open an exercise use the exercise() function

exercise(1)

# If you decide you want to re-open a fresh version of the exercise you can
# run the code again but you'll need to decide if you want to copy over
# the current version or if you want to rename and create a new version

exercise(1, overwrite = TRUE) # to overwrite
exercise(1, addToName = "_newversion") # will create exercise-1_newversion.R

# For the solution you would use the following code.
# For solution you also have the option of overwriting or renaming.

solution(1)



# *****************************************************************************
# Installing on your own machine
# *****************************************************************************

# To do the workshop on your own machine you will need to install R (3.3 or higher)
# and RStudio (0.99.902 or higher). Then you can install these packages

pkgs <- c('shiny', 'dplyr','ggplot2', 'ggplot2movies', 'babynames', 'pryr', 'microbenchmark', 
'MASS', 'RSQLite', 'hexbin', 'data.table', 'tidyr', 'data.frame')


install.packages(pkgs)

# Finally you will need to install the workshop package. You can get it from 
# this URL. Using browseURL may not work in RStudio Server, if not just
# copy and paste the URL. Do not unzip the file once downloaded.

browseURL("http://www.zevross.com/workshops/datascienceRworkshop1/package/datascienceRworkshop1_0.2.tar.gz")

# Then it's probably easiest if you use the RStudio pull-down to install
# (install from package archive)


# *****************************************************************************
# Installing on your own machine
# *****************************************************************************

# This may or may not work using RStudio server, if it doesn't work
# just copy, paste the URL
browseURL("https://www.rstudio.com/resources/cheatsheets/")









