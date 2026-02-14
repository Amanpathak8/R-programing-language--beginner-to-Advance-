# R functionn 

# syntax   fun_name<- function(argument1,argu2,...){}
#-----------making normal basic function
# -------------------------------
# 1 Basic Function (No Arguments)
# -------------------------------

# Creating a function that prints square of numbers from 1 to 5
new.function <- function() {
  for(i in 1:5) {
    print(i^2)} }
# Call the function
new.function()




# 2 Function with Arguments ------------------------------


# Function to add three numbers
addition <- function(x, y, z) {
  res <- x + y + z  # Store sum in variable
  print(res)}
addition(2, 3, 4)# Calling function (normal way)
addition(x = 2, y = 3, z = 4)# Calling function (named arguments)



# 3 Function with Default Values------------
# Function with default values
multiply <- function(x = 10, y = 30) {
  res <- x * y# Multiply values
  print(res)
}
multiply() # If no argument passed → default values used
multiply(30, 50). # If arguments passed → overrides default values


# Even or odd checker 
check_even_odd <- function(num){
  if (num %% 2 == 0){
    return("Even")}else{
      retutn("odd")
    }
}
a = check_even_odd(11)
print(a)

#------------------------
#Simple Bmi Calculator
bmi_calc <- function(weight, height){
  bmi<- weight / (height^2)
  return(bmi)
}
bmi_calc(70,1.8)

#-----------------------------
#Function that Returns Multiple Values

calc_stats <- function(x, y) {
  sum_val  <- x + y
  diff_val <- x - y
  mul_val  <- x * y
  return(list(
    Sum = sum_val,
    Difference = diff_val,
    Multiply = mul_val
  ))}

calc_stats(10,5)


# built in Function ------------------
# Assume x is some numeric value
x <- -4.7   # example value
print(abs(x))#returns absolute value (removes negative sign)   # Output: 4.7

print(sqrt(45)) # sqrt() → returns square root of a number√45

print(ceiling(x))   # ceiling() → rounds number UP to nearest integer
  # -4 (rounds toward positive direction)
print(floor(x))  # floor() → rounds number DOWN to nearest integer

y <- c(1.5, 6.6, 7.9) # trunc() → removes decimal part (no rounding)
print(trunc(y))      # 1 6 7 remove all ponts
z <- 5   
print(sin(z))# sin() → sine of angle (in radians)
print(cos(z))# cos() → cosine of angle (in radians)


--------------------------------------
a <- "asDAAAaa1234567"
substr(a, 3, 5)  # substr(x, start, stop) used for acessing string 
print(tolower(a)) # to lower the string 

print(toupper(a)) # to captalise string 
--------------------------------------
vectorrr <- c("acd", "bcbd", "abcdcfgh")
search <- "^abc"# ^   → string must start with

# grep() searches for pattern in vector andreturns the 
print(grep(search, vectorrr)) #INDEX position of matching elements



##Addititonal functions 
# Statistical Functions (Very Important)
mean(x)       # Average
median(x)     # Middle value
sum(x)        # Total
min(x)        # Minimum
max(x)        # Maximum
range(x)      # Min and Max
sd(x)         # Standard deviation
var(x)        # Variance
quantile(x)   # Percentiles
summary(x)    # Quick statistics summary



#  Data Cleaning Functions
is.na(x)      # Check missing values
na.omit(x)    # Remove missing values
complete.cases(x)
unique(x)     # Unique values
duplicated(x) # Find duplicates

#Mathematical Functions
log(x)        # Natural log
log10(x)      # Log base 10
exp(x)        # e^x
round(x)
ceiling(x)
floor(x)
trunc(x)
abs(x)


# Data Transformation (Very Important)
scale(x)      # Standardization (mean=0, sd=1)
as.numeric()
as.character()
as.factor()
cut()         # Binning
ifelse()      # Conditional transformation

#Vector & Matrix Operations
length(x)
sort(x)
order(x)
rank(x)
cumsum(x)
cumprod(x)
diff(x)

#Apply Family (VERY IMPORTANT FOR DATA SCIENCE)
apply()
lapply()
sapply()
tapply()
mapply()
#Data Engineering (File Handling)
read.csv()
read.table()
write.csv()
readRDS()
saveRDS()
#Correlation & Modeling Basics
cor(x, y)
lm()       # Linear regression
glm()      # Generalized model
predict()












