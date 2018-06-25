## Homework solution
N <- 10000
count <- 0
for(i in rnorm(N)){
  if(i>-1 & i<1){
    count = count +1
  }
}
count/N

## Vectors
myVector <- c(32,45,78,-10)
v1 <- c(1L,2L,3L)
class(myVector)
class(v1)
is.numeric(v1)
is.integer(myVector)
is.integer(v1)

v2 <- c(1,2,"d")
v2 <- c(v1,myVector)

# seq() to create vector
seq(1,15)
v3 <- seq(1,15)
?seq()
seq()
seq(1.2,12.8,1.3)
seq(1.2,12.8)

# rep() to create vector
rep(2,3)
rep(c(2,1,4),2)
rep(c(2,1,4),c(2,3,4))
rep(c(2,1,4),c(2,3))  # wrong
rep("a",6)
rep(c(1,4),each=3)
rep(seq(2,20,2),rep(2,10))

# Using [] to get the elements
length(v3)
v3[1]
v3[1:6]
v3[c(4,6,12)]
v3[c(4,6,17)]
v4 <- v3[c(4,6,17)]
v3[-1]
v3[-1:-4]


# vector operation
# recycling
m1 <- c(1,2,3,4)
m2 <- c(0,2,4,6)
m1+m2
m1-m2
m1^m2
m1*m2
m3 <- c(1,2)
m1+m3
m3 <- c(1,2,3)
m1+m3
3 %% 2
c(1,1,2,2,3,3,4,4,5,5,6,6) %% 2:3

sum(v3)
sum(v4)
sum(v4,na.rm= TRUE)
mean(v3)
sum(v3)/length(v3)
median(v3)


c(3,4,1+6) == 3
sum(c(3,4,1+6) == 3)

1:3 != 3:1
(1:5)^2 >= 16
(1:5)^2

# Homework solution in vector way
N <- 10000
x <- rnorm(N)
sum(x>-1 & x<1)/N

# paste()
colors <- c("red","yellow","Green")
paste(colors,"flowers")
paste("several",colors, "s", sep=" ")
paste("I like",colors,collapse=", ")

# Generate a deck of cards
suits <- c("club","diamond","heart","spade")
faces <- c("Ace", 2:10, "Jack", "Queen","King")
deck <- paste(faces,rep(suits,each=13),sep="-")

# more useful functions
v3
all(v3>6)
all(v3>0)
any(v3>0)
any(v3>20)
which(v3>6)

0.1+0.2-0.3
(0.1+0.2-0.3)== 0.0

identical(0.1+0.2-0.3,0.0)
?identical()
x1 <- 1:2
x2 <- c(1,2)
identical(x1,x2)

x3 <- c(12,3,7,98,-10)
rank(x3)


# function definition
first1 <- function(x){
  return(which(x==1))
}
y1 <- c(5,2,1,9,1,3,4)
first1(y1)


# function of findruns()
findruns <- function(x,k){
  n <- length(x)
  ##runs <-NULL
  runs <- c()
  for(i in 1:(n-k+1)){
    if(all(x[i:(i+k-1)]==1)){
      #runs <- c(runs,i)
      runs <- c(runs,i)
    }
  }
  return(runs)
}

d <- c(0,1,1,1,0,0,1,1,0,1,1,1,1)
findruns(d,4)
findruns(d,2)

p <- 4
1:p-1
y[1] <- 7
y <- NULL
y[1] <- 7
z <- c(7)
z <- c()
z











