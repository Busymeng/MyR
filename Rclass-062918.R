## More functions for vectors

g <- c("AA","BB","AA","CC","BB")
gf <- factor(g)
gf
levels(gf)
as.integer(gf)
levels(gf)[as.integer(gf)]

some.evens <- NULL
some.evens[seq(2,20,2)] <- seq(2,20,2)
some.evens
is.na(some.evens)
!is.na(some.evens)
some.evens[!is.na(some.evens)]


x <- c(31,4,15,92,65)
sort(x)
order(x)
x[order(x)]
rank(x)
x[rank(x)]
which.max(x)
which.min(x)

index <- match(c(4,65,10),x)
x[index]

15 %in% x

##################################
## Matrix : matrix(), rbind(), cbind()

data <- 1:20
A <- matrix(data,4,5)
A
?matrix()
B <- matrix(data,4,5,T)
B
C <- matrix(data,4,byrow=T,ncol=5)
C
A[,1]
A[1,]
A[2,3]
A
A+B
A+B-1
A+c(1,2)

r1 <- c("I","am","happy")
r2 <- c("waht","a","day")
r3 <- c(1,2,3)
D <- rbind(r1,r2,r3)
D
E <- cbind(r1,r2,r3)
E

# Name for vector and matrix
p <- 1:5
p
names(p)
names(p) <- c("a","b","c","d","e")
p
names(p)
p["c"]
# clear name
names(p) <- NULL
p
AA <- matrix(1:9,3,3)
AA
colnames(AA) <- r1
AA
rownames(AA) <- r2
AA
AA["day","I"]
AA["day","I"] <- 1000
AA
rownames(AA) <- NULL
AA

## load the BasketballData.R
Games
rownames(Games)
colnames(Games)
Games["KobeBryant","2012"]
FieldGoals
FieldGoals/Games
round(FieldGoals/Games)
round(FieldGoals/Games,1)
round(MinutesPlayed/Games,1)
Games
Salary

## Visualizing with matplot()
?matplot()
A <- matrix(1:8,2,4,T)
A
matplot(A)
matplot(t(A))
matplot(FieldGoals)
matplot(t(FieldGoals))
matplot(t(FieldGoals),type="b")
matplot(t(FieldGoals),type="b",pch=15:18,col=c(1:4,6))
legend("bottomleft",inset=0.01,pch=15:18,col=c(1:4,6),legend=Players,horiz=F)
Players

matplot(t(FieldGoals/Games),type="b",pch=15:18,col=c(1:4,6))
matplot(t(FieldGoals/FieldGoalAttempts),type="b",pch=15:18,col=c(1:4,6))
?matplot()

## Subsetting
Games[1:3,6:10]
Games[1:3,c(1,4:6,10)]
Games[,c("2008","2010")]
Games[1,]
is.matrix(Games[1,])
is.vector(Games[1,])
is.matrix(Games[,c("2008","2010")])
Games[,2,drop=F]
is.matrix(Games[,2,drop=F])

matplot(t(FieldGoals[1:3,]/Games[1:3,]),type="b",pch=15:18,col=c(1:4,6))
legend("bottomleft",inset=0.01,pch=15:18,col=c(1:4,6),legend=Players[1:3],horiz=F)


## Create my own plot function

myplot <- function(){
  data <- FieldGoals/Games
  matplot(t(data),type="b",pch=15:18,col=c(1:4,6))
  legend("bottomleft",inset=0.01,pch=15:18,col=c(1:4,6),legend=Players,horiz=F)
}

myplot()

myplot <- function(rows){
  data <- FieldGoals[rows,,drop=F]/Games[rows,,drop=F]
  matplot(t(data),type="b",pch=15:18,col=c(1:4,6))
  legend("bottomleft",inset=0.01,pch=15:18,col=c(1:4,6),legend=Players[rows],horiz=F)
}
myplot(c(1,8,10))
myplot(c(1))

myplot <- function(mydata,rows){
  data <- mydata[rows,,drop=F]
  matplot(t(data),type="b",pch=15:18,col=c(1:4,6))
  legend("bottomleft",inset=0.01,pch=15:18,col=c(1:4,6),legend=Players[rows],horiz=F)
}

myplot(Salary,c(1,5,10))
myplot(Salary,1:10)
myplot(FieldGoals/Games,c(8,1))
myplot(FieldGoals/Games)
myplot(Salary)

myplot <- function(mydata,rows=1:5){
  data <- mydata[rows,,drop=F]
  matplot(t(data),type="b",pch=15:18,col=c(1:4,6))
  legend("bottomleft",inset=0.01,pch=15:18,col=c(1:4,6),legend=Players[rows],horiz=F)
}

myplot(Salary)
myplot(Salary,1:9)






















