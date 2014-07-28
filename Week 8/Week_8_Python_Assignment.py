from sqlite3 import dbapi2 as sqlite

con = sqlite.connect("C:\Users\ssadalge\Documents\GitHub\MSDABridgeCourse\Week 8\experiments.db")

# I chose the option of changing information in the Software Carpentry tables

cursor = con.cursor()
cursor.execute("SELECT p.ProjectName, e.ExperimentDate FROM Project as p INNER JOIN EXPERIMENT as e ON e.ProjectID = p.ProjectID;")
results = cursor.fetchall()
for r in results:
    print r[0], r[1]
cursor.close()
con.close()

