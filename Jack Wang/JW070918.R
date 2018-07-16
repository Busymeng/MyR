### Data Frame
# Read the dataset
stats <- read.csv(file.choose())
nrow(stats)
ncol(stats)
head(stats)
head(stats,10)
tail(stats)
str(stats)
summary(stats)

## Using $ (Accessor)
stats[3,3]
stats[3,"Birth.rate"]
stats["Angola","Birth.rate"]  ## Won't work
stats[,3]
stats$Birth.rate
stats$Birth.rate[stats$Internet.users<2]
stats$Income.Group
table(stats$Income.Group)

## Basic operations for data frame
stats[1:10]
stats[1:10,]
stats[stats$Country.Name=="China",]
stats[c(1,195),]
stats[1,]
is.data.frame(stats[1,])
is.data.frame(stats[,1:2])

stats[,1,drop=F]
is.data.frame(stats[,1,drop=F])

stats$Birth.rate * stats$Internet.users
stats$Birth.rate + stats$Internet.users
stats$Birth.rate + stats$Income.Group

stats$MyCalc <- stats$Birth.rate * stats$Internet.users
head(stats)
stats$xyz <- 1:5
head(stats)
stats$xyz <- NULL
head(stats)
stats$MyCalc <- NULL

##Filtering data frame
stats$Internet.users<2
filter <- stats$Internet.users<2
stats[filter,]

stats[stats$Internet.users<2,]
stats[stats$Birth.rate>40,]
stats[stats$Birth.rate>40 & stats$Internet.users<2,]
stats[stats$Income.Group=="High income",]
summary(stats[stats$Income.Group=="High income",])

## Using dplyr package
install.packages("dplyr")
library(dplyr)

## Use mutate(), filter(), select(), %>%
stats <- mutate(stats,MyCalc=Birth.rate*Internet.users)
head(stats)

filter(stats,Internet.users<2)

new_stats <- select(stats,Country.Name,Income.Group,MyCalc)
head(new_stats)

new_df <- stats[,c(1,3,6)]
head(new_df)

stats %>% mutate(xyz=1:195) %>% filter(Internet.users<2)
stats %>% filter(Income.Group %in% c("High income","Low income") & Internet.users>30)
stats %>% filter(Income.Group %in% c("High income","Low income") & Internet.users>30) %>%
  filter(Birth.rate>20)


## Introduction to qplot() - Quick Plot
library(ggplot2)
?qplot()

qplot(data=stats,x=Internet.users)
qplot(data=stats,x=Internet.users,y=Birth.rate)
qplot(data=stats,x=Internet.users,y=Birth.rate,size=3)
qplot(data=stats,x=Internet.users,y=Birth.rate,size=10)
qplot(data=stats,x=Internet.users,y=Birth.rate,size=I(10))
qplot(data=stats,x=Internet.users,y=Birth.rate,size=I(5))
qplot(data=stats,x=Internet.users,y=Birth.rate,size=I(5),
      color=Income.Group)
qplot(data=stats,x=Internet.users,y=Birth.rate,geom="boxplot")

## Building data frame with data.frame()
df <- data.frame(Countries_2012_Dataset,Codes_2012_Dataset,Regions_2012_Dataset)
head(df)
colnames(df) <- c("Country","Code","Region")
head(df)
rm(df)
df <- data.frame(Country=Countries_2012_Dataset,Code=Codes_2012_Dataset,
                 Region=Regions_2012_Dataset)
head(df)
head(stats)
stats$MyCalc <- NULL
merged_df <- merge(stats,df,by.x="Country.Code",by.y="Code")
head(merged_df)
merged_df$Country.Code <- NULL
head(merged_df)

qplot(data=merged_df,x=Internet.users,y=Birth.rate,size=I(5),
      color=Region)
qplot(data=merged_df,x=Internet.users,y=Birth.rate,size=I(5),
      shape=I(19),alpha=I(0.5),color=Region,
      main="Birth Rate vs Internet Users")








