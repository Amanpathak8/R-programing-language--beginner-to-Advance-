# r switch Case 
# switch(expression , case1 , case2 .....)

# switch(expression, case1, case2, case3 ...)

x <- switch(4, "Aman", "pathak", "Data", "Scientist", "avaFin")
# Here 4 means → return the 4th value from the list
# 1 = "Aman" 2 = "pathak"  3 = "Data" 4 = "Scientist"  5 = "avaFin"
print(x)   # Output: "Scientist"

#----------------------------------------------------
y <- 3
x <- switch(as.character(y),   # convert to character because keys are character
            "4" = "Aman",
            "10" = "pathak",
            "3" = "Data",
            "7" = "Scientist",
            "1" = "avaFin")
print(x)   # Output: "Data"

#-----------------------------------------

operation <- "add"
result <- switch(operation,
                 "add" = 10 + 5,
                 "sub" = 10 - 5,
                 "mul" = 10 * 5,
                 "div" = 10 / 5,
                 "Invalid operation")
print(result)   # Output: 15
#------------------------------------
grade <- ""   #no value passed 
result <- switch(grade,
                 "A" = "Excellent",
                 "B" = "Very Good",
                 "C" = "Good",
                 "Invalid Grade")   # default value
print(result)   # Output: "Invalid Grade "


