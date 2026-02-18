#histogram in r 
hist(df, main , xlab,ylab, xlim ,ylim,breaks,col,border)
#A histogram is a graph used to show the distribution of numeric data.
marks <- c(45, 50, 52, 60, 62, 65, 70, 75, 80, 90)

hist(marks) # hist() 
hist(marks,
     main = "Marks Distribution",
     xlab = "Marks",
     col = "lightblue",
     breaks = 5)

-------------------------------------------------------
  data <- c(45, 50, 52, 60, 62, 65, 70, 75, 80, 90)

hist(data)

  hist(data,
       breaks = 3,
       col = "lightblue",
       main = "Histogram with 3 Bins")



-#--------------------------------------Histogram with Specific Break Points
    hist(data,
         breaks = c(40, 55, 70, 85, 100),
         col = "orange",
         main = "Custom Break Points")
  
-#-------------------------------------- Horizontal Bar Graph
    hist(data,
         probability = TRUE,
         col = "lightgreen",
         main = "Density Histogram")
  


#-------------------------------------- Probability Density Histogram

  hist(data,
       probability = TRUE,
       col = "lightgreen",
       main = "Density Histogram")
  


 #Histogram with Density Curve (Very Important -------------------
  hist(data,
       probability = TRUE,
       col = "lightgray",
       main = "Histogram with Density")
  
  lines(density(data), col = "red", lwd = 2)
  


#---------------------------------------Normal Distribution Overlay
  hist(data,
       probability = TRUE,
       col = "skyblue",
       main = "Histogram with Normal Curve")
  
  curve(dnorm(x, mean = mean(data), sd = sd(data)),
        col = "red",
        lwd = 2,
        add = TRUE)
  





#When to Use Histogram ->Data distribution ,Skewness ,Spread ,Outliers
#Example:Age distribution ,Salary distribution ,Stock returns distribution 
#Bar Chart is Used For>- Compare categories ,Show counts of different groups
#Compare totals
