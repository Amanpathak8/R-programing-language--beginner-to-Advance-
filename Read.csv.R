# Data Importing - csv 
# A comma- seprated Values (csv) Files
#----------------------------------------------------
getwd() # function to know the current WD 
setwd("/Users/amanpathak/Downloads")
#function to reset or change the current wd 
# sorting 
v<- c(112,34,56,32,45,67,23,23,33,22,77)
sort(v) #sort the data in ascending order 
sort(v,decreasing = T) # to change the order and order it in decending way 

#order() does NOT return sorted numbers.
#It returns the positions (indexes) of numbers in sorted order.
order(v)
v[order(v)]
v
rank(v)  #indexing 
v[rank(v)] # indexing 
#Reading csv files  read.csv()
stores <- read.csv("stores.csv")
stores <- read.csv(file = "stores.csv", header = T ,sep = ",") #proper way 
View(stores) # to see dataframe 
print(is.data.frame(stores))# checking df 
print(ncol(stores)) #used to count column 
print(nrow(stores))# used to count rows in df  


#- Some of the functions related to the pataframes
View (stores)
Fix (stores)
str(stores) #str(): shows the structure of the data frame 
summary (stores) #summary() : provides summary statistics on the names (stores) 
names(stores) #all the variable names 
nrow(stores). # show all the varisbles names nrow (stores) ncol (stores)
ncol(stores)
length(stores)
dim(stores) #dim): shows the dimensions of the data frame by re colnames
colnames(stores)# shows the name of each column in the data fr head(stores) 
head(stores) #shows the first 6 rows of the data frame
tail(stores )#shows the last 6 rows of the data frame



stores2 <- stores[c(1:4,15,5:14)] # if we wanna replace  a number/element 
#between some other place like here 15 is moved to 5 position 

names(stores2)
stores[c(1:10), c(1:4)]  # can choose rows and columns which we want to see 
stores[c(1:10),] # for just first 10 row we have to use vector 
View(stores)  #to view table 
#grep function to know particular cposition of column in dataframe
grep("AreaStore", colnames(stores))
names (stores) 
grep("Property", colnames(stores))

# $ dollar sign for accessing or mentioning the variable's name 
d1 <-stores$Revenue
stores$totalcost = stores$total_customer * stores$acqCostPercentage +stores$operatingcost
view(stores$totalcost)


#geting the maximum Totalsales from data frame 
names(stores)
max_sal<- max(Stores$TotalSales) #max sales max()
min_sal<-min(stores$TotalSales) #min sales min()
print(max_sal)

#Getting the detail of the person who have maximum total sales 
# subset() is used to filter rows and/or select columns from a dataframe.
# subset(df_name , colane and condition )
details<- subset(stores, totalSales == max(TotalSales))
print(details)

detail<- subset(stores,location == "kolkata" & total_sales>350)
# writing into the csv files 
#R also allow us to write into the .csv files 
#for this Purpose ,R provides a write.csv() function
write.csv()









