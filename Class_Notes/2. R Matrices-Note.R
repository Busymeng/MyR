##############################################################################
### Creating a Matrix
# We've learned about vectors which allow us to store indexed elements. 
# A matrix will allow us to have a 2-dimensional data structure which contains 
# elements consisting of the same data type.

# Before we talk about the Matrix, we should show a quick tip for quickly 
# creating sequential numeric vectors, you can use the colon notation from 
# slicing to create sequential vectors:


# To create a matrix in R, you use the matrix() function. We can pass in a 
# vector into the matrix:




# Notice how the output is displayed. Here we have a two-dimensional matrix 
# which is 10 rows by 1 column. Now what if we want to specify the number of 
# rows? We can pass the parameter/argument into the matrix function called nrow 
# which stands for number of rows:



# Now we have a 2 by 5 matrix. Notice that the nrow argument allows this to 
# happen. But how do we decide the fill order? We could have filed columns 
# first (as we did above) or filled out the rows first insequential order. 
# The byrow argument allows you to specify whether or not you want to fill out
# the matrix by rows or by columns. For example:


# Creating Matrices from Vectors
# We can combine vectors to later input them into a matrix. For example imagine 
# the following vectors below of stock prices:

# not real prices


# Naming Matrices
# Now that we have our matrix, it would be nice to name the rows and columns 
# for reference. We can do this similarly to the names() function for vectors, 
# but in this case we define colnames() and rownames(). 
# So let's name our stock matrix:




##############################################################################
###  Matrix Arithmetic
# We can perform element by element mathematical operations on a matrix with a 
# scalar (single number) just like we could with vectors. 
# Let's see some quick examples:


# Multiplication


# Division (reciprocal)


# Division


# Power



# Comparison operators with matrices
# We can similarly perform comparison operations across an entire matrix to 
# return a matrix of logicals:


# Matrix Arithmetic with multiple matrices
# We can use multiple matrices with arithmetic as well, for example:


# Warning, big numbers!



# Matrix multiplication
# A quick side note on matrix multiplications. You can perform arithmetic 
# multiplication on an element by element basis using the * sign in R. 
# You should note this is not the same as Matrix Multiplication. If you are 
# familiar with the mathematics behind this topic and want to use R to perform 
# true matrix multiplication, you can use the following:



# True Matrix Multiplication





##############################################################################
###   Matrix Operations
# Now that we've learned how to create a matrix, let's learn how to use 
# functions and perform operations on it!
  
# Run the following code to create the stock.matrix from earlier

# Prices



# Put vectors into matrix



# Name matrix


# Display


# We can perform functions across the columns and rows, such as colSum:



# Doesn't really make sense for stocks, but just to show how it works



# We can also do other mathematical operations, check this reference for all 
# functions available.


# Binding columns and rows
# Let's go ahead and see how we can add columns and rows to a matrix, we can use 
# the cbind() to bind a new column, and rbind() to bind a new row. 
# For example, let's bind a new row with Facebook stock:




##############################################################################
###  Matrix Selection and Indexing
# Just like with vectors, we use the square bracket notation to select elements 
# from a matrix. Since we have two dimensions to work with, we'll use a comma to 
# separate our indexing for each dimension.

# So the syntax is then:
#    example.matrix[rows,columns]
# where the index notation (e.g. 1:5) is put in place of the rows or columns . 
# If either rows or columns is left blank, then we are selecting all the rows 
# and columns.

# Let's work through some examples:


# Grab first row


#Grab first column


# Grab first 3 rows


# Grab top left rectangle of:
# 1,2,3
# 11,12,13
#


# Grab last two columns


# Grab a center square of:
# 15,16
# 25,26



##############################################################################
###  Factor and Categorical Matrices
# In this lecture we will discuss the factor() function and its use for 
# creating categorical matrices. This specific function will become extremely 
# useful when we begin to apply data analysis and machine learning techniques 
# to our data, this idea is sometimes also known as creating dummy variables.

# Let's start by showing an example of why and how we build this matrix. 
# Imagine we have the following vectors representing data from an animal 
# sanctuary for dogs ('d') and cats ('c') where they each have a corresponding 
# id number in another vector.


# We want to convert the animal vector into information that an algorithm or 
# equation can understand more easily. Meaning we want to begin to check how many 
# categories (factor levels) are in our character vector.

# We can pass the vector through the factor() function like so to get this 
# information:



# Will show levels as well on RStudio or R Console



# We can see that we have two levels, 'd' and 'c'. In R there are two distinct 
# types of categorical variables, a ordinal categorical variable and a nominal 
# categorical variable .

# Nominal categorical variables don't have any order, such as dogs and cats 
# (there is no order to them). Versus Ordinal categorical variables 
# (as the name implies) do have an order. For example, if you had the vector:


# You could begin to assign in order to these variables, such as:
#   cold < med < hot
# if you wanted to assign an order while using the factor() function, you can 
# pass in the arguments ordered=True and the pass in the levels= and pass in a 
# vector in the order you want the levels to be in. So for example:

  
# This information is useful when used along with the summary() function which 
# is an amazingly convenient function for quickly getting information from a 
# matrix or vector. For example:

