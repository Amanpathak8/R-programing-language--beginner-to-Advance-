# r Line function 

#A line graph is a graph where data points are connected with a line.
#It is mainly used to show Trends over time,Continuous data,How something change

x <- c(1,2,3,4,5)
y <- c(10,15,12,20,18)

plot(x, y, type="l")


#type -> what kind of graph type = "l"-> line ,type ="p>points ,type ="b"  # both
#col -> line color
#lwd -> thickness of line
#lty -> line type , lty = 1 solid ,lty = 2 dashed, lty = 3   dotted
#main -> graph title
#xlab -> x-axis label
#ylab → ->  y-axis label

x <- c(1,2,3,4,5)        # x-axis values (Days)
y <- c(10,15,12,20,18)  # y-axis values (Price)

plot(x, y,              # plot x values against y values
     type = "l",        # type = "l" means line graph ("p" = points, "b" = both)
     col = "blue",      # col sets the color of the line
     lwd = 2,           # lwd = line width (2 makes line thicker)
     main = "Stock Trend",  # main = title of the graph
     xlab = "Days",     # xlab = label name for x-axis
     ylab = "Price")    # ylab = label name for y-axis


#------------------------------------------ Dashed Line Example
  plot(x, y,
       type = "l",
       col = "green",
       lty = 2,             # line type (2 = dashed)
       lwd = 3,
       main = "Dashed Line Example")

  #Changing Axis Limits -----------------------------------------
  plot(x, y,
       type = "l",
       col = "purple",
       ylim = c(0,25),      # y-axis range
       xlim = c(0,6),       # x-axis range
       main = "Custom Axis Range")
  
  
  
  
  