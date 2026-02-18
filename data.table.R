install.packages("data.table") # Install data.table package
library("data.table")

data <- data.frame(x1 = 1:5, x2 = 6:10, x3 = 11:15) # Create example data. frame
#Load data. table package
data # Print example data. frame to Rstudio console
setnames(data,            # Apply setnames function
         c("x1","x3"),
         c("x4","x5"))
data # Print updated example data.frame







#------------------------------------------------------
data <- data.frame(x1 = 1:5,                         # Create  data
          x2 = c("A", "D", "C", "A", "d"))
##### Example 1 - order function
data[order(data$x2), ]          # Order data wwith x2 column that why $x2
##### Example 2 - dplyr package
install.packages("dplyr")                       # Install dplyr R package
library("dplyr")                                # Load dplyr R package
arrange(data, x2)                              # Order data with dplyr





##### Example 3 - data.table package
data_ordered <- data                           # Replicate example data
setorder(data_ordered, x2)  # Order data with data.table set_order
data_ordered                                    # Print ordered data





#### Example 4 Sort in decreasing order
data[order(data$x2, decreasing = TRUE), ]      # Order data in decreasing order



#--------------------------------------------------------------

library(data.table)

# Create sales dataset
sales <- data.table(
  OrderID = 1:10,                                  # Order number
  CustomerID = c(101,102,103,101,104,102,105,103,104,105),
  Product = c("Laptop","Phone","Tablet","Phone",
              "Laptop","Tablet","Phone","Laptop","Tablet","Phone"),
  Quantity = c(1,2,1,3,2,1,4,1,2,3),                # Units sold
  Price = c(800,500,300,520,820,310,510,790,305,515),
  OrderDate = as.Date(c("2024-01-01","2024-01-02","2024-01-03",
                        "2024-01-04","2024-01-05","2024-01-06",
                        "2024-01-07","2024-01-08","2024-01-09",
                        "2024-01-10"))
)




sales
#---------------------------------------------------------------
#Create New Column (Total Sale Amount)
sales[, TotalAmount := Quantity * Price] # Creates TotalAmount column




#---------------------------------------------------------------
sales[Product == "Laptop"]
# Show only laptop orders




#----- Filter Orders 
sales[Product == "Laptop"] # Show only laptop orders
sales[Quantity > 2] # Show orders where quantity > 2


#Group By (Total Sales per Product)
sales[, sum(TotalAmount), by = Product] # Total revenue per product




#----------------------------------
sales[, .(
  Total_Revenue = sum(TotalAmount),
  Avg_Price = mean(Price),
  Orders = .N
), by = Product]





#---------------------- Sort Data
sales[order(-TotalAmount)] # Highest order value first

#--------------------join customer table 
customers <- data.table(
  CustomerID = c(101,102,103,104,105),
  Name = c("Aman","Raj","Simran","Kiran","Riya"),
  City = c("Delhi","Mumbai","Delhi","Pune","Mumbai")
)
customers[sales, on = "CustomerID"] # Left join style




#Conditional Update
sales[TotalAmount > 1500, Discount := TotalAmount * 0.10]

#Using .SD (Apply Function to Multiple Columns)
sales[, lapply(.SD, mean), .SDcols = c("Quantity","Price","TotalAmount")]


#Reshaping (Pivot Style)
dcast(sales, CustomerID ~ Product, value.var = "Quantity", fun.aggregate = sum)









