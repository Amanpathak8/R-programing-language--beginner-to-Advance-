# while loop 

v<-c("hello","r","this","is ","data","scientist","aman")
x<-2
while(x<6){
  print(v)
  x<-x+1
}
#################.  Basic while Loop (Condition Controlled)
x <- 1
while(x <= 5){
  print(x)
  x <- x + 1}


#################.  Infinite while Loop
x <- 1
while(TRUE){
  print(x)
  x <- x + 1
  if(x > 5){
    break }}

################# #R take Input from user
name<-readline(prompt = "Enter your name: ")
Age<-as.integer(readline((prompt = "Enter your age ")))
print(paste(name, Age ))
