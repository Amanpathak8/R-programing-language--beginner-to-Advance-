# r Matrix 

# matrix(data, nrow,ncol,byrow , dimname).    syntax 
#nrow - number of row
#ncol - number of columum in matrix 
#byrow - if true than arrangement  of number by rows 
# if false than arrangement of number by col 
#dim name  is dimension names 

mat <- matrix(c(2:13), nrow = 4, byrow = TRUE)
mat


# 2x3matrix 
mat <- matrix(c(2:10), nrow = 2 , ncol = 3 ,byrow = TRUE)
mat

#arrangement by col 
mat <- matrix(c(2:10), nrow = 3, ncol = 2 ,byrow = FALSE)
mat


x<-matrix(c(5:18),nrow= 4 ,byrow = TRUE)
y<-matrix(c(7:18),nrow =4 , byrow = FALSE)
x
y
row_name <-c("r1","r2","r3","r4")
col_name <-c("c1","c2","c3",)
z<-matrix(c(7:18),nrow=4, byrow = TRUE,dimnames = list(row_name,col_name))
z
#access matrix
print(z[3,1])
print(z[3,2])

#How to change the values inside matric 
z[4,3]<-0
#if z have any value 11 so it should be zero 
z[z==11]<-0
z[z>5] <-0. #replace all elemnt more than 5  will be 0 




#cbind() and rbind() are used to add a columns and row in the matrix 
z
rbind(z,c(2,3,4)) # it will add but it will be temporrary does not effect z
z
cbind(z,c(8,5,4,0))# t wil add but it will be temporrary does not change main z

#transpose  t() it will tranpose any matrix 
t(z)
a1 <-matrix(c(5:16),nrow= 4, ncol =3,byrow = TRUE )
a2 <-matrix(c(1:12),nrow= 4, ncol =3,byrow = TRUE )
sum<- a1 +a2 
mul<- a1 *a2 
div <- a1/a2



