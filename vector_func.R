# R Vector Function
#rep(vector , time = 4)
rep(c(2,3,4), times = 2)
# Repeats the whole vector 2 times
# Output: 2 3 4 2 3 4



rep(c(1,2,3), each = 2)
# Repeats each element 2 times
# Output: 1 1 2 2 3 3

rep(c(0,8), times = c(3,4))
# 0 repeated 3 times, 8 repeated 4 times
# Output: 0 0 0 8 8 8 8


rep(1:4, length.out = 8)
# Extends vector length to 8 by repeating values
# Output: 1 2 3 4 1 2 3 4
## seq() – Generate Sequence
seq(from = 3.5, to = 1.5, by = -0.5)
# Decreases by 0.5 each step
# Output: 3.5 3.0 2.5 2.0 1.5

seq(from = -2.7, to = 1.5, length.out = 10)
# Generates 10 equally spaced numbers between -2.7 and 1.5


# any() true even one value satisfy  and all() all value have to satisfy 
#– Logical Check
x <- 1:10
any(x > 5) # TRUE → because some values are greater than 5
all(x > 5)# FALSE → because not all values are greater than 5




