#OPERATORS IN R (Revision Notes)
# 1⃣ ARITHMETIC OPERATORS
# +   Addition
# -   Subtraction
# *   Multiplication
# /   Division
# %%  Modulus (Remainder)
# %/% Integer Division (Quotient)
# ^   Power
a <- 9.25
b <- 2
print(a - b)    # Subtraction → 7.25
print(a + b)    # Addition → 11.25
print(a * b)    # Multiplication → 18.5
print(a / b)    # Division → 4.625
print(a %% b)   # Remainder → 1.25
print(a %/% b)  # Quotient (integer part only) → 4
print(a ^ b)    # 9.25^2 → 85.5625
#################################################
# 2 VECTORS
#################################################

# c() function is used to combine values into a vector

c1 <- c(3, 4, 5)
print(typeof(c1))   # "double" (numeric values are stored as double)
print(class(c1))    # "numeric"

c2 <- c(23, 45, 67)

# Arithmetic operations on vectors work element-wise

print(c1 - c2)   # (3-23, 4-45, 5-67)
print(c1 + c2)
print(c1 * c2)
print(c1 / c2)
print(c1 %% c2)
print(c1 %/% c2)
print(c1 ^ c2)

# 3 RELATIONAL OPERATORS <,>,<=,>=,!=
# <   Less than
# >   Greater than
# <=  Less than or equal
# >=  Greater than or equal
# ==  Equal to
# !=  Not equal to
a <- 9.5
b <- 2

print(a < b)    # FALSE
print(a > b)    # TRUE
print(a <= b)   # FALSE
print(a >= b)   # TRUE
print(a == b)   # FALSE
print(a != b)   # TRUE
# 4 VECTOR RELATIONAL COMPARISON <,>,<=,>=,!=
c1 <- c(3, 4, 5)
c2 <- c(23, 45, 67)

print(c1 < c2)   # Compare element-wise
print(c1 > c2)
print(c1 <= c2)
print(c1 >= c2)
print(c1 == c2)
print(c1 != c2)
# 5 LOGICAL OPERATORS &,!,|,&&,||
#################################################

# &   Element-wise AND all values inside will be compared 
# |   Element-wise OR all values 
# !   NOT (reverse TRUE/FALSE)
# &&  Single value AND (checks only first element)
# ||  Single value OR (checks only first element)

d <- c(TRUE, FALSE, TRUE)
e <- c(TRUE, TRUE, FALSE)

print(d & e)    # Element-wise AND
print(d | e)    # Element-wise OR
print(!d)       # NOT (reverse values) true to false , false to true 

print(TRUE && FALSE)  # Single comparison
print(TRUE || FALSE)
# 6⃣ ASSIGNMENT OPERATORS ->, <- , = 
# <-  (Most preferred)
# ->  (Reverse assignment)
# =   (Also works, but mainly used in functions)
x <- 10
20 -> y
z = 30




