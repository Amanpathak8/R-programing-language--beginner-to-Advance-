# R Data Structure List 
#List is something that can contain any data type 
# to create list we have to use list() function 

vecto<-c(8,9,4,3,5)
char_vec <-c("Aman","is","a","Data","scientist")
logic_vec <-c(TRUE,FALSE,TRUE,FALSE,TRUE)
list1 <-list(vecto,char_vec,logic_vec)
list1


list2<- list("ram","aman","data scientist",c(1,2,3,4,5,6,7,8),TRUE,FALSE,52L)
list2
class(list2)
typeof(list2)


#Naming of list 
list3<- list(c("ram","mohan","aman"),c(98,65,34),list("betch","data","dataScientist"))
names(list3)<- c("student","marks","courses")
list3(student) # giving name to whole list 

# Accessing list 
print(list3["courses"]) #can acesss list 
print(list3$student). # using dollar sign to acess list 
#unlist() convert the list into vector 
list3<- list(5:9)
list4 <-list(14:19)
class(list3)
v1 <- unlist(list3 ). # unlist()is used to remove list and change to vector 
typeof(v1)
class(v1)
# just pass list it will merge 
mer <-list(list3,list4)
mer
