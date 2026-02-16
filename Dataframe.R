# R Data Frame:
# A data frame is a two-dimensional table-like structure.
#Unlike a matrix/array each column in a data frame can store different data types.
# Each column represents a variable.
# Each row represents one observation (one record).
# A data frame is actually a special type of list 
# where each element (column) has equal length.

#creating the data frame 
emp.data<- data.frame(
  employee_id = c(1:5),
  employee_name = c("aman","raman","redat","vicen","pathak"),
  sal = c(5230.3,913.2,641.0,529.0,453.25),
  starting_date = as.Date(c("2025-01-06","2023-05-08","2014-08-13", 
                            "2009-07-15","2024-02-02")),
  stringsAsFactors = FALSE # prevents R from automatically converting character 
  # columns into factors when creating a data frame
  # factor means like yes no , gender , grade 
)
# Printing the Data frame 
print(emp.data)
str(emp.data) # to see structure of  data str()

f1<-data.frame(emp.data$employee_name,emp.data$sal
               # $ is used to access a named element inside a list 
               # or a column inside a data frame.
               )
# printing single rows 
f2 <- emp.data[3:5,]
f2
#printing multiple rows 
f3 <-emp.data[c(2,3),c(1,4)]
f3
#cbind(), rbind() is used to add rows or cooulumn 
x<- list(6,"aman","4300","2014-02-12")
emp.data <-rbind(emp.data , x)

y<-c("Latvia","Germany","France","India","austria")
emp.data <-cbind(emp.data,country = y). # adding new column with name 


#delete row by  chosing the - row directly 
emp.data<- emp.data[-2,]
#for deleteing col 
emp.data$starting_data <-NULL

print(summary(emp.data))











