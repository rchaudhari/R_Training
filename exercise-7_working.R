# *****************************************************************************
# Data Science with R, Part 1: Exercise 7
# *****************************************************************************

# For this exercise we will be using the Animals dataset from the MASS package
# To learn about it use help. This includes extinct animals like dinosaurs

?Animals

# I don't want to load the MASS package, though, since it will mask the select
# function from dplyr so let's load like this

animals <- MASS::Animals

# Important note about Animals dataset. I almost never
# use the row names, but this dataset put the animal
# name in the rows. If you want to convert this to a 
# variable (though not required for this exercise) 
# you can use

animals$animal <- row.names(animals)
row.names(animals) <- NULL # will make row names 1, 2, etc

# If you close R and want to look at solutions or other exercises you will need
# to re-load the workshop package
library(datascienceRworkshop1)

# *********************************
# ----- Plotting (traditional): Question 1
# *********************************

# Experiment with the 'type' argument. What do these do?
# Any idea why you might use type='n'?

plot(1:10, 1:10, type="p")
plot(1:10, 1:10, type="l")

# ----- Answer 1






# *********************************
# ----- Plotting (traditional): Question 2
# *********************************

# Spend a couple of minutes experimenting with the Rstudio plot
# pane. See what each of the buttons will do


# ----- Answer 2





# *********************************
# ----- Plotting (traditional): Question 3
# *********************************

# As I mentioned in the presentation, writing to a PDF or JPG is
# easy in R.The only trick is that you have to remember to turn the
# graphics device off when you’re done, otherwise R will keep writing
# to that PDF file. Try writing to a PDF yourself:

# this will write to your working directory. Since we're using RStudio
# server you can't really change the working directory but on your
# own computer this might be a project folder.

pdf("mydoc.pdf")
plot(1:10)
plot(1:100)
dev.off()

# Now open the PDF (which shows up in the files tab of RStudio) is there 
# one page of plots or two pages? Note that you will get a warning about
# a pop-up blocker 



# ----- Answer 3







# *********************************
# ----- Plotting (traditional): Question 4
# *********************************



# What code would you use to create a histogram brain weight
# from the animals dataset? Try to make the bar outlines white
# and the bar fills black. The x-axis label should be "Brain weight".





# ----- Answer 4







# *********************************
# ----- Plotting (traditional): Question 5
# *********************************

# Add a vertical line to your histogram at the median. (Hint:
# you will be using the abline function and the median function).
# It might look good with a color of red and see what lty="dashed"
# does as an argument. If you're having trouble don't forget to use
# help ?abline





# ----- Answer 5






# *********************************
# ----- Plotting (traditional): Question 6
# *********************************

# Add a box around your histogram. See if you can find the right
# function in the graphics package by typing ??box.

# what would the code be for a red box with a thick line? (Hint:
# lwd controls line thickness. You can also type colors() for a
# full list of colors if you'd like to use another color



# ----- Answer 6




# *********************************
# ----- Plotting (traditional): Question 7
# *********************************

# Create a scatter plot body (on x) and brain (on y) weights
# and label the x, y and title. Using base or dplyr determine
# which animal has a very big body but small brain. What about
# a big brain relative to body size.

# Try creating a second version of the plot where you include
# only those with a body weight less than 20000





# ----- Answer 7






# *********************************
# ----- Plotting (traditional): Question 8
# *********************************

# How would you change the symbol on the scatter plot from an
# open circle to a closed circle? (Hint: the argument is pch and the value you
# want is 16). What happens if instead of a number, you gave the pch argument 
# a value, in quotations, like "*" or "A"?





# ----- Answer 8



# *********************************
# ----- Plotting (traditional): Question 9
# *********************************

# Use dplyr to create two datasets, one with bodies > 7500 
# and one with bodies <= 7500. Create a scatter plot using 
# the full but dataset but use type="n" to leave off points
# Then use a low-level function to add the points from each
# subset with a different color.






# *********************************
# ----- Plotting (traditional): Question 10
# *********************************

# In an earlier exercise we excluded bodies > 20k but 
# we didn't mention it in the title. Here is the code

animals2 <- animals[animals$body<20000,]
plot(animals2$body, animals2$brain,
     ylab="Brain weight (kg)", xlab="Body weight (kg)",
     main="Scatter Plot of Brain vs Body Weight")


# Let's add "(excluding bodies > 20k)" to the title, but we 
# want it on a different line. You can use "\n" in the middle of your
# string to force a new line. Re-write the title above to include
# the new text on a new line.




# ----- Answer 10



# *********************************
# ----- Plotting (traditional): Question 11
# *********************************



# For fun. What does the following line of code do

plot(1:10, 1:10, col=1:10, pch=16, cex=1.3)

# How about this?

plot(1:10, 1:10, col=1:10, pch=16, cex=1:10)

# And this?

plot(1:10, 1:10, type="n")
abline(h=1:10, lwd=1:10, col=1:10)



# *********************************
# ----- Plotting (traditional): EXTRA CREDIT 1
# *********************************

# See if you can put the three plots on the same plotting
# window in three different ways:
# (a) Three plots in 1 row
# (b) Three plots in 1 column
# (c) Plotting all three in a 2 x 2 plotting window.

# The argument is mfrow, the function is par. The very first
# example in ?par is close but you can drop the pty="s" argument
# In google typing "r mfrow par" will get you examples.

# If the plots look really strange or you get a warning about
# margins, you might need to make the plot viewer in RStudio
# larger







