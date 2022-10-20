###############################################################################
###  Built-in R Features - Data Structures
# R contains quite a few useful built-in functions to work with data structures. 
# Here are some of the key functions to know:
#   
# seq(): Create sequences
# sort(): Sort a vector
# rev(): Reverse elements in object
# str(): Show the structure of an object
# append(): Merge objects together (works on vectors and lists)

# seq(start,end,step size)



# Data Types
# is.*(): Check the class of an R object
# as.*(): Convert R objects





###############################################################################
###  Apply
# In this lecture we will learn about 3 different apply() functions. The basic 
# idea of an apply() is to apply a function over some iterable object.

# Let's start with lapply():

# lapply()
# lapply() will apply a function over a list or vector:
# 
# lapply(X, FUN, ...)
# where X is your list/vector and FUN is your function. For more info you can use:



# Let's see how we can use this in its most practical use case, apply a custom 
# function to a vector. First I want to show you a quick function (we will go 
# over more utilities like this one later) which will allow us to pick a random 
# sample from a vector:
  
# sample just 1 random number between 1 and 10


# vector


# our custom function


# lapply()



# Anonymous Functions
# So you noticed that in the last example we had to write out an entire 
# function to apply to the vector, but in reality that function is just doing 
# something pretty simple, adding a random number. Do we really want to have 
# to formally define an entire function for this? We don't want to, especially 
# if we only plan to use this function a single time!

# To address this issue, we can create an anonymous function (called this 
# because we won't ever name it). Here's the syntax for an anonymous function in R:
# 
# function(a){code here}
# 
# This is a similar idea to lambda expressions in Python. So for example we 
# can rewrite the previous function as an anonymous function and use 
# lapply() with it:



# Anon func with lapply()



# Notice how its kind of implied that everything inside of the curly brackets {} 
# will be returned. Here's a simpler example:
  
# adds two to every element



# Now what if our original function had multiple arguments? lapply() actually 
# let's us deal with that by simply adding them in like this:


# Uh oh! Forgot to add other arguments!


# Nice!



# You can do this with several arguments,you just keep adding them.


# sapply() vs. lapply()
# Notice that lapply returned a list, we can use sapply, which simplifies the 
# process by returning a vector or matrix. For example:



# Nice! A vector returned


# let's prove it to ourselves





# sapply() limitations
# sapply() won't be able to automatically return a vector if your applied 
# function doesn't return something for all elements in that vector. For example:
  
# Checks for even numbers



# Other apply() type functions
# There are actually quite a few different apply() type functions in R. 
# We've gone over everything you need to know for now. But if your curious in 
# finding out more about them you can check out this documentation or this 
# excellent StackOverflow answer, copied here below:
# 
# R has many *apply functions which are ably described in the help files 
# (e.g. ?apply). There are enough of them, though, that beginning useRs may 
# have difficulty deciding which one is appropriate for their situation or 
# even remembering them all. They may have a general sense that "I should be 
# using an *apply function here", but it can be tough to keep them all straight 
# at first.
# 
# Despite the fact (noted in other answers) that much of the functionality of 
# the *apply family is covered by the extremely popular plyr package, the base 
# functions remain useful and worth knowing.
# 
# This answer is intended to act as a sort of signpost for new useRs to help 
# direct them to the correct *apply function for their particular problem. 
# Note, this is not intended to simply regurgitate or replace the 
# R documentation! The hope is that this answer helps you to decide which *apply 
# function suits your situation and then it is up to you to research it further. 
# With one exception, performance differences will not be addressed.
# 
# apply - When you want to apply a function to the rows or columns of a matrix 
# (and higher-dimensional analogues); not generally advisable for data frames 
# as it will coerce to a matrix first.
# 
# # Two dimensional matrix
# M <- matrix(seq(1,16), 4, 4)
# 
# # apply min to rows
# apply(M, 1, min)
# [1] 1 2 3 4
# 
# # apply max to columns
# apply(M, 2, max)
# [1]  4  8 12 16
# 
# # 3 dimensional array
# M <- array( seq(32), dim = c(4,4,2))
# 
# # Apply sum across each M[*, , ] - i.e Sum across 2nd and 3rd dimension
# apply(M, 1, sum)
# # Result is one-dimensional
# [1] 120 128 136 144
# 
# # Apply sum across each M[*, *, ] - i.e Sum across 3rd dimension
# apply(M, c(1,2), sum)
# # Result is two-dimensional
#      [,1] [,2] [,3] [,4]
# [1,]   18   26   34   42
# [2,]   20   28   36   44
# [3,]   22   30   38   46
# [4,]   24   32   40   48
# 
# If you want row/column means or sums for a 2D matrix, be sure to investigate 
# the highly optimized, lightning-quick colMeans, rowMeans, colSums, rowSums.
# 
# lapply - When you want to apply a function to each element of a list in turn 
# and get a list back.
# 
# This is the workhorse of many of the other *apply functions. Peel back their 
# code and you will often find lapply underneath.
# 
#    x <- list(a = 1, b = 1:3, c = 10:100) 
#    lapply(x, FUN = length) 
#    $a 
#    [1] 1
#    $b 
#    [1] 3
#    $c 
#    [1] 91
# 
#    lapply(x, FUN = sum) 
#    $a 
#    [1] 1
#    $b 
#    [1] 6
#    $c 
#    [1] 5005
#    
# sapply - When you want to apply a function to each element of a list in turn, 
# but you want a vector back, rather than a list.
# 
# If you find yourself typing unlist(lapply(...)), stop and consider sapply.
# 
#    x <- list(a = 1, b = 1:3, c = 10:100)
#    #Compare with above; a named vector, not a list 
#    sapply(x, FUN = length)  
#    a  b  c   
#    1  3 91
# 
#    sapply(x, FUN = sum)   
#    a    b    c    
#    1    6 5005 
#    
# In more advanced uses of sapply it will attempt to coerce the result to a 
# multi-dimensional array, if appropriate. For example, if our function returns
# vectors of the same length, sapply will use them as columns of a matrix:
#    sapply(1:5,function(x) rnorm(3,x))
#    
# If our function returns a 2 dimensional matrix, sapply will do essentially 
# the same thing, treating each returned matrix as a single long vector:
#    sapply(1:5,function(x) matrix(x,2,2))
#    
# Unless we specify simplify = "array", in which case it will use the 
# individual matrices to build a multi-dimensional array:
#    sapply(1:5,function(x) matrix(x,2,2), simplify = "array")
#    
# Each of these behaviors is of course contingent on our function returning 
# vectors or matrices of the same length or dimension.
# 
# 
# vapply - When you want to use sapply but perhaps need to squeeze some more 
# speed out of your code.
# 
# For vapply, you basically give R an example of what sort of thing your 
# function will return, which can save some time coercing returned values 
# to fit in a single atomic vector.
# 
# x <- list(a = 1, b = 1:3, c = 10:100)
# #Note that since the advantage here is mainly speed, this
# # example is only for illustration. We're telling R that
# # everything returned by length() should be an integer of 
# # length 1. 
# vapply(x, FUN = length, FUN.VALUE = 0L) 
# a  b  c  
# 1  3 91
# 
# 
# mapply - For when you have several data structures (e.g. vectors, lists) and 
# you want to apply a function to the 1st elements of each, and then the 2nd 
# elements of each, etc., coercing the result to a vector/array as in sapply.
# 
# This is multivariate in the sense that your function must accept multiple 
# arguments.
# 
# #Sums the 1st elements, the 2nd elements, etc. 
# mapply(sum, 1:5, 1:5, 1:5) 
# [1]  3  6  9 12 15
# #To do rep(1,4), rep(2,3), etc.
# mapply(rep, 1:4, 4:1)   
# [[1]]
# [1] 1 1 1 1
# 
# [[2]]
# [1] 2 2 2
# 
# [[3]]
# [1] 3 3
# 
# [[4]]
# [1] 4
# 
# 
# Map - A wrapper to mapply with SIMPLIFY = FALSE, so it is guaranteed to 
# return a list.
# 
# Map(sum, 1:5, 1:5, 1:5)
# [[1]]
# [1] 3
# 
# [[2]]
# [1] 6
# 
# [[3]]
# [1] 9
# 
# [[4]]
# [1] 12
# 
# [[5]]
# [1] 15
# 
# 
# rapply - For when you want to apply a function to each element of a nested 
# list structure, recursively.
# 
# To give you some idea of how uncommon rapply is, I forgot about it when 
# first posting this answer! Obviously, I'm sure many people use it, but 
# YMMV.rapply is best illustrated with a user-defined function to apply:
# 
# #Append ! to string, otherwise increment
# myFun <- function(x){
#     if (is.character(x)){
#     return(paste(x,"!",sep=""))
#     }
#     else{
#     return(x + 1)
#     }
# }
# 
# #A nested list structure
# l <- list(a = list(a1 = "Boo", b1 = 2, c1 = "Eeek"), 
#           b = 3, c = "Yikes", 
#           d = list(a2 = 1, b2 = list(a3 = "Hey", b3 = 5)))
# 
# 
# #Result is named vector, coerced to character           
# rapply(l,myFun)
# 
# #Result is a nested list like l, with values altered
# rapply(l, myFun, how = "replace")
# 
# 
# tapply - For when you want to apply a function to subsets of a vector and 
# the subsets are defined by some other vector, usually a factor.
# 
# The black sheep of the *apply family, of sorts. The help file's use of the 
# phrase "ragged array" can be a bit confusing, but it is actually quite simple.
# 
# A vector:
#   
#   x <- 1:20
# A factor (of the same length!) defining groups:
#   
#   y <- factor(rep(letters[1:5], each = 4))
# Add up the values in x within each subgroup defined by y:
#   
#   tapply(x, y, sum)  
# a  b  c  d  e  
# 10 26 42 58 74 
# 
# More complex examples can be handled where the subgroups are defined by the 
# unique combinations of a list of several factors. tapply is similar in 
# spirit to the split-apply-combine functions that are common in R (aggregate, 
# by, ave, ddply, etc.) Hence its black sheep status.




###############################################################################
###  Built-in R Features - Math
# We've talked a bit about some of the built-in math functions and features 
# in R, but let's have one more look at a few of them:
#   
# abs(): computes the absolute value.
# sum(): returns the sum of all the values present in the input.
# mean(): computes the arithmetic mean.
# round(): rounds values (additional arguments to nearest)
# Here's a quick example of each:



# Want more built-in math functions? Check out:

# Numeric Functions
# Function	Description
# abs(x)	absolute value
# sqrt(x)	square root
# ceiling(x)	ceiling(3.475) is 4
# floor(x)	floor(3.475) is 3
# trunc(x)	trunc(5.99) is 5
# round(x, digits=n)	round(3.475, digits=2) is 3.48
# signif(x, digits=n)	signif(3.475, digits=2) is 3.5
# cos(x), sin(x), tan(x)	also acos(x), cosh(x), acosh(x), etc.
# log(x)	natural logarithm
# log10(x)	common logarithm
# exp(x)	e^x




###  Regular Expressions
# Regular expressions is a general term which covers the idea of pattern 
# searching, typically in a string (or a vector of strings).
# 
# For now we'll learn about two useful functions for regular expressions and 
# pattern searching (we'll go deeper into this topic in general later on):
#   
#   - grepl(), which returns a logical indicating if the pattern was found
#   - grep(), which returns a vector of index locations of matching pattern 
#     instances
# 
# For both of these functions you'll pass in a pattern and then the object you 
# want to search. Let's see some quick examples:
  




###############################################################################
###  Timestamps
# R gives us a variety of tools for working with timestamp information. 
# Let's start off by exploring the Date object:

# Dates
# You can use the as.Date() function to convert a character string to a Date 
# object, which will allow it to contain more time information. The string 
# will need to be in a standard time format. We can ask for today's date by 
# asking the system (Sys.) for the Date:
  


# Set as a variable


# You can also convert character strings in R to a Date object using as.Date(). 
# You'll need to make sure its in the correct format, or use % symbols that 
# correlate with your given format:
# 
#    Code	Value
#    %d	  Day of the month (decimal number)
#    %m	  Month (decimal number)
#    %b	  Month (abbreviated)
#    %B	  Month (full name)
#    %y	  Year (2 digit)
#    %Y	  Year (4 digit)

# Let's show some examples of how to use as.Date and the format argument for this:

# YYYY-MM-DD


# Using Format


# Using Format


# Now we see how we can use as.Date() in combination with the format argument to
# basically convert any string representation of dates to an actual Date object, 
# which is useful for time series analysis.


# Time
# Just like with Dates, we can also convert strings and work with them for time 
# information. R uses a POSIXct object type to store time information. It's a 
# bit outside the scope of this course, but POSIX represents a portable 
# operating system interface, primarily for UNIX systems, but available on 
# other operating systems as well. As far as what we need to know now, we can 
# just use as.POSIXct() for converting string to a POSIXct object type for time 
# series analysis, the format symbols are best seen through the help 
# documentation for the strptime() function:



# Notice how today's date was added automatically because we didn't specify 
# it in the format argument. If we already had the info:



# Most times, we'll actually be using the strptime() function, instead of 
# POSIXct. Here's a quick lowdown on the differences between the functions:

# There's two internal implementations of date/time: POSIXct, which stores 
# seconds since UNIX epoch (+some other data), and POSIXlt, which stores a 
# list of day, month, year, hour, minute, second, etc.

# strptime is a function to directly convert character vectors (of a variety 
# of formats) to POSIXlt format.

# as.POSIXlt converts a variety of data types to POSIXlt. It tries to be 
# intelligent and do the sensible thing - in the case of character, it acts 
# as a wrapper to strptime.

# as.POSIXct converts a variety of data types to POSIXct. It also tries to 
# be intelligent and do the sensible thing - in the case of character, it runs 
# strptime first, then does the conversion from POSIXlt to POSIXct.

# It makes sense that strptime is faster, because strptime only handles 
# character input whilst the others try to determine which method to use 
# from input type. It should also be a bit safer in that being handed 
# unexpected data would just give an error, instead of trying to do the 
# intelligent thing that might not be what you want.

# So let's just see a basic example of strptime:



# Great! For most of the course, we'll just skip to using strptime() directly. 
# If you are a bit confused about the various functions, the main thing you need 
# to get out of this lecture is just two things:
#  - How to use strptime() along with the format argument
#  - How to use help(strptime) to check the documentation for formatting symbols

# That's it for Timestamps and Dates, we'll revisit this topic when we start 
# dealing with datasets that have time info in them.
