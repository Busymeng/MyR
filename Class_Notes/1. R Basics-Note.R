##############################################################################
###  Arithmetic with R
# Addition


# Subtraction


# Division


# Exponents


# Modulo


# Order of Operations



##############################################################################
###  Variables
# Let's go over how to assign variables in R.
# You can use the <- character to assign a variable, note how it kind of 
# looks like an arrow pointing from the object to the variable name.

# Use hash tags for comments


# Let's see the variable!


  
## Working with variables
#  We can use variables together and work with them, for example:



##############################################################################
###  R Data Types
# Let's discuss some basic data types in R.

# Numeric
# Decimal (floating point values) are part of the numeric class in R


# Integers
# Natural (whole) numbers are known as integers and are also part of the 
# numeric class


# Logical
# Boolean values (True and False) are part of the logical class. 
# In R these are written in All Caps.



# Characters
# Text/string values are known as characters in R. You use quotation marks 
# to create a text character string:



# Also single quotes



# Checking Data Type Classes
# You can use the class() function to check the data type of a variable:



##############################################################################
###  Vector Basics
# Vectors are one of the key data structures in R which we wil be using. 
# A vector is a 1 dimensional array that can hold character, numeric, or logical 
# data elements.

# We can create a vector by using the combine function c(). 
# To use the function, we pass in the elements we want in the array, with each 
# individual element separated by a comma.

# Using c() to create a vector of numeric elements



# Vector of characters


# Note that we can't mix data types of the elements in an array, R will 
# convert the other elements in the array to force everything to be of the same 
# data type. Later on we will learn about the list data structure that can take 
# on multiple data types!
  
# Here's a quick example of what happens with arrays given different data types:



# Vector Names
# We can use the names() function to assign names to each element in our vector. 
# For example, imagine the folowing vector of a week of temperatures:


# We know we have 7 temperatures for 7 weekdays, but which temperature 
# corresponds to which weekday? Does it start on Monday, Sunday, or another day 
# of the week? This is where names() can be assigned in the following manner:



# Now note what happens when we display the named vector:



# We can now begin to see how the elements were assigned names! 
# Depending on what IDE you are using, you may see the above displayed 
# horizontally instead of vertically, that's totally fine!

# We also don't have to rewrite the names vector over and over again, 
# we can use simple use a variable name as a names() assignment, for example:




##############################################################################
###  Working with Vectors
# We can perform basics arithmetic with vectors and operations will occur on 
# an element by element basis, for example:


# Adding Vectors



# Subtracting Vectors



# Multiplying Vectors



# Dividing Vectors



##############################################################################
##Functions with Vectors
# Let's learn about some useful functions that we can use with vectors! 
# A function will be in the form:
#         name_of_function(input)
# later on we will learn about creating our own functions, but R comes with 
# a bunch of built-in functions that you will commonly use.
# For example, if you want to sum all the elements in a numeric vector, you 
# can use the sum() function. For example:



# We can also check for things like the standard deviation, variance, 
# maximum element, minimum element, product of elements:


# Standard Deviation


#Variance


# Maximum Element


#Minimum Element


# Product of elements


# This is definitely not all of the functions available that are built in to R! 
# We will be using them over and over again throughout the course, so don't worry 
# too much about memeorizing them, you will naturally begin to remember them more 
# and more as you use them.

# Want a reference for all the functions available? 
# Check out this R Reference Card 
# (https://cran.r-project.org/doc/contrib/Short-refcard.pdf)



##############################################################################
###  Comparison Operators
# In R we can use comparison operators to compare variables and return logical 
# values. Let's see some relatively self-explanatory examples:

# Greater Than


# We can also do element by element comparisons for two vectors:

# Greater Than or Equal to


# Less Than and Less than or Equal To


# Be very careful with comparison operators and negative numbers! 
# Use spacing to keep things clear. An example of a dangerous situation:



# Comparing var less than negative 2


# Accidentally reassigning var!



# Keep syntax highlighting in mind to help you avoid this mistake!

# Not Equal


# Equal



# Vector Comparisons
# We can apply a comparison of a single number to an entire vector, for example:



##############################################################################
###  Vector Indexing and Slicing
# You can use bracket notation to index and access individual elements 
# from a vector:



# Indexing works by using brackets and passing the index position of the 
# element as a number. Keep in mind index starts at 1 (in some other 
# programming languages indexing starts at 0).

# Grab second element


# Multiple Indexing
# We can grab multiple items from a vector by passing a vector of index 
# positions inside the square brackets. For example:



# Slicing
# You can use a colon (:) to indicate a slice of a vector. The format is:
#   
#   vector[start_index:stop_index]
# 
# and you will get that "slice" of the vector returned to you. For example:



# Notice how the element st both the starting index and the stopping index 
# are included.

##  Indexing with Names
# We've previously seen how we can assign names to the elements in a vector, 
# for example:
#   v <- c(1,2,3,4)
#   names(v) <- c('a','b','c','d')
# We can use those names along with the indexing brackets to grab individual 
# elements from the array!



# Or pass in a vector of names we want to grab:
# Notice how we can call out of order!

##  Comparison Operators and Selection
# As alluded to in the comparison operator lecture, we can use comparison operators to filter out elements from a vector. Sometimes this is referred to as boolean/logical masking, because you are creating a vector of logicals to filter out results you want. Let's see an example of this:




# Let's break this down to see how it works, we first get the vector v>2:


# Now we basically pass this vector of logicals through the brackets of the 
# vector and only return true values at the matching index positions:


# We could also assign names to these logical vectors and pass them as well, 
# for example:




# Getting Help with R
# Aside from a google search or visiting StackOverflow, there are some built-in 
# ways to get help with R!
   
# Most R functions have online documentation.
# - help(topic) documentation on topic ?topic id.
# - help.search("topic") search the help system
# - apropos("topic") the names of all objects in the search list matching the 
#                    regular expression ”topic”
# - help.start() start the HTML version of help
# - str(a) display the internal structure of an R object
# - summary(a) gives a “summary” of a, usually a statistical summary but it is 
#              generic meaning it has different operations for different 
#              classes of a
# - ls() show objects in the search path; specify pat="pat" to search on a pattern
# - ls.str() str() for each variable in the search path
# - dir() show files in the current directory
# - methods(a) shows S3 methods of a
# - methods(class=class(a)) lists all the methods to handle objects of class a

# Let's see some basic examples o use these, we won't go through all 
# of them because some of them aren't useful to us...yet!

# Need help with vectors, try help()


# We can also do a search:
# This will pop up a help window  (need to pass a character string)


# Can also use ?? for a search


# Can also do a quick stats summary:


# We will use these help tools later on when we want more information, 
# for now just keep help() and ?? in mind when your stuck on something 
# (as well as google searching!).



##############################################################################
###  Print Formatting
# We can use the print() function to print out variables or strings:



##  Formatting
# We can format strings and variables together for printing in a few different ways:
  
##  paste()
# The paste() function looks like this:
#   paste (..., sep = " ")
# Where ... are the things you want to paste and sep is the separator you 
# want between the pasted items, by default it is a space. For example:



# paste0()
# paste0(..., collapse) is equivalent to paste(..., sep = "", collapse), 
# slightly more efficiently.



# sprintf
# srpintf() is a wrapper for the C function sprintf, that returns a character 
# vector containing a formatted combination of text and variable values. 
# Meaning you can use % codes to place in variables by specifying all of them 
# at the end. This is best shown through example:



# THIS WILL PRODUCE AN ERROR BECAUSE 7.1 is a float, not an integer


# So you are now wondering, what are the letters in front of % for? 
# How do I know which ones to use? THe full breakdown is available in the 
# documentation:

