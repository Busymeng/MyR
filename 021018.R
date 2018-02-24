findruns <- function(x,k){
  n <- length(x)
  runs <- NULL
  for(i in 1:n-k+1){
    if(all(x[i:(i+k-1)]== 1)){
      runs <- c(runs,i)
    }
  }
  return(runs)
}

x <- c(0,1,0,1,1,1,0,0,1,1)
findruns(x,2)

# Null && NA
x <- NULL
x
length(x)

x <- NA
x

x <- c(88, NA, 12, 168,13)
x
mean(x)
mean(x,na.rm=T)

x[2] <- NULL
x
x
mean(x)
x
x[0.4]

z <- NULL
for(i in 1:10) if(i %% 2 == 0)  z<- c(z,i)
z <- NA
z

# Plotting functions

x <- c(12,15,13,20,14,16,10,10,8,15)
hist(x)
x <- seq(1,10)
y <- x^2 - 10*x
plot(x,y,type="b")

curve(expr= sin, from=0, to=6*pi)
curve(cos(x),0,6*pi)
curve(x^2-10*x,-2,10)
curve(1/cos(x),0.01,2.5)

# Practice
#Data
revenue <- c(14574.49, 7606.46, 8611.41, 9175.41, 8058.65, 8105.44, 11496.28, 9766.09, 10305.32, 14379.96, 10713.97, 15433.50)
expenses <- c(12051.82, 5695.07, 12319.20, 12089.72, 8658.57, 840.20, 3285.73, 5821.12, 6976.93, 16618.61, 10054.37, 3803.96)

#Solution

profit <- revenue - expenses
view(profit)
View(profit)
tax <- profit * 0.3
tax
profit.after.tax <- profit - tax
profit.margin <- round(profit.after.tax/revenue,2)
profit.margin
mean.pat <- mean(profit.after.tax)
goodmonths <- profit.after.tax > mean.pat
goodmonths
bad.months <- !goodmonths
bad.months
best.month <- max(profit.after.tax) == profit.after.tax
best.month
worst.month <- min(profit.after.tax) == profit.after.tax
worst.month
