install.packages("RSQLite")
require(RSQLite)

db.location <- "C:/Users/ssadalge/Documents/Personal/CUNY SPS Masters Data Analytics/Classes/Programming Summer Bridge Program/simplecharter.sqlite"

db <- dbConnect(SQLite(), dbname = db.location)

bookings <- dbGetQuery(conn = db, "SELECT * FROM bookings;")
allcharters <- dbGetQuery(conn = db, "SELECT * FROM allcharters;")
captains <- dbGetQuery(conn = db, "SELECT * FROM captains;")
payments <- dbGetQuery(conn = db, "SELECT * FROM payments;")
ships <-dbGetQuery(conn = db, "SELECT * FROM ships;")

str(bookings)
str(allcharters)
str(captains)
str(payments)
str(ships)


dbDisconnect(db)
