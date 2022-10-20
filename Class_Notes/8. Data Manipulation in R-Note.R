#############################################################################
###  Guide to using dplyr
# We'll be covering the following functions:
# 
#   - filter() (and slice())
#   - arrange()
#   - select() (and rename())
#   - distinct()
#   - mutate() (and transmute())
#   - summarise()
#   - sample_n() and sample_frac()


# Installing
# You can install dplyr using


# Run it using


# Example Data
# Let's use some flight data for our examples. We'll download the nycflights13 
# data package:


# Notice how large the data frame is:



# filter()
# filter() allows you to select a subset of rows in a data frame. 
# The first argument is the name of the data frame. The second and subsequent 
# arguments are the expressions that filter the data frame:
  
# For example, we can select all flights on November 3rd that were from 
# American Airlines (AA) with:
  


# This is a lot simpler than the normal way to do this with a dataframe:
  



# slice()
# We can select rows by position using slice()




# arrange()
# arrange() works similarly to filter() except that instead of filtering or 
# selecting rows, it reorders them. It takes a data frame, and a set of column 
# names (or more complicated expressions) to order by. If you provide more 
# than one column name, each additional column will be used to break ties 
# in the values of preceding columns:
  


# You can add desc() to arrange in descending order:
  



# select()
# Often you work with large datasets with many columns but only a few are 
# actually of interest to you. select() allows you to rapidly zoom in on a 
# useful subset using operations that usually only work on numeric variable
# positions:



# rename()
# You can use rename() to rename columns, note this is not "in-place" 
# you'll need to reassign the renamed data structures.




# distinct()
# A common use of select() is to find the values of a set of variables. 
# This is particularly useful in conjunction with the distinct() verb which 
# only returns the unique values in a table.




# mutate()
# Besides selecting sets of existing columns, it’s often useful to add new 
# columns that are functions of existing columns. This is the job of mutate():




# transmute()
# Use transmute if you only want the new columns:




# summarise()
# You can use summarise() to quickly collapse data frames into single rows 
# using functions that aggregate results. Remember to use na.rm=TRUE to 
# remove NA values.




# sample_n() and sample_frac()
# You can use sample_n() and sample_frac() to take a random sample of rows: 
# use sample_n() for a fixed number and sample_frac() for a fixed fraction.



# .005% of the data



# Conclusion
# Hopefully you've seen how dplyr() can save you lots of time and headaches! 
# Remember to use help() or just reference the documentation if you ever need 
# help using the package!



#############################################################################
###  Overview of the Pipe Operator %>%
# While you aren't required to ever use the pipe operator with dplyr or tidyr, 
# it can be very useful when trying to perform multiple operations/functions 
# on a data set. The pipe operator will allow you to avoid either a long 
# nested operation or doing a bunch of assignmets.

# In its most basic form, this is what an example of using %>% with dplyr 
# looks like:

# The Data


# Using Nesting



# Using Multiple Assignments



# Using the Pipe Operator




#############################################################################
###  Guide to using tidyr
# Now that we've learned about dplyr we can begin to learn about tidyr which is
# a complementary package that will help us create tidy data sets! So what do 
# we mean when we say "tidy data"?

# Tidy data is when we have a data set where every row is an observation and 
# every column is a variable, this way the data is organized in such a way 
# where every cell is a value for a specific variable of a specific observation. 
# Having your data in this format will help build an understanding of your 
# data and allow you to analyze or visualize it quickly and efficiently.

# After viewing this lecture, you can reference this handy cheatsheet on 
# Data Wrangling

# Installing tidyr¶



# Data.frames versus data.tables
# All data.tables are also data.frames. Loosely speaking, you can think of 
# data.tables as data.frames with extra features.

# data.frame is part of base R.

# data.table is a package that extends data.frames. Two of its most notable 
# features are speed and cleaner syntax.

# However, that syntax for a data.table is different from the standard R 
# syntax for data.frame while being hard for the untrained eye to distinguish 
# at a glance. Therefore, if you read a code snippet and there is no other 
# context to indicate you are working with data.tables and try to apply the 
# code to a data.frame it may fail or produce unexpected results.

# So what are some of the practical differences? Here are a few:
#   - much faster and very intuitive by operations
#   - You won't accidentally print out a huge data.frame with the need to press 
#     Ctrl-C, data.table prevents this sort of accident
#   - faster and better file reading with fread
#   - the package also provides a number of other utility functions, like 
#     %between% or rbindlist that make life better
#   - pretty much faster for a lot of basic operations, since a lot of 
#     data.frame operations copy the entire thing needlessly


# Using tidyr
# We'll cover some of the most useful functions in tidyr. Including the following:
#   - gather()
#   - spread()
#   - separate()
#   - unite()


# Example Data Set
# Let's create some fake data that needs to be cleaned using tidyr




# Gather() and Spread()
# Sometimes people like to think of these operations as analogous to pivot 
# tables in excel, let's see some examples of how to use them:

# gather()
# The gather() function will collapse multiple columns into key-pair values. 
# The data frame above is considered wide since the time variable (represented 
# as quarters) is structured such that each quarter represents a variable. 
# To re-structure the time component as an individual variable, we can gather 
# each quarter within one column variable and also gather the values associated 
# with each quarter in a second column variable.

# Using Pipe Operator


# With just the function



# spread()
# This is the complement of gather(), which is why its called spread():





# Separate and Unite

# separate()
# Given either regular expression or a vector of character positions, 
# separate() turns a single character column into multiple columns.




# unite()
# Unite is a convenience function to paste together multiple columns into one.


# Separate is the complement of unite

