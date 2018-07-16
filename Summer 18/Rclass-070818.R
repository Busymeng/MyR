load("BasketballDataPlot.RData") 
myplot(FreeThrows)
myplot(FreeThrowsAttempts/Games,1:10)
myplot(FreeThrows/FreeThrowsAttempts,1:10)
myplot(FieldGoals/FieldGoalAttempts,1:10)
myplot((Points-FreeThrows)/FieldGoals,1:10)


## Data Frame
install.packages("dslabs")
library(dslabs)
data(admissions)
admissions
data(murders)
View(murders)

## Read the data frame
stats <- read.csv(file.choose())
View(stats)
ncol(stats)
nrow(stats)
head(stats)
head(stats,10)
tail(stats)
str(stats)
summary(stats)

## Using $ (Accessor)
stats[1,]
stats[1,4]
stats["Angola",4]
stats[3,"Birth.rate"]
stats$Birth.rate
stats[,3]
stats$Income.Group
x <- table(stats$Income.Group)

## Basic operation
stats[1:10]   ## It won't work
stats[1:10,]
stats[c(1,195),]
is.data.frame(stats[c(1,195),])
is.data.frame(stats[c(1),])
is.data.frame(stats[,1])
is.data.frame(stats[,1:2])
stats[,1,drop=F]
is.data.frame(stats[,1,drop=F])

stats$Birth.rate * stats$Internet.users
stats$Birth.rate * stats$Income.Group  # Can not work with factor
stats$Birth.rate + stats$Internet.users
stats$MyCalc <- stats$Birth.rate * stats$Internet.users
stats$xyz <- 1:5
head(stats,15)
stats$xyz <- NULL
head(stats)
stats$MyCalc <- NULL
head(stats)

## Filtering data frame
stats$Internet.users < 2
filter <- stats$Internet.users < 2
stats[filter,]
stats[stats$Internet.users < 2,]
stats[stats$Birth.rate>40,]
stats[stats$Birth.rate>40 & stats$Internet.users <2,]
stats[stats$Income.Group == "High income",]
summary(stats[stats$Income.Group == "High income",])

## Use dplyr package to manipulate data
install.packages("dplyr")
library(dplyr)

## Use mutate(), filter(), %>%
stats <- mutate(stats,xyz=1:195)
stats <- mutate(stats,MyCalc=Birth.rate*Internet.users)

filter(stats,Internet.users <2)
stats$xyz <- NULL
head(stats)

stats %>% mutate(xyz=1:195) %>% filter(Internet.users<2)

new_stats <- select(stats,Country.Code,MyCalc,Birth.rate)
head(new_stats)
 
stats %>% filter(Income.Group %in% c("Low income","High income") & Internet.users >30)

## Introduction to qplot()
install.packages("ggplot2")
library(ggplot2)
?qplot()
qplot(data=stats,x=Internet.users)
qplot(data=stats,x=Internet.users,y=Birth.rate)
qplot(data=stats,x=Internet.users,y=Birth.rate,size=3)
qplot(data=stats,x=Internet.users,y=Birth.rate,size=10)
qplot(data=stats,x=Internet.users,y=Birth.rate,size=I(10))
qplot(data=stats,x=Internet.users,y=Birth.rate,size=I(4),
      color=Income.Group)

stats %>% filter(Income.Group == "High income") %>%
  filter(Internet.users<25 & Birth.rate>30)

qplot(data=stats,x=Internet.users,y=Birth.rate,geom = "boxplot")

## Build data frame with data.frame()
## Run CountryRegionVectors.R

df <- data.frame(Codes_2012_Dataset,Countries_2012_Dataset,Regions_2012_Dataset)
head(df)
colnames(df) <- c("Codes","Countries","Regions")
head(df)
rm(df)
df <- data.frame(Code=Codes_2012_Dataset,Country=Countries_2012_Dataset,Region=Regions_2012_Dataset)
head(df)

stats$MyCalc <- NULL

merged_df <- merge(stats,df,by.x="Country.Code",by.y="Code")
head(merged_df)
merged_df$Country.Name <- NULL
head(merged_df)

qplot(data=merged_df,x=Birth.rate,y=Internet.users)
qplot(data=merged_df,x=Birth.rate,y=Internet.users,color=Region)
qplot(data=merged_df,x=Birth.rate,y=Internet.users,color=Region,
      size=I(5),shape=I(19),alpha=I(0.6),
      main="Birth Rate vs. Internet Users")













