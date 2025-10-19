install.packages("RSQLite")
library(DBI)

if (file.exists("university.db"))
  file.remove("university.db")

conn <- dbConnect(RSQLite::SQLite(), "university.db")

dbListTables(conn)

course <- read.csv("C:\\Users\\HP\\OneDrive\\Documents\\DSBACODINGTEST\\datasets\\course.csv", header = TRUE)
student <- read.csv("C:\\Users\\HP\\OneDrive\\Documents\\DSBACODINGTEST\\datasets\\student.csv", header = TRUE)
grade <- read.csv("C:/Users/HP/OneDrive/Documents/DSBACODINGTEST/datasets/grade.csv", header = TRUE)

                  
dbWriteTable(conn, "course", course)
dbWriteTable(conn, "student", student)
dbWriteTable(conn, "grade", grade)

dbListTables(conn)

dbCreateTable(conn, "Teacher", c(staff_id = "TEXT", name = "TEXT"))

dbListTables(conn)
dbListFields(conn, "Teacher")
dbDisconnect(conn)
