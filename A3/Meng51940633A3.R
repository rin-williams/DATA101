# Question 1

# Decimal to binary
# a. 0.625
# Answer
# using double dabble method
# Step 1 multiply by 2 
# 0.625*2 = 1.25
# Step 2 if number is larger than 1, put 1 if not put 0.
# 0.1--
# use the fractional part of 1.25 and repeat step 1.
# 0.25*2 = 0.5
# 0.10-
# repeat step 1 again to fractional value of 0.5.
# 0.5*2 = 1
# 0.101
# therefore, the decimal value of 0.625 to binary is 0.101 of base 2.

# b. 1/9 (0.11111...)
# we only take some decimal place since it is not efficient to show all of the numbers
# 0.11111*2 = 0.22222 = 0.0-------
# 0.22222*2 = 0.44444 = 0.00------
# 0.44444*2 = 0.88888 = 0.000-----
# 0.88888*2 = 1.77776 = 0.0001----
# 0.77776*2 = 1.55552 = 0.00011---
# 0.55552*2 = 1.11104 = 0.000111--
# 0.11104*2 = 0.22208 = 0.0001110-
# 0.22208*2 = 0.44416 = 0.00011100

# we can also keep going since it is repeating, there will be a pattern
# therefore, the decimal value of 1/9 is 0.00011100 (repeated) of base 2.

# binary to decimal
# using positional notation binary
# the 1 and 0 corresponds if the number has a value or not.
# if it is 0, the number will be multiplied by 0.

# a. 1111
1*2^3 + 1*2^2 + 1*2^1 + 1*2^0

# b. 1010
1*2^3 + 0*2^2 + 1*2^1 + 0*2^0

# c. 1010.0101
# write out the integer part first.
intPart = 1*2^3 + 0*2^2 + 1*2^1 + 0*2^0
intPart
# now write the fractional part (0.0101)
fracPart = 0*2^(-1) + 1*2^(-2) + 0*2^(-3) + 1*2^(-4)
fracPart

# the answer will be the int + frac which is
intPart + fracPart

# d. 1.010101...(repeated)
# do the same as c.
intPart = 1*2^1
intPart
# fractional part (0.010101)
fracPart = 0*2^(-1) + 1*2^(-2) + 0*2^(-3) + 1*2^(-4) + 0*2^(-5) + 1*2^(-6)
fracPart

# add them all to get answer
intPart + fracPart

# Question 2 
# a. 6/7 (0.8571429)
# 0.8571*2 = 1.7142
# 0.7142*2 = 1.4284
# 0.4284*2 = 0.8568
# 0.8568*2 = 1.7136
# answer: 0.1101

# b. 1/7 (0.1428571)
# 0.1428*2 = 0.2856
# 0.2856*2 = 0.5712
# 0.5712*2 = 1.1424
# 0.1424*2 = 0.2848
# answer: 0.0010

# c. 
# 0.1101 + 0.0010 = 0.1111
1*2^(-1) + 1*2^(-2) + 1*2^(-3) + 1*2^(-4)

# d.
# 110 (6) +  1 (1) = 111 (7)
# 111/111 = 1


# Question 3
x = 1000000
y = 999999
A = function(x,y){
  x^4 - y^4
}
B = function(x,y){
  (x^2+y^2)*(x+y)*(x-y)
}
options(digits=15)
A(x,y)
B(x,y)
# B is more accurate since R cannot handle big number, and the number x^4 and y^4
# is very very big.

# Question 4
# a. 
# pretend these numbers are prime numbers (1 to 10000 are primes)
primes = 1:10000
# this code will print last 100 elements of this vector
primes[(10000-100):10000]

#b. 
#this code will add up first 9000 numbers in vector primes.
sum(primes[1:9000])

# Question 5.
x = 100
y = 99
myfunc = function(x,y){
  (x^16)*(((x^8 - y^8) / ((196059601)*(19801)*(199))) - 1)
  
}
myfunc(x,y)

# Question 6
# to approach this we can use the as.Date library.
tom = as.Date("1999-07-05")
david = as.Date("2003-12-12")

difftime(david, tom, units = "days")

# 7.
cities = c("ThunderBay", "Sudbury", "Windsor", "London", "Toronto", "Ottawa")
inc = c(93.07, 66.79, 70.16, 67.22, 75.24, 72.96)

income = matrix(inc, nrow = 1, ncol = length(cities))
colnames(income) <- cities

income

barplot(income, ylim = c(0,100), main = "2009 Family Income in Six Cities")

dotchart(income, labels = "", xlim = c(35,100), main = "2009 Family Income in Six Cities")



