##############################################################################
###  R Lists Basics
# We've covered Vectors, Matrices, and Data frames, now we will learn about our 
# last basic built-in R data structure: the list.

# Lists will allow us to store a variety of data structures under a single 
# variable. This means we could store a vecor,matrix, data frame, etc. under 
# a single list. For example:

# Create a vector


# Create a matrix


# Create a data frame



# Using list()
# We can use the list() to combine all the data structures:


# You will notice that the list() assigned numbers to each of the objects in 
# the list, but we can also assign names in the following manner:


# Ignore the "error in vapply", this won't occur in RStudio!



# Selecting objects from a list
# You can use bracket notation to show objects in a list, and double brackets 
# to actually grab the objects form the list, for example:
  
# Single brackets

# By index

# By name


# Notice the type!


# Use double brackets to actually grab the items


# Can also use $ notation


# You can also index on top of this once you've selected the object from the 
# list, for example:

# Second set of indexing




# Combining lists
# Lists can hold other lists! You can also combine lists using the combine 
# function c():

