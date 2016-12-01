# Solutions to exercise-4





# *********************************
# ----- Solution 1
# *********************************

myname <- c("Lionel", "Andrés", "Messi")
x <- c("first", "middle", "last")




# *********************************
# ----- Solution 2
# *********************************

class(myname) # this is character



# *********************************
# ----- Solution 3
# *********************************

dat <- matrix(1:100, nrow=10)
class(dat) # matrix



# class() is helpful to learn the object type
# and objects can have more than one class



# *********************************
# ----- Solution 4
# *********************************

# Use list because it allows you to create a list of multiple
# objects.

mylist <- list(myname, dat)


# Using list will create a list of all the objects you
# give it with each object being a single element of the
# list. Using as.list will make a list where each element
# is an element of the input



# *********************************
# ----- Solution 5
# *********************************


plus10 <- function(inputnumber){

  val <- inputnumber + 10
  val

}

plus10(5)

# *******************************************************************
# ----- R objects: EXTRA CREDIT 1
# *******************************************************************

sampleVector <- 1:100

mean_and_sd <- function(inputvect){
  
  mymean <- mean(inputvect)
  mysd <- sd(inputvect)
  
  c(mymean, mysd)
  
}

mean_and_sd(sampleVector)





