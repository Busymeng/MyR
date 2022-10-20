##############################################################################
###  Dataframe Basics
# We've learned about vectors and their two-dimensional counterpart, matrices. 
# Now we will learn about Dataframes, one of the main tools for data analysis 
# with R! Matrix inputs were limited because all the data inside of the matrix 
# had to be of the same data type (numerics, logicals, etc). With Dataframes we 
# will be able to organize and mix data types to create a very powerful data 
# structure tool!

# R actually has built in DataFrames for quick reference to play around with! 
# Check out the following dataframes that are built-in!

# Dataframe about states


# US personal expense


# Women 


# To get a list of all available built-in dataframes, use data()



# Working with DataFrames
# You'll notice the states dataframe was really big, we can use the head() and 
# tail() functions to view the first and last 6 rows respectively. Let's take 
# a look:

# Quick variable assignment to save typing





# DataFrames - Overview of information
# We can use the str() to get the structure of a dataframe, which gives 
# information on the structure of the dataframe and the data it contains, 
# such as variable names and data types. We can use summary() to get a quick 
# statistical summary of all the columns of a DataFrame, depending on the data, 
# this may or may not be useful!

# Statistical summary of data


# Structure of Data


# Creating Data frames
# A quick note some people write Dataframe as one word, but in R its more 
# commonly written as two words: data frame. Not a very huge deal either way, 
# but if someone writes DataFrame they may be referring to a Python/pandas 
# DataFrame, so keep that in mind!

# We can create data frames using the data.frame() function and pass vectors as 
# arguments, which will then convert the vectors into columns of the data frame. 
# Let's see a simple example:
  
# Some made up weather data


# Pass in the vectors:


# Check structure




##############################################################################
###  Data Frame Selection and Indexing
# We've seen how to call built-in data frames and how to create them using 
# data.frame() along with vectors. Let's revisit our weather data frame and 
# learn how to select elements from within the dataframe using bracket notation:
  
# Some made up weather data



# Pass in the vectors:



# We can use the same bracket notation we used for matrices:
#   df[rows,columns]

# Everything from first row


#Everything from first column


# Grab Friday data



# Selecting using column names
# Here is where data frames become very powerful, we can use column names to 
# select data for the columns instead of having to remember numbers. 
# So for example:
  
# All rain values


# First 5 rows for days and temps



# If you want all the values of a particular column you can use the dollar sign 
# directly after the dataframe as follows:
#   df.name$column.name




# You can also use bracket notation to return a data frame format of the 
# same information:



# Filtering with a subset condition
# We can use the subset() function to grab a subset of values from our data 
# frame based off some condition. So for example, imagin we wanted to grab the 
# days where it rained (rain=True), we can use the subset() function as follows:



# Notice how the condition uses some sort of comparison operator, in the above 
# case ==. Let's grab days where the temperature was greater than 23:



# Another thing to note is that we didn't pass in the column name as a character 
# string, subset knows that you are referring to a column in that data frame.


# Odering a Data Frame
# We can sort the order of our data frame by using the order function. 
# You pass in the column you want to sort by into the order() function, then 
# you use that vector to select from the dataframe. 
# Let's see an example of sorting by the temperature:



# Let's take a look at what sorted.temp actually is:



# Ok, so we are just asking for those index elements in that order (by default 
# ascending, we can pass a negative sign to do descending order):
  



# We could have also used the other column selection methods we learned:




##############################################################################
###  Overview of Data Frame Operations
# Data frames are the workhorse of R, so in this lecture we will basically be 
# creating a "cheat sheet" of common operations used with data frames and R. 
# This will be a very useful lecture, and while we will be going over material 
# we've already covered its vital to know data frames very well in order to 
# save yourself tons of time in the future!

# We're going to do an overview of the following common actions:
# Creating Data Frames
# Importing and Exporting Data
# Getting Information about Data Frame
# Referencing Cells
# Referencing Rows
# Referencing Columns
# Adding Rows
# Adding Columns
# Setting Column Names
# Selecting Multiple Rows
# Selecting Multiple Columns
# Dealing with Missing Data
# Creating Data Frames

# empty data frame

# vector of integers

# vector of strings



# Importing and Exporting Data


# For Excel Files
# Load the readxl package


# Call info from the sheets using read.excel


# Output to csv



# Getting Information about Data Frame
# Row and columns counts


# Column Names


# Row names (may just return index)




# Referencing Cells
# You can think of the basics as using two sets of brackets for a single cell, 
# and a single set of brackets for multiple cells. For example:
  
# get cell by [[row,col]] num

# get multiplt cells in new df


# reassign a single cell



# Referencing Rows
# Usually you'll use the [row,] format

# returns a data frame (and not a vector!)


# to get a row as a vector, use following


# Referencing Columns
# Most column references return a vector:


# returns a vector


# returns vector


# a is int or string


# returns a vector


# Ways of Returning Data Frames
# returns 1 col df


# returns 1 col df


# Adding Rows
# Both arguments are DFs)


# use rbind to bind a new row!



# Adding Columns


# copy a col


# Can also use equations!




# Setting Column Names
# Rename second column



# Rename all at once with a vector



# Selecting Multiple Rows

# Same as head(df, 10)




# Conditional Selection




# Selecting Multiple Columns

#Grab cols 1 2 3

# by name

# keep all but first column

# drop cols 1 and 3


# Dealing with Missing Data
# Dealing with missing data is a very important skill to know when working with 
# data frames!

# detect anywhere in df
# anywhere in col

# delete selected missing data rows


# replace NAs with something else
# works on whole df
# For a selected column




##############################################################################
###  Merging Data Frames
# Let's learn how to merge Data Frames together (you'll use this in your Final 
# Data Frame Project!)

## use character columns of names to get sensible sort order



## "R core" is missing from authors and appears only here :

## example of using 'incomparables'

# NA's match
# NA's match, so 6 rows
# 2 rows

