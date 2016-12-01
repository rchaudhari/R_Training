# Solutions to exercise-5





# *********************************
# ----- Solution 1
# *********************************

# If you loaded the movies dataset then ?movies will bring
# up the help for this dataset. ?Sort will tell you there is
# "No documentation for 'Sort' ..." and ??Sort will bring up a
# list of possible functions among the packages that you have INSTALLED.



# *********************************
# ----- Solution 2
# *********************************


# movies has three classes tbl_df, tbl and data.frame
# For the most part it can be considered a "regular"
# data.frame. The tbl_df class is from the dplyr
# package (which we will talk about soon) and is added
# for more informative printing to the console. But this
# won't happen unless you have dplyr loaded. We will
# discuss more later

head(movies)


# *********************************
# ----- Solution 3
# *********************************

# To get the 5th row and 4th column

movies[3,2] #1941




# *********************************
# ----- Solution 4
# *********************************

#To look at the first few rows you have a couple of options:

head(movies)
movies[1:5,]
str(movies)


# *********************************
# ----- Solution 5
# *********************************


#To get the 1st, 5th and 100th record you would use:

movies[c(1,5,100),]

# you could also do:

myrows <- c(1,5,100)
movies[myrows,]


# *********************************
# ----- Solution 6
# *********************************

# To get just the comedies

comedy <- movies[movies$Comedy==1,]

# or

comedy <- subset(movies, Comedy==1)



# *********************************
# ----- Solution 7
# *********************************


comedy1920 <- movies[movies$Comedy==1 & movies$year == 1920, c("title", "year", "rating")]

# it looks like Nurse Marjorie is top. You can order the data
# using this approach -- but we'll learn a better approach
# later. Note that order does the order and rev will reverse the
# ordering.

comedy1920 <- movies[movies$Comedy==1 & movies$year == 1920, c("title", "year", "rating")]
comedy1920[rev(order(comedy1920$rating)),]

# *********************************
# ----- Solution 8
# *********************************


# to create a vector of the first 10 thickness values
# you have a couple of options

myvector <- comedy1920$rating[1:10]

# OR

myvector <- comedy1920[1:10, "rating"]


# Note that you could also do the following. But I highly
# recommend that you use the names rather than positions
# because positions change.

comedy1920[1:10, 3]


# *********************************
# ----- Solution 9
# *********************************

# all three of these lines of code will give
# you the number of rows (58788). Note that you 
# can also look at the Environment tab

nrow(movies)
dim(movies) 
str(movies)





# *********************************
# ----- Solution 10
# *********************************

# The str() function gives you more detail than
# head, nrow or dim



# *******************************************************************
# ----- Solution to EXTRA CREDIT 1
# *******************************************************************

# Create a new data.frame with three columns. Have these be
# restaurant, streetname and cuisine. Use restaurants you know
# and create 3 or 4 rows.

dat <- data.frame(
  restaurant = c("Asia Cuisine", "Saigon Kitchen", "Just a Taste"),
  streetname = c("Aurora", "State", "Aurora"),
  cuisine    = c("Korean", "Vietnamese", "Tapas")
)

# Now create a fourth column using the $ symbol called rating
# and rate each restaurant.

dat$rating <- c(5,5,5)


# Add one new column that is a TRUE/FALSE and call
# it "open_now"  -- for the exercise be sure to include at least
# one TRUE and one FALSE

dat$open_now <- c(TRUE, TRUE, FALSE)

# Final step, filter your data to open_now ==

dat[dat$open_now == TRUE, ]

# Since open_now is already a TRUE/FALSE you can also do:


dat[dat$open_now, ]

# --- Solution ----
# restaurants <- data.frame(
#   + restaurant = c("Bawarchi","Paradise","South Heaven"),
#   + streetname = c("Roselle","Higgins","Golf")
#   + ,
#   + cuisine = c("Hyderabadi","Gujarathi","South Indian"))
# > restaurants
# restaurant streetname      cuisine
# 1     Bawarchi    Roselle   Hyderabadi
# 2     Paradise    Higgins    Gujarathi
# 3 South Heaven       Golf South Indian

# *******************************************************************
# ----- STOP HERE TEMPORARILY
# *******************************************************************





# *********************************
# ----- Solution 11
# *********************************

# To get the average age you can use

mean(movies$rating) #5.93285




# *********************************
# ----- Solution 12
# *********************************

# You can use the class() function to get the type of
# data. In this case it's a character.

class(movies$mpaa) # character



# *********************************
# ----- Solution 13
# *********************************

# The easiest way to get the count is

table(movies$mpaa)




# *********************************
# ----- Solution 14
# *********************************

# This code creates a vector of TRUE and FALSE values

movies$mpaa == "PG"


# So you can sum this vector (TRUE is treated as a 1
# and FALSE is a 0)

sum(movies$mpaa == "PG") # 528



# *********************************
# ----- Solution 15
# *********************************


# Movies longer than 4 hours.


subset(movies, length > 240)



# *********************************
# ----- Solution 16
# *********************************


# to center you substract the mean so we'll start by computing
# the mean rating

mean.rating <- mean(movies$rating)

# now we'll create a new column that is rating - mean.rating

movies$rating.center <- movies$rating - mean.rating

# you could also do it in one step


movies$rating.center <- movies$rating - mean(movies$rating)

mean(movies$rating.center) # 3.571141e-17 (basically 0)

# here without scientific notation
format(mean(movies$rating.center), scientific = FALSE)


# *********************************
# ----- Solution 17
# *********************************


sum(is.na(movies$budget))/nrow(movies) # 91%



# *********************************
# ----- Solution 18
# *********************************


# You might try

mean(x) # NA

# but it will return an NA. You will need the na.rm argument

mean(x, na.rm=TRUE) #3.5
mean(x, na.rm=T)    #3.5


# *********************************
# ----- Solution 19
# *********************************


x <- c("1", "2", "3", "4")

# you can use one of these to convert to numeric

as.numeric(x)
as.integer(x)

# so you can use

mean(as.numeric(x)) #2.5




# *********************************
# ----- Solution 20
# *********************************

# You can rewrite the code as:


df <- data.frame(a=1:3, b=1:3, row.names=c("one", "two", "three"))

# or
df <- data.frame(1:3, 1:3)
names(df) <- c("a", "b") # in this case colnames(df) <- c("a", "b")  would be same
rownames(df)  <- c("one", "two", "three")

# NOTE: confusingly you can use rownames() or row.names() but
# you can't use col.names -- only colnames()



# *********************************
# ----- Solution EXTRA CREDIT 2
# *********************************


filepath <- system.file("data-raw/agriCanada_example.csv", package="datascienceRworkshop1")
agri <- read.csv(filepath, stringsAsFactors = TRUE)
plot(agri$MaxTemp)


# This first pastes together the pieces and separates them by -
# then converts to a date with as.Date
agri$date<-as.Date(paste(agri$Year, agri$Mon, agri$Day, sep="-"))

# Filter the data to days with temperatures above 30
# and run the plot again on this subset

agri2 <- agri[agri$MaxTemp>30,]
plot(agri2$date, agri2$MaxTemp, col="red")

# If you want to keep the original axes approximately

plot(agri2$date, agri2$MaxTemp, col="red", ylim=c(-30, 40))





