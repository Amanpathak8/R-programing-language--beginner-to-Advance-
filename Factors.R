# A factor is a variable that can take limited, fixed values, called levels.
# A categorical value represents groups or labels, not numbers for calculation.

#Gender → Male/Female
#Color → Red/Blue
#Types (2 Types) -1 Nominal → No order Example: Gender, Color
#2 Ordinal → Has order/ranking.  Example: Low < Medium < High


dir <- c("north", "west","east","south")
is.factor(dir). # to check it is vector or not  is factor 
factor(dir,levels = c("north", "west","east","south"),labels=c("N","E","W","S"))
factor(dir,levels = c("north", "west","east","south"),exclude = "north")
#gl( n , k ,labels) n is no of levels/col to print , k is number of time repeat 
dir
v1<-gl(2,4,label=c("ram","mohan","sohan"))
v1
dir <- c("north", "west","east","south")
data<-factor(dir)
data
#access the factor 
data[c(2,4)]
data[-1]
data[2]<-"east"

#function in factor 
is.factor () # to check it  is a factor or not  True /FALSE
is.ordered() #check is the fector is ordered or not  True /FALSE
as.factor() # it convert vector into factor 
as.ordered() #it will arange the factors element in order 

