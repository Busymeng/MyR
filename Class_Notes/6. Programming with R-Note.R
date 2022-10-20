###############################################################################
###  Logical Operators
# Logical Operators will allow us to combine multiple comparison operators. 
# The logical operators we will learn about are:
#   
#   AND - &
#   OR - |
#   NOT - !
#   The best way to explain these is to see some examples.

# Imagine the variable x


# Now we want to know if 10 is less than 20 AND greater than 5:


# We can also add parenthesis for readability and to make sure the order of 
# comparisons is what we expect:


# We can basically think of this as a series of Logical Boolean values, 
# TRUE & TRUE & TRUE. We return a single TRUE if they are all TRUE. 
# Let's see an example of this not being the case:


# Returned FALSE because while x > 1 is TRUE, we need BOTH to be TRUE, 
# thus the AND statement &. What if we only want one of them to be true? 
# That's when we use OR |. For example:


# Here we only need one or the other to be true!


# NOT !
# You can think about NOT as reversing any logical value in front of it, 
# basically asking, "Is this NOT true?" For example:


# We can stack them (pretty uncommon, but possible)




##  Use Case Example
# Here's a quick example of a real use case for these operators. Imagine the 
# following data frame:


# This shows some data for various car models (its built in to R). 
# Let's grab models with at least 20 mpg:

# Notice the use of indexing with the comma

# subset(df,mpg>=20) # Could also use subset

# Great! Now let's combine filters with logical operators! Let's grab rows 
# with cars of at least 20mpg and over 100 hp.


  
##  Logical Operators with Vectors
# We have two options when use logical operators, a comparison of the entire 
# vectors element by element, or just a comparison of the first elements in 
# the vectors, to make sure the output is a single Logical, don't worry too 
# much about this right now, we will cover it in more depth later on.




# To compare first elements use && or ||




###############################################################################
###  if, else, else if Statements
# Now it is time to finally start learning how we can program some sort of logic 
# using R! Our first step in this learning journey for programming will be 
# simple if, else, and else if statements.

# Here is the syntax for an if statement in R:
#   
#   if (condition){
#     # Execute some code
#   }

# So what does this actually mean if you've never seen an if statement before? 
# It means that we can begin to apply some simple logic to our code. We say if 
# some condition is true then execute the code inside of the curly brackets.

# For example, let's say we have two variables, hot and temp. Imagine that hot 
# starts off as FALSE and temp is some number in degrees. If the temp is greater 
# than 80 than we want to assign hot==TRUE.

# Let's see this in action:


# Reset temp


# Something to keep in mind is that you should format your code carefully so 
# you can come back later on and easily read it! By convention we align the 
# closing bracket with the if statement it refers to. However, because we 
# use brackets we could be sloppy (not good!) and still have the code work out:



# This works...but hard to read!

# A good editor like RStudio will help you make sure everything is aligned well.

# else
# If we want to execute another block that occurs if the if statement is false, 
# we can use an else statement to do this! It has the syntax:

# if (condition) {
#   # Code to execute if true
# } else {
#   # Code to execute if above was not true
# }

# Notice the alignment of the curly brackets and the use of the else keyword. 
# Let's see it in action!
  

# else if
# What if we wanted more options to print out, rather than just two, the if and 
# the else? This is where we can use the else if statement to add multiple 
# condition checks, using else at the end to execute code if none of our 
# conditions match up with and if or else if.
  
# Let's see this in action!






# Final Example
# Let's see a final more elaborate example of if,else, and else if to close 
# out our discussion! Let's imagine that we have a store with two items 
# for sale: ham and cheese and we want an automated report to go to HQ depending 
# on how many we sell:

# Items sold that day


# Report to HQ



###############################################################################
###  while loops
# while loops are a while to have your program continuously run some block of 
# code until a condition is met (made TRUE). The syntax is:
  
# while (condition){
#   # Code executed here 
#   # while condition is true
# }

# A major concern when working with a while loop is to make sure that at some 
# point the condition should become true, otherwise the while loop will go 
# forever! Remember you can use Crtl-C to kill a process in R Studio!
  
# Here's a real quick side note on printing variables along with strings:



# Could also use:


# We'll be using the cat function in the next example which shows how a 
# while loop works:
  



# Let's add an if statement to this logic!




# break
# You can use break to break out of a loop. Previously we showed an if 
# statement checking for 10, but this wasn't actually stopping the loop, 
# the while condition check on the next run stopped the loop, let's show 
# an example where we could use break to terminate the loop:








# Notice how the break stopped the "I will also print, woohoo!" from occuring. 
# You can use this as an internal check inside a while loop to stop is based off
# some other condition.




###############################################################################
###  for loops
# A for loop allows us to iterate over an object (such as a vector) and we can 
# then perform and execute blocks of codes for every loop we go through. 
# The syntax for a for loop is:
  
# for (temporary_variable in object){
#   # Execute some code at every loop
# }


# Let's start off by showing how to use a for loop with a vector:

# For loop over a vector
# We can think of looping through a vector in two different ways, the first way 
# would be to create a temporary variable with the use of the in keyword:




# The other way would be to loop a numbered amount of times and then use 
# indexing to continually grab from the vector:




# For loop over a list
# We can do the same thing with a list:







# For loop with a matrix
# We can similarly loop through each individual element in a matrix:




# Nested for loops
# We can nest for loops inside one another,however be careful when doing this, 
# as every additional for loop nested inside another may cause a significant 
# amount of additional time for your code to finish executing. For example:





###############################################################################
###  Introduction to Functions
# This lecture will consist of explaining what a function is in R and how to 
# create one. Functions will be one of our main building blocks when we 
# construct larger and larger amounts of code to solve problems.

# So what is a function?
  
# Formally, a function is a useful device that groups together a set of 
# statements so they can be run more than once. They can also let us specify 
# parameters that can serve as inputs to the functions.

# On a more fundamental level, functions allow us to not have to repeatedly 
# write the same code again and again. If you remember back to the lessons on 
# strings and lists, remember that we used a function length() to get the length
# of a string. Since checking the length of a sequence is a common task you 
# would want to write a function that can do this repeatedly at command. 
# Functions will be one of most basic levels of reusing code in R, and it will 
# also allow us to start thinking about program design.

# We already have seen built-in functions and we can use the help function to 
# discover the arguments that the functions take in.



# Notice how the format is:
#   
#   name_of_function(input1,input2,....)
# 
# So how do we create this ourselves? Here is the syntax for writing your 
# own function:
#   
#   name_of_function <- function(arg1,arg2,...){
#     # Code that gets executed when function is called
#   }
# 
# Let's see some examples.

# Example 1
# Simple function, no inputs!


# Example 2



# Example 3



# Default values
# Notice that so far we've had to define every single argument in the function 
# when using it, but we can also have default values by using an equals sign, 
# for example:
  

# uses default


# overwrite default


# You'll see lots of built-in functions use default values for a variety of 
# tasks, where the users will usually need a particular value.


# Returning Values
# So far we've only been printing out results, but what if we wanted to return 
# the results so that we could assign them to a variable, we can use the return 
# keyword for this task in the following manner:
    


# Notice how we aren't printing, we are returning, meaning we can assign this 
# to a variable:



# This is the sort of syntax you want to use for your functions when you want to
# pass arguments to them, and then get some sort of result in return.


# Scope
# Scope is the term we use to describe how objects and variable get defined 
# within R. When discussing scope with functions, as a general rule we can 
# say that if a variable is defined only inside a function than its scope is 
# limited to that function. For example, consider the following function:

# Multiplies input by 5



# These error indicate that these variables are only defined inside the scope of 
# the function. So variables defined inside of a function are only defined 
# (or redefined) inside of that function. However, variables assigned outside 
# of the function are global variables, and the function will have access to 
# them due to their scope. For example:

# pass stuff to function

# reassignment only happens in scope of function


# So what is happening above? The following happens

# print(v) will check for the global variable v, the outer scope

# print(stuff) will also check for the global variable stuff
# 
# fun(stuff) will accept an argument stuff, print out v, and then reassign 
# stuff (in the scope of the function) and print out stuff. Notice two things:
#  - The reassignment of stuff only effects the scope of the stuff variable 
#    inside the function
#  - The fun function first checks to see if v is defined at the function scope, 
#    if not (which was the case) it will then search the global scope for a 
#    variable names v, leading to it printing out "I'm global v".

# Check out the function below and make sure you understand it:

