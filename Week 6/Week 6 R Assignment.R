# Week 6 R Assignment:

# I really couldn't find any interesting data that wasn't in a dynamic table of some sort so I just used the test one in the textbook:
# URL: http://jaredlander.com/2012/02/another-kind-of-super-bowl-pool/

require(XML)
theURL <- "http://jaredlander.com/2012/02/another-kind-of-super-bowl-pool/"
sampleHTMLData <- readHTMLTable(theURL, which = 1, header = FALSE, stringaAsFactors = FALSE) 
# Let's look at some of the data:
head(sampleHTMLData)
summary(sampleHTMLData)

# The rest is my own stuff:
# I stumbled upon the NYC Open Data site at: https://data.cityofnewyork.us/
# I looked through the documentation and for R, you can install the RSocrata package to get to this data.
install.packages("RSocrata") 
require(RSocrata)
# I decided on a simple table showing average SAT scores by highschool which you can find here:
theURL <- "https://data.cityofnewyork.us/Education/SAT-Results/f9bf-2cp4"
NYC_SAT_Results <- read.socrata(theURL)
summary(NYC_SAT_Results)
# Now the interesting thing is that the read.socrata() function returns everything as a character string.
# Goolgled and found that the strtoi() function can convert to integers!
# Converting strings to integer:
NYC_SAT_Results$Num.of.SAT.Test.Takers_Int <- strtoi(NYC_SAT_Results$Num.of.SAT.Test.Takers)
NYC_SAT_Results$SAT.Critical.Reading.Avg..Score_Int <- strtoi(NYC_SAT_Results$SAT.Critical.Reading.Avg..Score)
NYC_SAT_Results$SAT.Math.Avg..Score_Int <- strtoi(NYC_SAT_Results$SAT.Math.Avg..Score)
NYC_SAT_Results$SAT.Writing.Avg..Score_Int <- strtoi(NYC_SAT_Results$SAT.Writing.Avg..Score)

# Now the summary is a little more useful:
summary(NYC_SAT_Results)
str(NYC_SAT_Results)