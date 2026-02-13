# Starting R Programming Language

print("Starting the R Programming Language")

5 + 6              # Ctrl + Enter to run line


# Putting value in variables
sum1 <- 56 + 54
demo <- 2 + 4
demo2 <- 5 + 6


# To check R session information
sessionInfo()


print("----------------------------------------------------")

# Variable assignment

var_name <- 10    # preferred way for assigning variable
a <- 10
b = 20            # not preferred / also used inside functions, can lead to confusion


# cat() function is used for printing more than one variable together
cat(a, " ", b)




# Data Types in R 

## logical, Integer, numeric, complex, character, raw


# Numeric = 12 , 13 , 14 , -24 , 12.365 , -26.456 
n <- 12
class(n)   # class() is used to know data type 
typeof(n) # typeof() is used to know data type also 


# Integer = 36L  
# L in capital is used for allocating integer value 
i <- 45L   # capital L to assign integer
class(i)
typeof(i) # typeof is used to know data type also 


# Complex = 5+2i 
# Numbers with both real and imaginary parts. "i" represents the imaginary unit.
com <- 89 + 5i
class(com)
typeof(com)


# Character = Textual data enclosed in quotes.
# It can include letters, numbers, symbols, or spaces like "AMAN", "*&&^*"
ch <- "Aman"
class(ch)
typeof(ch) # typeof is used to know data type also 


# Logical = TRUE, FALSE
lo <- TRUE
class(lo)
typeof(lo) # typeof is used to know data type also 



# Raw = Binary values like 00 
r <- raw(4)
print(r)
class(r)

print("--------------------------------------------------------")
#Converting Data Types in R 
num1 <- as.numeric(290L)  # 290L is interger as.numeric is used and converted
#to double 
print(num1)
typeof(num1)

num2 <-as.numeric(890-456i)  # 890 - 456i it is complex number  converted
#to double  
print(num2) 
typeof(num2)

bol<-as.numeric(TRUE) # True is  logical it is converted to double 
#true = 1 , false = 0 
print(bol)
typeof(bol)


num <-as.numeric("Aman") # character convert into numeric is NA  Data type double 
print(num)
typeof(num)


intt<-as.numeric("123456") # character to double 
print(intt)
typeof(intt)

print("-------------------Integer-------------------------------------")

int<-as.integer(52.23456) #convert from numeric to integer 
print(int)
typeof(int)

com <-as.integer(53-34i)
print(int)
typeof(int)


bol<-as.integer(TRUE) # True is  logical it is converted to double  true = 1 , false = 0 
print(bol)
typeof(bol)


intt<-as.integer("123456") # character to double 
print(intt)
typeof(intt)



intt<-as.integer("1abananaa23456") # character to interger 
print(intt) #when albatic values are presnt it will show eroor and Na 
typeof(intt)

print("--------------------------------------------------------")

com <-as.complex(348.23453) # +oi will be added to make 
print(com)
class(com)

log1<- as.logical(987) # 0 will be converted into false any thing else 
print(log1)                  #will be. converted into true 


char1<-as.character(5.666666)
print(char1)




























