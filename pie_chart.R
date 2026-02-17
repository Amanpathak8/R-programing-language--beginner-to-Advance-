#R Data Visualization
#Data visualization is an efficient technique for gaining insight
#about data through a visual medium. with the help of visualization
#techniques, a human can easily obtain information about hidden
#patterns in data that might be neglected.




#R Pie Charts
#pie-chart is a representation of values in the form of slices
                                            #of a circle with different colors.
#The Pie charts are created with the help of pie () function,
                                #which takes positive numbers as vector input.



------------------------------------------------------------
pie(X, Labels, Radius, Main, Col, Clockwise)
Here,
#X is a vector that contains the numeric values used in the pie chart.
#Labels are used to give the description to the slices.
#Radius describes the radius of the pie chart.
#Main describes the title of the chart.
#Col defines the color palette.
#clockwise is a logical value that indicates the clockwise or 
#anti-clockwise direction in which slices are drawn

-------------------------------------------------------------
  # creating data for the graph.
x <- c(12, 35, 56, 75) 
labels <- c("Indlia","uk", "JAPAN" ,"USA")
pie(x, labels)
pie (x, labels, main="Country Pie chart" ,col=rainbow(length(x)))
colors <- c("blue", "green","red", "orange")
pie(x, labels, main="Country Pie chart" , col=colors)

#slice Percentage & Chart Legend
legend(x, y=NULL, legend, fill, col, bg)
Here,
#x and y are the coordinates to be used to position the legend. 
#legend is the text of legend
#fill is the color to use for filling the boxes beside the legend text 
#col defines the color of line and points besides the legend text.
#bg is the background color for the legend box.
legend("topright", c("Indlia","uk", "JAPAN" ,"USA") , cex = 0.8, 
       fill = colors)

----------------------------------------------------------------------------
  #3 Dimensional pie chart
#  R provides a plotrix package whose pieD) function is used to 
#create an attractive 3D pie chart. The parameters of pieD()
#function remain same as pie) function
library(plotrix)
x2 <- c(20, 65, 15, 50,45)
labels2 <- c("India","America", "shriLanka","Nepal", "Bhutan")
pie3D(x2,labelslabels=labels2, explode = 0.2, main = "Country pie chart ")
       
legend("topright", c("India","America", "shriLanka","Nepal", "Bhutan"),cex=0.8,
fill = colors)
                                                                                                                                                                                                            c"India", "Uk", "JAPAN", "USA") , cex = 0.8,
                                                                                                                                                                                              fill = colors)




