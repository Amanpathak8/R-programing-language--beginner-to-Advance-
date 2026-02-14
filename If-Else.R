# R if-else statement 
x <- 25L
if(is.integer(x))
{
  print("x is an Integer Number")
}else    #else will be written directly after the }closing brackets 
{"x is not an Integer Number "}
#########################################################
y <- c("Hardwork" , "is", "the","key","of","success") 
# c() creates a character vector
if("key" %in% y)   # %in% checks whether "key" exists inside vector y
{
  print("key is found in our vector")   # Executes if TRUE
}else{
  print("key is not found")             # Executes if FALSE
}

###################### Elseif ##################################\
marks<-79
if(marks>75){
  print("first class marks ")
}else if(marks>65){
  print("Second class")
}else if(marks>45){
  print("third class")
}else{
  print("Fail")
}