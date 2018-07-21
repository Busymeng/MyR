##########################################################
## GGPLOT2
##
## Read "Movie-Ratings.csv"
##

getwd()
setwd("C:/Users/Michael Meng/Documents/MyRfile/Datasets")
getwd()

## Make sure the file is in the current working directory
movies <- read.csv("Movie-Ratings.csv")
## another way to read the file
movies <- read.csv("C:/Users/Michael Meng/Documents/MyRfile/Datasets/Movie-Ratings.csv")
head(movies)
str(movies)
summary(movies)

## Rename the columns
colnames(movies) <- c("Film","Genre","CriticRating","AudienceRating","BudgetMillions","Year")
head(movies)

## Make Year as factor
movies$Year <- factor(movies$Year)
summary(movies)

## More about factor - save the memory
gender_char <- sample(c("female","male"),1000,replace=TRUE)
gender_fac <- as.factor(gender_char)
object.size(gender_char)
object.size(gender_fac)

## Work with ggplot2
library(ggplot2)

## Aesthetic
ggplot(data=movies,aes(x=CriticRating,y=AudienceRating))

## Add geometry
ggplot(data=movies,aes(x=CriticRating,y=AudienceRating)) + geom_point()
ggplot(data=movies,aes(x=CriticRating,y=AudienceRating)) + geom_line()
ggplot(data=movies,aes(x=CriticRating,y=AudienceRating)) + geom_line() +geom_point()

## Add color
ggplot(data=movies,aes(x=CriticRating,y=AudienceRating,
                       color=Genre)) + geom_point()


## Add size
ggplot(data=movies,aes(x=CriticRating,y=AudienceRating,
                       color=Genre,size=BudgetMillions)) + geom_point()

## Plot using layer concept
p <- ggplot(data=movies,aes(x=CriticRating,y=AudienceRating,
                            color=Genre,size=BudgetMillions))

str(p)
p + geom_point()
p + geom_line()
p + geom_line() + geom_point()
p  + geom_point() + geom_line()

## Override Aesthetic
q <- ggplot(data=movies,aes(x=CriticRating,y=AudienceRating,
                            color=Genre,size=BudgetMillions))
q + geom_point(aes(size=CriticRating))
q + geom_point(aes(color=BudgetMillions))
q + geom_point(aes(x=BudgetMillions))
q + geom_point(aes(x=BudgetMillions)) + xlab("BudgetMillions$$$")
q + geom_line()
q + geom_line(size=1)
q + geom_line(size=1) +geom_point()

## Mapping vs Setting
r <- ggplot(data=movies,aes(x=CriticRating,y=AudienceRating))
r + geom_point()

## Add color
## 1. Mapping
r + geom_point(aes(color=Genre))

## 2. Setting
r + geom_point(color="DarkGreen")

## Error
r + geom_point(aes(color="DarkGreen"))


## Histogram and Density plot
s <- ggplot(data=movies,aes(x=BudgetMillions))
s + geom_histogram()
s + geom_histogram(binwidth=10)
s + geom_histogram(binwidth=10,fill="Green")
s + geom_histogram(binwidth=10,aes(fill=Genre))
s + geom_histogram(binwidth=10,aes(fill=Genre),color="black")

## Density plot
s + geom_density()
s + geom_density(aes(fill=Genre))
s + geom_density(aes(fill=Genre),position="stack")

## Some layer tips
t <- ggplot(data=movies,aes(x=AudienceRating))
t + geom_histogram(binwidth=10,fill="white",color="blue")

## use  layer concept
t <- ggplot(data=movies)
t + geom_histogram(binwidth = 10,   ,
                   fill="white",color="blue")
t + geom_histogram(binwidth = 10, aes(x=AudienceRating),
                   fill="white",color="blue")
t + geom_histogram(binwidth = 10, aes(x=BudgetMillions),
                   fill="white",color="blue")

## Statistics
?geom_smooth

u <- ggplot(data=movies,aes(x=CriticRating,y=AudienceRating,
                            color=Genre))
u + geom_point() + geom_smooth()
u + geom_point() + geom_smooth(fill=NA)

## Boxplot
u <- ggplot(data=movies,aes(x=Genre,y=AudienceRating,
                            color=Genre))
u + geom_boxplot()
u + geom_boxplot(size=1.2)
u + geom_boxplot() + geom_point()

u + geom_boxplot() + geom_jitter()
u  + geom_jitter()+ geom_boxplot()
u  + geom_jitter()+ geom_boxplot(alpha=0.5)

## Facet
v <- ggplot(data=movies,aes(x=BudgetMillions))
v + geom_histogram(binwidth = 10,aes(fill=Genre),color="black")

v + geom_histogram(binwidth = 10,aes(fill=Genre),color="black") +
  facet_grid(Genre~.)
v + geom_histogram(binwidth = 10,aes(fill=Genre),color="black") +
  facet_grid(Genre~.,scale="free")

## Facet with scatter plot
w <- ggplot(data=movies,aes(x=CriticRating,y=AudienceRating,
                            color=Genre))
w + geom_point()
w + geom_point() + facet_grid(Genre~.)
w + geom_point() + facet_grid(.~Year)
w + geom_point() + facet_grid(Genre~Year)
w + geom_point() + geom_smooth() + facet_grid(Genre~Year)  
w + geom_point(aes(size=BudgetMillions)) + geom_smooth() + facet_grid(Genre~Year)   
  
  
  
  
  
  




