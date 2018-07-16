## More Vector functions
## Vector as factor
w <- c("a","a","b","b","c")
wf <- factor(w)
wf[1]
is.character(wf[1])
is.numeric(wf[1])
levels(wf)

as.integer(wf)
wf[1]

v[1] <- 10
v <- c()
v
v <- NULL
v[seq(2,20,2)] <- seq(1,20,2)
v
v[!is.na(v)]


x <- c(31,4,15,92,65)
sort(x)
order(x)
x[order(x)]
rank(x)
x[rank(x)]
which.max(x)
which.min(x)

ind <- match(c(31,4,10),x)
ind
x[ind]

15 %in% x


## Back to Matrix
## Load BasketballData.R
Games
rownames(Games)
colnames(Games)
Games["ChrisBosh","2008"]
Games["ChrisBosh",]
FieldGoals
FieldGoals/Games
round(FieldGoals/Games)
round(FieldGoals/Games,2)
Salary
Salary/Games

## Visualize with matplot()
?matplot()
A <- matrix(1:8,2,4,T)
A
matplot(A)
matplot(t(A))
matplot(t(FieldGoals))
matplot(t(FieldGoals),type="b")
matplot(t(FieldGoals),type="b",pch=15:18,col=c(1:4,6))
legend("bottomleft",inset=0.01,pch=15:18,col=c(1:4,6),legend=Players,horiz=F)
?legend()

## Subsetting
Games[1:3,6:10]
Games[1:3,c(1,10)]
Games[,1]
is.matrix(Games[,1])
is.vector(Games[,1])
Games[,1,drop=F]

matplot(t(FieldGoals[1:3,]/Games[1:3,]),type="b",pch=15:18,col=c(1:4,6))
legend("bottomleft",inset=0.01,pch=15:18,col=c(1:4,6),legend=Players[1:3],horiz=F)

## Simplify the usage of matplot
myplot <- function(){
  data <- FieldGoals[1:3,]/Games[1:3,]
  matplot(t(data),type="b",pch=15:18,col=c(1:4,6))
  legend("bottomleft",inset=0.01,pch=15:18,col=c(1:4,6),
         legend=Players[1:3],horiz=F)
}
myplot()

myplot <- function(rows){
  data <- FieldGoals[rows,]/Games[rows,]
  matplot(t(data),type="b",pch=15:18,col=c(1:4,6))
  legend("bottomleft",inset=0.01,pch=15:18,col=c(1:4,6),
         legend=Players[rows],horiz=F)
}

myplot(c(1,8,10))
myplot(c(1))

myplot <- function(rows){
  data <- FieldGoals[rows,,drop=F]/Games[rows,,drop=F]
  matplot(t(data),type="b",pch=15:18,col=c(1:4,6))
  legend("bottomleft",inset=0.01,pch=15:18,col=c(1:4,6),
         legend=Players[rows],horiz=F)
}
myplot(1)
myplot(10)

myplot <- function(mydata,rows){
  data <- mydata[rows,,drop=F]
  matplot(t(data),type="b",pch=15:18,col=c(1:4,6))
  legend("bottomleft",inset=0.01,pch=15:18,col=c(1:4,6),
         legend=Players[rows],horiz=F)
}

myplot(Games,1:3)
myplot(FieldGoals/Games,1:3)
myplot(Salary)

myplot <- function(mydata,rows=1:5){
  data <- mydata[rows,,drop=F]
  matplot(t(data),type="b",pch=15:18,col=c(1:4,6))
  legend("bottomleft",inset=0.01,pch=15:18,col=c(1:4,6),
         legend=Players[rows],horiz=F)
}
myplot(Salary)
myplot(Salary,6:10)

myplot(FreeThrow,1:10)
myplot(FreeThrow/FreeThrowAttempts,1:10)
myplot((Points-FreeThrow)/FieldGoals,1:10)








