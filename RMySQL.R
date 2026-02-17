#Importing Data from Relational Database
#Using RMySQL package
#dbGetQuery: sends the queries and fetches results as the data frame.

#dbsendquery:only sends the query and returns an object of class inheriting from 
#"DBIresult",this object of class can be used to fetch the required result.
#dbclearResult removes the result from cache memory. 
#fetch returns few or all rows that were asked in query . 
# the output of fetch function is a list 


#dbhascompleted is usd to check is all the rows are rettrieved 
#dbReadTable and dbwriteTable function are used to read and write 
#the tables in Database from an R data frame 

library("RMySQL")


con <- dbConnect(MySQL(),
                 username = "root",
                 password = "123456789",
                 host = "localhost",
                 port = 3306 ,
                 dbname = "registration_db" )
con <-dbconnect(MySQL(),
                username = "root",
                dbname = "registration_db")

dbListTables(con) # Shows all tables inside the connected database
dbListFields(con, "users") # Shows all column names of the table details
dbListFields(con,"select * from users ") #needs a table name, not a SQL query



data1<-dbGetQuery(con, "select * from users" ) # we execute the query and fetch 
data1 # the data and save it in the dedicated variable 




# it will just send it will not fetch anything we have to use fetch()
rs<-dbSendQuery(con, "select * from users" )  # seprately after it 


# fetch function  fetch(df_name n =)n = number of rows we want,-1 means all row 
data3<-fetch(rs,n = -1 ) #,-1 means all row
data3
view(data1)


