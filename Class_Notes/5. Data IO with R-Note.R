###############################################################################
###  CSV Input and Output
# CSV stands for comma separated variable and its one of the most common ways 
# we'll be working with data throughout this course. The basic format of a csv 
# file is the first line indicating the column names and the rest of the 
# rows/lines being data points separated by commas. One of the most basic ways 
# to read in csv files in R is to use read.csv() which is built-in to R. 
# Later on we'll learn about fread which will be a bit faster and more 
# convenient, but its important to understand all your options!
  
# When using read.csv() you'll need to either pass in the entire path of the 
# file or have the file be in the same directory as your R script. Make sure 
# to account for possible spaces in the file path name, you may need to use 
# backslashes to account for this. This is often a point of confusion for 
# people new to programming, so make sure you understand the above before 
# continuing!

# Pass in the entire file path if not in same directory

# Check structure


# Check column names


# So we can now see how easy it is to read a csv, if we have another flat 
# file format like a tab separated file, or some other sort of delimiter we can 
# specify this when calling read.csv, form the documentation:
# 
# read.table(file, header = FALSE, sep = "", quote = "\"'",
#        dec = ".", numerals = c("allow.loss", "warn.loss", "no.loss"),
#        row.names, col.names, as.is = !stringsAsFactors,
#        na.strings = "NA", colClasses = NA, nrows = -1,
#        skip = 0, check.names = TRUE, fill = !blank.lines.skip,
#        strip.white = FALSE, blank.lines.skip = TRUE,
#        comment.char = "#",
#        allowEscapes = FALSE, flush = FALSE,
#        stringsAsFactors = default.stringsAsFactors(),
#        fileEncoding = "", encoding = "unknown", text, skipNul = FALSE)



# read.table
# The read.table function is the general form of read.csv, in fact read.csv is 
# actually just a thin wrapper around read.table which just makes it easier to 
# use sometimes. For example:
  


# Notice how we get an error here! That means we need to add additional 
# arguments to read.table, like what the delimiter (sep) is:
  


# Great! Now we know about both of those. In most situations though, you'll want 
# to use the fread function for ease of use:

# fread
# fread() is similar to read.table but faster and more convenient:




# Output to csv
# You can output your files to csv by using write.csv:

### Alternatively


## or without row names
### Alternatively





###############################################################################
###  Excel Files with R
# * Quick Note: The excel file used for the notes has a lot of NA values, 
# don't worry, that's just the way the file was,

# R has the ability to read and write to excel, which makes it very convenient 
# to work on the same datasets as business analysts or colleagues who only 
# know excel, meaning they can work with excel and hand you the files, then 
# you work with them in R!
  
# To do this, we need the readxl package for R. Remember you can download it 
# by using:
  


# You may need to specify repos="http://cran.rstudio.com/" as an argument in 
# the packages call if you get a mirror error.

# Let's see how we can use this:

# In case you don't have readxl (you may not need to specify repos)
#install.packages('readxl',repos="http://cran.rstudio.com/")
# Load the readxl package


# list the sheets of the excel file


# Call info from the sheets using read_excel


# Now you can perform operations on it just like a normal R data frame:
  



# If you had multiple sheets that you wanted to import into a list, you could 
# do this with lapply():
  

# Show entire list:



# Writing to Excel
# Writing to excel requires the xlsx package:
  





###############################################################################
###  SQL with R
# This will actually be a brief lecture, because connecting R to a SQL database 
# is completely dependent on the type of database you are using (MYSQL, 
# Oracle, etc...).

# So instead of trying to cover all of these (since each requires a different 
# package), we'll use this lecture to point you in the right direction for 
# various database types, once you've downloaded the correct library, actually 
# connecting is usually quite simple, then its just a matter of passing in SQL 
# queries through R.

# We'll show a general version using the DBI package, then point to more 
# specific resources.

# RODBC - General Use¶
# The RODBC library is one way of connecting to databases. Regardless of what 
# you decide to use, I highly recommend a google search consisting of your 
# database of choice + R. Here's an example use of RODBC


# RODBC Example of syntax



# MySQL
# The RMySQL package provides an interface to MySQL.
# 
# Oracle
# The ROracle package provides an interface for Oracle.
# 
# JDBC
# The RJDBC package provides access to databases through a JDBC interface.




###############################################################################
###  Web Scraping with R
# NOTE: TO FULLY UNDERSTAND THIS LECTURE YOU WILL NEED TO KNOW HTML AND CSS, 
# YOU WILL ALSO NEED TO KNOW THE PIPE OPERATOR IN R (%>%). COME BACK TO THIS 
# LECTURE AFTER REVIEWING THAT MATERIAL

# Web Scraping in general is almost always going to be unique to your personal 
# use case, this is because every website is different, updates occur, and 
# things can change. To fully understand webscraping in R, you'll need to 
# understand HTML and CSS in order to know what you are trying to grab off 
# the website.

# If you don't know HTML or CSS, you may be able to use an auto-web-scrape tool, 
# like import.io. Check it out, it will auto scrape and create a csv file for you.

# rvest library¶
# Below is a simple example of using rvest, but the best way to see a good 
# demo of rvest is through the built-in demos by using:
  


# Now if you are familiar with HTML and CSS a very useful library is rvest. 
# Below we will go over a simple example from RStudio:
  
# Will also install dependencies

# Imagine we’d like to scrape some information about The Lego Movie from IMDB. 
# We start by downloading and parsing the file with html():
  


# To extract the rating, we start with SelectorGadget to figure out which css 
# selector matches the data we want: strong span. (If you haven’t heard of 
# selectorgadget, make sure to read "SelectorGadget" – it’s the easiest way to 
# determine which selector extracts the data that you’re interested in.) 
# We use html_node() to find the first node that matches that selector, extract 
# its contents with html_text(), and convert it to numeric with as.numeric():
  


# We use a similar process to extract the cast, using html_nodes() to find all 
# nodes that match the selector:
  


# The titles and authors of recent message board postings are stored in a the 
# third table on the page. We can use html_node() and [[ ]] to find it, then 
# coerce it to a data frame with html_table():
  


