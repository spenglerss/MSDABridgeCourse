# Week 6 Quiz

# "Save it to your computer and read it into R as a dataframe":
LocalFile <- "C:/Users/ssadalge/Documents/GitHub/MSDABridgeCourse/Week 6/pizza-store-data.csv"
PizzaStore <- read.table(file = LocalFile, header = TRUE, sep = ",", stringsAsFactors = FALSE)

class(PizzaStore) # Just to check that it is a dataframe

# "Run function summary() on the dataframe containing the file information":
summary(PizzaStore)
# Looks like we have 4 columns:
# 1. date : Stored as character datatype, It's really dates from 1/1/2013 - 12/31/2013
# 2. store : Stored as character datatype. Names of 4 locations
# Interestingly, the "Length" of the date field yields the number of row.  There are 1460 rows (which makes sense since 365 days * 4 stores = 1,460)
# 3. pizzas : didn't know what it was stored as from the summary() function so I ran the following:
class(PizzaStore$pizzas)
# looks like pizza is an integer.  I woulg guess this tells you the number of pizzas sold (for the date and location)
# 4. customers : again, summary doesn't explicitly tell you the datatype but class() does:
class(PizzaStore$customers)
# looks like customers is also an integer and tells you the number of customers purchasing for a given date and location.

