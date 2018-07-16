#################################
## World Trends practice

## Open the "DataFrame-HW-Vector.R"
?source()
source("DataFrame-HW-Vector.R")

## Read the "DataFrame-HW-Data.csv" file
data <- read.csv("DataFrame-HW-Data.csv")
head(data)
tail(data)

## Insight about the factor
data$Year
temp <- factor(data$Year)
temp

## Filter data frame
data1960 <- data[data$Year==1960,]
data2013 <- data[data$Year==2013,]

## Creat the data frame contain Life Expectancy
life1960 <- data.frame(Code=Country_Code,Life_Exp=Life_Expectancy_At_Birth_1960)
life2013 <- data.frame(Code=Country_Code,Life_Exp=Life_Expectancy_At_Birth_2013)

## Merge the data frames
merge1960 <- merge(data1960,life1960,by.x="Country.Code",by.y="Code")
head(merge1960)
merge2013 <- merge(data2013,life2013,by.x="Country.Code",by.y="Code")
head(merge2013)

merge1960$Year <- NULL
head(merge1960)
merge2013$Year <- NULL

## Visualize the data
library(ggplot2)

qplot(data=merge1960,x=Fertility.Rate,y=Life_Exp,color=Region,size=I(5),
      alpha=I(0.5),main="Life Expectancy vs. Fertility (Year 1960)")

qplot(data=merge2013,x=Fertility.Rate,y=Life_Exp,color=Region,size=I(5),
      alpha=I(0.5),main="Life Expectancy vs. Fertility (Year 2013)")


###############################################################
## Basic plots: Scatter plot, Histogram, Boxplot, Curve plot

library(dslabs)
data(murders)
murders
population_in_millions <- murders$population/10^6
population_in_millions
total_murders <- murders$total
plot(population_in_millions,total_murders)

## Histogram
library(dplyr)
murder_rate <- murders$total/murders$population*10^5
hist(murder_rate)
murder_rate
murders <- mutate(murders,rate=murder_rate)
head(murders)
murders[murders$rate>16,]
murders[murders$total>1000,]
murders[murders$rate>6,]

## Boxplot
boxplot(rate~region,data=murders)
boxplot(population~region,data=murders)
boxplot(population_in_millions~region,data=murders)

## Curve plot
x <- seq(1,10,0.01)
y <- x^2-10*x+4
plot(x,y,type="l")

curve(expr=x^2-10*x+4,from=1,to=10)
curve(3*x^4-2*x^2+7*x+2,-2.5,2.5)
curve(sin(x),-3.14,3.14)

## Use matplot() to plot multiple curves
t <- seq(0,2*pi,0.01)
sint <- sin(t)
sin2t <- sin(2*t)
sin3t <- sin(3*t)
all <- rbind(sint,sin2t,sin3t)
matplot(t(all),type="l")
tot <- sint+sin2t+sin3t
all <- rbind(sint,sin2t,sin3t,tot)
matplot(t(all),type="l")


# Visualize data through distribution function
data(heights)
heights
x <- heights$height
hist(x)
avg <- sum(x)/length(x)
avg
sd <- sqrt(sum((x-avg)^2)/length(x))
sd

mean(x)
sd(x)

# Standard unit (z) - how many standard deviation away from the mean
z <- (x-avg)/sd
mean(abs(z)<1)
mean(abs(z)<2)
mean(abs(z)<3)

z1 <- scale(x)
mean(abs(z1)<1)
mean(abs(z1)<2)
mean(abs(z1)<3)

mean(x>63.25 & x<72.39)
exact <- mean(x>69 & x<=72)
exact

## pnorm() to give the distribution function
?pnorm()
pnorm(72,avg,sd)
pnorm(69,avg,sd)
approx <- pnorm(72,avg,sd)-pnorm(69,avg,sd)
approx

summary(x)

## Estimate how many of 1 billion men are at least
## seven feet tall? (mean=69,sd=3)
pnorm(84,69,3)
p <- 1-pnorm(84,69,3)
p
p*10^9
round(p*10^9)

## Plot normal distribution
x <- seq(-3,3,0.05)
y <- dnorm(x,mean=0,sd=1)
plot(x,y,type="l")

dnorm(0,0,1)
pnorm(0,0,1)

qnorm(0.95,mean=0,sd=1)
qnorm(0.5,mean=0,sd=1)

qnorm(0.98,mean=69,sd=3)






