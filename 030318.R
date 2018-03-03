# Data Frame
# Load the data from file
stats <- read.csv(file.choose())

#Another way to load file
getwd()
setwd("C:\\Users")
getwd()
rm(stats)
stats <- read.csv("DemographicData.csv")
str(stats)
View(stats)
nrow(stats)
ncol(stats)
head(stats)
stats
tail(stats)
head(stats,n=10)
summary(stats)
?summary

#Using $ sign
stats[3,3]
stats[3,"Birth.rate"]
stats["Angola",3]
stats$Country.Name
stats$Internet.users[2]
stats[,"Internet.users"]
stats[c(4,100),]
stats[1,]
is.data.frame(stats[1,])
is.data.frame(stats[,1])
stats[,1,drop=FALSE]
is.data.frame(stats[,1,drop=FALSE])

#Operation
stats$Birth.rate + stats$Internet.users
stats$Birth.rate * stats$Internet.users
stats$MyCalc <- stats$Birth.rate * stats$Internet.users
stats$xyz <- 1:5
stats$xyz <- NULL


# Filtering the data Frame
stats$Internet.users <2
filter <- stats$Internet.users <2
stats[filter,]
stats[stats$Internet.users>40,]
stats$MyCalc <- NULL
stats[stats$Internet.users>40 & stats$Internet.users <2,]
stats[stats$Internet.users>40 | stats$Internet.users <2,]
stats[stats$Income.Group == "High income",]


# Using qplot()
?qplot()
qplot(data=stats,x=Internet.users)
qplot(data=stats,x=Income.Group, y=Birth.rate)
qplot(data=stats,x=Income.Group, y=Birth.rate,size=10)
qplot(data=stats,x=Income.Group, y=Birth.rate,size=I(3))
qplot(data=stats,x=Income.Group, y=Birth.rate,size=I(3),color=I("blue"))
qplot(data=stats,x=Income.Group, y=Birth.rate,geom="boxplot")
qplot(data=stats,x=Internet.users, y=Birth.rate)
qplot(data=stats,x=Internet.users, y=Birth.rate,size=I(5),color=Income.Group)

# Build the data frame
mydf <- data.frame(Countries_2012_Dataset,Codes_2012_Dataset,Regions_2012_Dataset)
head(mydf)
colnames(mydf) <- c("Country","Code","Region")
rm(mydf)
mydf <- data.frame(Country=Countries_2012_Dataset,Code=Codes_2012_Dataset,Region=Regions_2012_Dataset)

# Merger data frame
merged <- merge(stats, mydf,by.x="Country.Code",by.y="Code")
head(merged)
merged$Country <- NULL
