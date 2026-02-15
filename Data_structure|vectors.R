#data Structure 
#vectors , Matrix , array , list , data frames 
# elements of vector are knows as component 
# lengths()  - count the number of element in vector 
# vector has two part atomic vector and list 
a<-c(1,2,3,4,5,6,7) # one way of making vector 
a
b<- -3:5 # other way of creating vector by range 
b


sq <- seq(1, 15, by = 2) # making vector by Using by → controls step size
print(sq)
# Output: 1 3 5 7 9 11 13 15


ap <-seq(1,15,length.out = 3)#Using length.out → controls total number of values
print(ap)  # Output: 1 8 15

#Atomic vector 
#numeric Vector 
numv<-c(12.3,23.9,5.0,34.5,5.7,88.5)
numv 
class(numv)



#Integer Vector  Either we can use L in vector  or use as.integer
intv <- c (1L,2L,3L,4L,4L,5L,5L,5L,6L,7L)
intv <- c (1,2,3,4,4,5,5,5,6,7)
intv <- as.integer(intv)
class(intv)



#CHARACTER VECTOR  either use charcter dirctly of change them 
charv <-c(1,4,5,6,6)
char <- as.character(charv)
char

#Logical vector 
# Accessing element of Vector
#by indexing [ ]
#Indexing start from 1 not 0 
sq <- seq(1, 15, by = 2) 
sq[2]. # just put numbers for  accesing 

charc_vec <-c("ram" = 12 ,"shyam"= 32 , "mohan"=31)
charc_vec["shyam"] # can access value by key 

a1<- c(1,2,3,4,5,6,7,8,9,9)
a1[c(TRUE,FALSE,TRUE,FALSE,TRUE,FALSE,TRUE,FALSE,TRUE,FALSE)]
print(a1)


#VECTOR OPERATION 
a1<- c(1,2,3,4,5,6,7,8,9,9)
a2<-c(12,3,23,9,5,0,34,5,5,7)
length(a1)
a3<-c(a1,a2)
a1+a2 
a1-a2
a1*a2
a1/a2
###########################
a2<-c("ram","aman","pathak","hero")
a2[1]
a2[2]
a2[3]
a2[4]
a2[c(1,2,3,4)] 
# name of vector 
z<- c("ram","mohan","sohan")
z
name(z)= c("y1","y2","y3") # now we can acess z vector eleent by y1,y2,y3
z[y1]
















