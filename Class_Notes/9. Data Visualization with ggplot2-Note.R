##############################################################################
###   Grammar of Graphics and ggplot2
# In this multi-part lecture we will be working through an example of building 
# out a nice visualization. We will be learning one of the most common and 
# popular libraries for data visualization in R, ggplot2. This lecture will 
# just give a brief introduction to the library and some options for plotting. 
# Eventually we will choose a particular method for static plots and then have 
# separate lectures for each plot type!
  
# Now for a quick overview of ggplot2!
  
# ggplot2 has several advantages:
#   - Plot specification at a high level of abstraction
#   - Very flexible
#   - Theme system for polishing plot appearance
#   - Mature and complete graphics system
#   - Many users, active mailing list
#   - Lot's of online help available (StackOverflow, etc...)

# What ggplot2 not ideal for:
#   - Interactive graphics
#   - Graph Theory Plots (Graph Nodes)
#   - 3-D Graphics

# Later on we'll learn about other libraries better suited for those topics. 
# As we go through this tutorial on ggplot2, it may be helpful to use this 
# useful cheat sheet for reference when using ggplot2!
  
# ggplot2 also has great documentation! It is most likely you will be 
# referencing either the cheat sheet or the documentation (or these notes) 
# when creating some of your first plots. Don't feel bad if you find yourself 
# referencing them a lot, its a very common practice to go to the documentation, 
# look up what kind of plot you want to make, and then use the skeleton form 
# the documentation to build out your


# Grammar of Graphics
# ggplot2 is based on the grammar of graphics, the idea that you can build 
# every graph from the same few components: a data set, a set of geoms—visual 
# marks that represent data points, and a coordinate system. To display data 
# values, map variables in the data set to aesthetic properties of the geom 
# like size, color, and x and y locations.

# Layers for building Visualizations
# ggplot2 is based off the grammar of graphics, which sets a paradigm for 
# data visualization in layers:
#   - Coordinates
#   - Statistics
#   - Facets
#   - Geometries
#   - Aesthetics
#   - Data

# We won't go too much in depth to the over all philosophy of the grammar of 
# graphics because the best source of this is from the creator of ggplot, 
# Hadley Wickham, who created a great paper on the topic which you can read here.

# As far as the syntax for grammar of graphics and ggplot, we can get a 
# better understanding through some quick examples. In this lecture we'll 
# quickly show some syntax examples, then in the following lectures we'll 
# show various examples of specific plot types using qplot() and ggplot(), 
# then we'll wrap our understanding by building off the final layers of the 
# grammar of graphics and then having an assignment for recreating a plot.

# Data and Set-up
# Let's get started:
  
# import ggplot2



# We'll build up an understanding of this piece by piece. But first we'll 
# need data! We'll use some real estate data available in this repo or you 
# can download it here



# You may need to put the entire file path to the downloaded csv file!



# Using ggplot2
# Quick Example with Histograms
# Histograms are a great way of quickly exploring your data! We have a couple of 
# options for quickly producing histograms off the columns of a data frame. 
# We have:
#   - hist()
#   - qplot()
#   - ggplot()

# They differ mainly in one main component, for each of these methods you 
# usually trade-off ease of use for ability to customize.

# Note! In RStudio you'll need to call print(plot_name) to display your plots. 
# Also the plots will look a lot better in RStudio than here in the notes.

# Let's show quick use cases of each:

# Pass a column straight into hist()



# Using qplot
# Notice the auto-adjustment of the color theme and the binwidth.




# Using ggplot, lots of ability to customize, but bit more complicated!



# So what method should we choose? Usually the qplot() function will give us a 
# nice balance between ease of use and ability to customize, let's quickly break
# down the syntax for using qplot().

# qplot
# The qplot() function can be used to create the most common graph types. 
# While it does not expose ggplot's full power, it can create a very wide range 
# of useful plots. The format is:
# qplot(x, y, data=, color=, shape=, size=, alpha=, geom=, method=, 
#       formula=, facets=, xlim=, ylim= xlab=, ylab=, main=, sub=)
# 
# Each of these additional arguments provide methods for customizing your 
# plot further:
# 
# option	  description
# alpha	    Alpha transparency for overlapping elements expressed as a 
#           fraction between 0 (complete transparency) and 1 (complete opacity)
# color,    Associates the levels of variable with symbol color, shape, or size. 
# size,     For line plots, color associates levels of a variable with line color. 
# shape,    For density and box plots, fill associates fill colors with a variable. 
# fill	    Legends are drawn automatically.
# data	    Specifies a data frame
# facets	  Creates a trellis graph by specifying conditioning variables. 
#           Its value is expressed as rowvar ~ colvar. To create trellis 
#           graphs based on a single conditioning variable, use rowvar~. 
#           or .~colvar)
# geom	    Specifies the geometric objects that define the graph type. 
#           The geom option is expressed as a character vector with one or more 
#           entries. geom values include "point", "smooth", "boxplot", 
#           "line", "histogram", "density", "bar", and "jitter".
# main,     Character vectors specifying the title and subtitle
# sub	
# method,   If geom="smooth", a loess fit line and confidence limits are 
# formula   added by default. When the number of observations is greater than 
#           1,000, a more efficient smoothing algorithm is employed. 
#           Methods include "lm" for regression, "gam" for generalized additive
#           models, and "rlm" for robust regression. The formula parameter 
#           gives the form of the fit.	
#           
#           For example, to add simple linear regression lines, you'd specify 
#           geom="smooth", method="lm", formula=y~x. Changing the formula to 
#           y~poly(x,2) would produce a quadratic fit. Note that the formula 
#           uses the letters x and y, not the names of the variables.
# 
#           For method="gam", be sure to load the mgcv package. 
#           For method="rml", load the MASS package.
# x, y     	Specifies the variables placed on the horizontal and vertical axis. 
#           For univariate plots (for example, histograms), omit y
# xlab,     Character vectors specifying horizontal and vertical axis labels
# ylab	
# xlim,     Two-element numeric vectors giving the minimum and maximum values 
# ylim	    for the horizontal and vertical axes, respectively


# Quick Example of Customization
# Let's explore qplot further! In the last example we just passed a single 
# column and qplot automatically knew to do a histogram, from now on we're 
# going to be a little more formal and pass in the entire data source and 
# then specify what columns to grab and how to plot it:
  
# Customize the histogram further





##############################################################################
###  Histograms with ggplot2
# Let's go over how to create histograms with ggplot2. Refer to the video for 
# the full explanation! Also a quick note, we are going to be showing a lot of 
# what ggplot can do, but not what you should do!

# Load Data
# We'll use the movie dataset that comes with ggplot:
  


# Using qplot()
# Basics



# Using ggplot()
# Let's see how we can really expand on this by using ggplot! They syntax 
# starts off with the base plot:

# ggplot(data, aesthetics)


# Add Histogram Geometry



# Adding Color


# Adding Labels


# Change Alpha (Transparency)



# Linetypes
# We have the options: "blank", "solid", "dashed", "dotted", "dotdash", 
# "longdash", and "twodash". You would never really use these with a histogram,
# but just to show your options:



# Advanced Aesthetics
# We can add a aes() argument to the geom_histogram for some more advanced 
# features. We won't go too deep into these, but ggplot gives you the ability 
# to edit color and fill scales.

# Adding Labels



# You can further edit this by adding the scale_fill_gradient() function to 
# your ggplot objects:
  
# Adding Labels



# scale_fill_gradient('Label',low=color1,high=color2)



# scale_fill_gradient('Label',low=color1,high=color2)



# Adding density plot
# You can add a kernel density estimation plot

# Adding Labels






##############################################################################
###  Scatterplots with ggplot2
# Scatter plots allow us to place points that let us see possible correlations
# between two features of a data set. Let's see how we can create them with ggplot!

# We'll use the built-in mtcars dataset:
  

# qplot()


# Adding a 3rd feature
# We can add a third feature by adding a color gradient on each point, or 
# by resizing each point based on their value of this 3rd feature. For example:
  


# Or both


# Show 4 features (this gets messy)



# ggplot()
# Now let's see hwo to get more control by using ggplot():



# Adding 3rd feature


# With Shapes


# Better version
# With Shapes


# Gradient Scales






##############################################################################
# Barplots with ggplot2
# Barplots are a useful way of displaying occurence counts when a histogram 
# isn't quite what you're looking for! In ggplot2, there are two types of bar 
# charts, determined by what is mapped to bar height. By default, geom_bar 
# uses stat="count" which makes the height of the bar proportion to the number 
# of cases in each group (or if the weight aethetic is supplied, the sum of 
# the weights). If you want the heights of the bars to represent values in the
# data, use stat="identity" and map a variable to the y aesthetic.

# There isn't a really simple,nice way to do this with qplot, so we'll skip 
# straigh to using ggplot.

# Let's see how we can create them using the built-in mpg dataset.

# ggplot()


# counts (or sums of weights)


# Number of cars in each class:


# Bar charts are automatically stacked when multiple bars are placed
# at the same location


# You can instead dodge, or fill them








##############################################################################
# Boxplots with ggplot2
# Boxplots are convenient way of graphically depicting groups of numerical 
# data through their quartiles. Box plots may also have lines extending 
# vertically from the boxes (whiskers) indicating variability outside the 
# upper and lower quartiles, hence the terms box-and-whisker plot and 
# box-and-whisker diagram. Outliers may be plotted as individual points.

# Let's see how we can create them with qplot and ggplot!




# qplot


# ggplot







##############################################################################
# 2 Variable Plotting with ggplot2
# In this lecture we will briefly show some examples of how you can compare 
# two variables from a dataset. For these examples, you'll need the full 
# control of ggplot instead of using qplot(), but we will show a quick example 
# of what qplot is capable of. We'll use the built-in ggplot2 movies dataset:
  


# qplot()


# 2d Bin Chart


# Control bin sizes


# 2d Density Plot


# 2d Hex Plot







##############################################################################
# Coordinates and Faceting with ggplot2
# Learning how to deal with coordinates will allow us to size our plots 
# correctly. Faceting will allow us to place several plots next to each other, 
# these plots are usually related by the same dataset.

# Let's build our understanding of these ideas by going through some simple 
# examples:

# Basic Plot and Data


# Setting x and y limits
# You can use + scale_x_continuous and scale_y_continuous with an additional 
# limits=c(low,high) argument to set the scale. A sometimes nicer way to do
# this is by adding + coord_cartesian() with xlim and ylim arguments and pass 
# in numeric vectors. For example:




# Aspect Ratios
# You can use the coord_fixed() method to change the aspect ratio of a plot 
# (default is 1:1). For example:

# aspect ratio, expressed as y / x



# Facets
# The best way to set up a facet grid (multiple plots) is to use facet_grid(), 
# the main part of this function is the use of the facet argument:
#    A formula with the rows (of the tabular display) on the LHS and the 
#    columns (of the tabular display) on the RHS; the dot in the formula is 
#    used to indicate there should be no faceting on this dimension (either 
#    row or column). The formula can also be provided as a string instead of 
#    a classical formula object.

