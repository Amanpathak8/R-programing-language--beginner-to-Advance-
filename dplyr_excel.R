#R Excel file

#Installing xlsx package 
install.packages("xlsx")
#verifying the package is installed 
any(grepl("xlsx",installed.packages()))

#loading the library into R workspace 
library("xlsx")

#Reading in excel file 
#reading in excel file 
#read.xlsx(file_name,sheet_index)

#Reading the first worksheet in the file employee.xlsx
excel_data<- read.xlsc("emp_data.xlsx",sheetIndex = 1)
print(excel_data)
view(excel_data) # to see the table 
getwd()

#setwd()
names(excel_data) #print all the names of the column 
dim(excel_data) #to see row and col like (300rows,15 column)
summary(excel_data) #we can see all details like mean mode and median 
names(excel_data)

max_profit<-max(excel_data$Profit) # use max in df and column to find max profit 
min_profit<-min(excel_data$profit)# use min in df and column to find min profit 


#function subnet(df_name,column_name and condition )
details <-subnet(storest,location=="kolkata") # to acess a specific row 
print(details)
a <-subset(excel_data,country == "France")
a
view(a)

#write .xlsx 
------------------------------------------------------------------
#intsalling package 
installed.packages("dplyr")


any(grepl("dplyr",installed.packages()))

#manipilate Data in r with dplyr package 
test<- read.csv("sales_data.csv")
View(test)

head(test)

tail(test)
#important dplyr verb to remember 
#select() select column 
#filter() filter rows 
#arrange() re-order or arrange rows
#mutuable() create new column 
#summarise() summarise values 
#group_by()  for group operation 

names(test)
# using seelect function select(df_name , column_name , column_name2 )
salesData <- select(test, Sales_Amount, Product_ID)
salesData
head(salesData)
#to select all the columns except a specific column 
#use the "-" (subtracting) operator (also know as negative indexing )
head(salesData)
test1<- select(test,-sales_amount) #if we want to remove the column we put - 
head(select(test,-name))
#to select a range of column by name, use the ":" colon operator 
head(select(test, name: order ))

# to select all coloumn that start wwith the character string  "sl",
#use the function start_with()
head(select(test,starts_with("sal")))
#some additional to select column based on a specific criteria:
#end_with() = Select column that end with a character string 
# contains() = select columns that muchh a regilar expression 
# one_of = select column names that are from a group off names 

#selecting rows using filter()
#filter the row for mamma ls that sleep a total of more than 16 hours 
# show sales more than 6k 
filter(test, Sales_Amount >= 6600)
# show sales more than 6k  and from south region 
filter(test,Sales_Amount >= 6600 , Region == "South")


#when we want to match value from vectors  we use %in%
filter (test, Region %in% c("South","North"))

#---------------------------------------------------------------pipe operator
#.       %>%.   pipe operator 
installed.packages("magrittr")
library("magrittr")
#pipe operator: %>%
#dplyr imports this operator from another package (magrittr).
#This operator allows you to pipe the output from one function to the input of 
#another function. Instead of nesting functions
#(reading from the inside to the outside),
#the idea of of piping is to read the functions from left to right.
head(select(test, Sales_Amount, Product_ID))
test %>% # df name will be first 
  select(Sales_Amount, Product_ID) %>%
  head()
 # It passes the left side into the first argument of the right function.

#using it miltiple times 
test %>%
  filter(Sales_Amount > 5000) %>%
  select(Product_ID, Sales_Amount) %>%
  arrange(desc(Sales_Amount))

# mutate 
test %>%
  mutate(Total = Sales_Amount * 1.2). # 🔹 1️⃣ Create New Column

#Modify Existing Column
#mutate() = used to add or change columns in a dataframe.
test %>%
  mutate(Sales_Amount = Sales_Amount * 1.2)

#Multiple Columns Together
test %>%mutate( Tax = Sales_Amount * 0.1,Final_Price = Sales_Amount + Tax)

#Using Conditions (Very Powerful)
test %>%
  mutate(Category = ifelse(Sales_Amount > 500, "High", "Low"))


#group_by() = divides data into groups so calculations happen inside each group.
# group by 
summarise(test, total = sum(Sales_Amount)) #without group by 
test %>%group_by(Product_ID) %>%
  summarise(total_sales = sum(Sales_Amount))

# multiple grouping  
test %>%group_by(Product_ID, Sale_Date) %>%
  summarise(total = sum(Sales_Amount))



















