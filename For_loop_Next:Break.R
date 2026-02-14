# for loop 
#syntax for(variable in vector)

for(y in 1:10) {
print(paste("number:",y)) # paste() is used to combine (join) values together 
  }                          #into one string.
  
#############                   Loop over vector element 
f<-c("range","apple","banana","grapes","mango")
for(i in f ){
  print(paste("name of fruit is ",i))}

################# Loop Using Index (Position Based)##

names <- c("Aman","Ayush","Riya")
for(i in 1:length(names)){
  print(paste("Index:", i, "Value:", names[i]))
}

################## Nested For Loop (Loop inside Loop)

for(i in 1:3){
  for(j in 1:2){
    print(paste("i =", i, "j =", j))
  }
}

#########################.      Loop Over List

my_list <- list(10, "Aman", TRUE)
for(item in my_list){
  print(item)
}

######################.      Loop Over Matrix
m <- matrix(1:6, nrow=2)

for(val in m){
  print(val)
}
# Break and next 
# Loop from 1 to 10
x <- 1:10
for(val in x){
  if(val == 5){
    next    # skip when value is 5 (go to next iteration)
  }else{
    print(val)   # print all values except 5
  }
}

#####################################################################
x<-1:10
for(val in x){
  if(val==5){
    break # it will break the loop 
  }else(print(val))
}
####################

a <- 1   # initialize counter
repeat { #repeat is also used for looping  without defining condition 
  print("Hello this is data scientist aman")
  if(a >=5){
    break    # stop loop when a reaches 5
  }
  a <- a + 1   # increase counter
}


####################################
v<-c("hello", "how", "are", "you")
x<-2
repeat{
  print(v)
  x<- x+1
  if(x>5){
    break
  }
}
