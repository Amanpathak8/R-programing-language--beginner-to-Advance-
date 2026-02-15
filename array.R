# R array 
# array are the data object which allow us to store data in more htan two 
#dimension 
#array() (2,3,4)
#array_name<- array(data,dim = ()) 
v1<- c(1,4,5)
v2<- c(10,20,30,40,50,60,70,80)
v3 <- array(c(v1,v2),dim = c(3,3,2)) 
# like dim =c(3,3,2) here means 3x3 matrix and need 2  matrix 
print(v3)
col_name <- c("c1","c2","c3")
row_name <- c("r1","r2","r3")
mat_name <-c("mat1","mat2")

v3 <-array(c(v1,v2),dim = c(3,3,2),dimnames = list(row_name,col_name, mat_name))
v3
print(v3[3,2,1]) #to acess the  (3,2,1) 3-row , 2 is coloum and 1 is 1,2 matrix 


v4<- c(20,40,50,30)
v5<- c(10,20,30,40,50,60,70,80)
v6 <-array(c(v4,v5),dim =c(3,3,2))


#addition of array 
v7<- v3+ v6
v7
