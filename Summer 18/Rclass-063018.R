## Basketball homework solution

myplot <- function(mydata,rows=1:5){
  data <- mydata[rows,,drop=F]
  matplot(t(data),type="b",pch=15:18,col=c(1:4,6))
  legend("bottomleft",inset=0.01,pch=15:18,col=c(1:4,6),legend=Players[rows],horiz=F)
}


#myplot(FreeThrowAttempts/Games)
#myplot(FreeThrows/FreeThrowsAttemps)
#myplot(FieldGoals/FieldGoalsAttemps)
#mplot((Points-FreeThrows)/FieldGoals)


### Data Frame
install.packages("dslabs")
library(dslabs)
data(admissions)
admissions
str(admissions)
data(murders)
murders

# Read the dataset

stats <- read.csv(file.choose())
View(stats)
ncol(stats)
nrow(stats)
head(stats)
head(stats,10)
tail(stats)
str(stats)
summary(stats)

# Using $ (accessor) symbol
stats[3,3]
stats["Algeria",4] ## No row name
stats[3,"Internet.users"]
stats$Internet.users
stats$Internet.users[3]
stats[,"Internet.users"]
stats$Income.Group
table(stats$Income.Group)

## Basic operations for data frame
stats[1:10]
stats[1:10,]
stats[c(1,195),]
is.data.frame(stats[c(1,195),])
is.data.frame(stats[,3])
is.data.frame(stats[,3,drop=F])
stats[,3,drop=F]

stats$Birth.rate * stats$Internet.users
stats$Birth.rate + stats$Internet.users
stats$MyCalc <- stats$Birth.rate * stats$Internet.users
head(stats)
stats$xyz <- 1:5
head(stats)
stats$xyz <- NULL
head(stats)
stats$MyCalc <- NULL
head(stats)

## Filtering data frame
stats$Internet.users<2
filter <- stats$Internet.users<2
stats[filter,]
stats[stats$Internet.users<2,]
stats[stats$Birth.rate>40,]
stats[stats$Birth.rate>40 & stats$Internet.users<2,]
stats[stats$Income.Group == "High income",]
summary(stats[stats$Income.Group == "High income",])
stats[stats$Country.Name == "Aruba",]

## Use dplyr package
install.packages("dplyr")
library(dplyr)

# Use mutate(), filter(), select(), %>%
stats <- mutate(stats,xyz=1:195)
head(stats)
stats <- mutate(stats,MyCalc=Birth.rate*Internet.users)
head(stats)

filter(stats,Internet.users<2)

new_stats <- select(stats,Country.Name,MyCalc,xyz)
head(new_stats)

stats$xyz <- NULL
head(stats)
stats %>% mutate(xyz=1:195) %>% filter(Internet.users<2)
stats %>% filter(Income.Group %in% c("Low income","High income") & Internet.users >30)

## Introduction to qplot()
library(ggplot2)
?qplot()
qplot(data=stats,x=Internet.users)
qplot(data=stats,x=Internet.users,y=Birth.rate)
qplot(data=stats,x=Internet.users,y=Birth.rate,size=3)
qplot(data=stats,x=Internet.users,y=Birth.rate,size=10)
qplot(data=stats,x=Internet.users,y=Birth.rate,size=I(10))
qplot(data=stats,x=Internet.users,y=Birth.rate,size=I(2),color=I("blue"))
qplot(data=stats,x=Internet.users,y=Birth.rate,geom="boxplot")

qplot(data=stats,x=Internet.users,y=Birth.rate,size=I(5),color=Income.Group)

stats %>% filter(Income.Group =="High income") %>%
          filter(Internet.users<25 & Birth.rate>30)

## Building data frame with data.frame()
df <- data.frame(Countries_2012_Dataset,Codes_2012_Dataset,Regions_2012_Dataset)
head(df)
colnames(df) <- c("Country","Code","Region")
head(df)
rm(df)
df <- data.frame(Country=Countries_2012_Dataset,Code=Codes_2012_Dataset,Region=Regions_2012_Dataset)
head(df)
head(stats)
stats$MyCalc <- NULL
head(stats)
meregd <- merge(stats,df,by.x = "Country.Code",by.y="Code")
head(meregd)
meregd$Country.Code <- NULL
head(meregd)

qplot(data=meregd,x=Internet.users,y=Birth.rate)
qplot(data=meregd,x=Internet.users,y=Birth.rate,color=Region)
qplot(data=meregd,x=Internet.users,y=Birth.rate,color=Region,
      size=I(5),shape=I(19),alpha=I(0.6),
      main="Birth Rates vs. Internet Users")










