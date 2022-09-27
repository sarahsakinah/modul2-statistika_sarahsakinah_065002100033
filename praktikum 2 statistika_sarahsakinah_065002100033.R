install.packages("RMySQL")
install.packages("dplyr")

library(RMySQL)
con = dbConnect(MySQL(), user = 'root', password = '', dbname = 'ps2sarah', host = 'localhost')
dbListTables(con) 
myQuery <- "select * from sarah;"
df <- dbGetQuery(con, myQuery)

library(dplyr)
df<-filter(df,Gender=="P")
print(df)
S