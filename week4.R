# Q1 : Demonstrate the 3 different ways to assign a value to a variable:
# First (preferred way) using <-
x <- 1234
x
# Second using =
x = 4321
x
# Third using assign()
assign("x",9876)
x
#
# Q2 : Combine sum() and is.na() to count the number of missing values in a vector
# is.na() returns a vector with a TRUE everytime time a vector value is NA.
# sum() counts FALSE as a 0 and TRUE as a 1.
# Therefore, sum(is.na(<vector to test>)) will give you the number of times a value is NA.
# To demonstrate, there's a vector with one NA value in the 4th spot:
somevector <- c(1,2,3,NA,5,6)
somevector
# Here is the logical vector with TRUE & FALSE of the is.na() test
is.na(somevector)
# To count, we can simply just add them all up
sum(is.na(somevector))
# Furthermore, we can just test to see if the sum() is greater than 0 to know if at least one value is NA:
sum(is.na(somevector)) > 0
#
# Q3 : Illustrate the difference between library() and require()
# This question was a little confusing for me.  I understand the require() returns a TRUE/FALSE and libary() does not.
# We can see this using the following:
# (The MASS libary exists but the MIST doesn't)
g <- require(MASS)
g
g <- require(MIST)
g
# First it was a TRUE and second there was a warning and a return of FALSE
# library() returns a vector of information if it installs the package but not a TRUE/FALSE:
detach("package:MASS")  # Removing the package
g <- library(MASS)
g
# If library() is used for a package that wasn't installed, it doesn't return anything
rm(g) # Removing the value from above
g <- library(MIST)
g
# g doesn't exist anymore when library fails
# I assume then that you can use require() to test if a package is installed before you to use it. As in store the result of require in a variable to test with an IF statement prior to executing code requiring a package.