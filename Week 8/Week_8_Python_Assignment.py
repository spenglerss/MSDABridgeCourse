from sqlite3 import dbapi2 as sqlite

con = sqlite.connect("C:\Users\ssadalge\Documents\Personal\CUNY SPS Masters Data Analytics\Classes\Programming Summer Bridge Program\datascienceresources.sqlite")
cursor = con.cursor()
cursor.execute("SELECT * FROM titles;")
results = cursor.fetchall()
for r in results:
    print r[0], r[1]
cursor.close()
con.close()

