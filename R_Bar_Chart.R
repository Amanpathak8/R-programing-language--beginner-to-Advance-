#A bar chart in R is used to show categorical data using rectangular bars.
#Each bar represents a category
# The height (or length) of the bar shows the value/count.


-------------------------------------------------------------------------
  
  
  #Simple Bar Chart
  marks <- c(50, 70, 90, 60)
  barplot(marks)
  ------------------------------------------------------------------------- 
    
    
  #Bar Chart with Names
    marks <- c(50, 70, 90, 60)
  names <- c("Math", "Science", "English", "History")
  barplot(marks, names.arg = names)
  ------------------------------------------------------------------------- 
    
    #With Color & Title
    barplot(marks,
            names.arg = names,
            col = "blue",
            main = "Student Marks",
            xlab = "Subjects",
            ylab = "Marks")
  
 # When to Use Bar Chart? Use when:
  # Data is categorical
  #You want to compare groups
  #You want to show counts or totals
  #Example:Number of students in each class
  #Sales per month , Gender distribution
  
    
    
    
    
    
    
    
    
    
  
  