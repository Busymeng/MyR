a <- 10
rm(a)
b <- 10L
10 / 3
10 %/% 3
10 %% 3
b <- 'dfe'
c <- "g"
h <- TRUE
g <-  2+3i
0.1+0.2-0.3
(0.1+0.2-0.3) == 0.0
2.20-2.00
a <- 2.20
a-2.0

sqrt(2)^2 == 2
all.equal(sqrt(2)^2,2)
all.equal((1.0+2.0-3.0),0.0)

q1 <- 4>5
q2 <- 4<5
q1 & q2
q1 | q2
!q1
if(q1){
  print("4 is less than 5")
}else{
  print("4 is larger than 5")
}

rnorm(10)

sum <- 0
x <- c(1,3,5,7,9)
for(i in x){
  sum <- sum+i
  print(sum)
}

N <- 10000
count <- 0
for(i in rnorm(N)){
  if(i>=-1 & i<=1){
    count <- count+1
  }
}
count/N


# vector in R
d <- c(1,2,3,9,23)
e <- c(1:9,d,c(d,d))
e
f <- c('a','c',"dd", 1,2)
f1 <- 1.1:10.1
f2 <- seq(1,15,2)
f3 <- rep(f2,4)
f4 <- rep(c(3,8),c(2,3))

f1[1]
f1
f3
f3[-1]
f3[-3]
f3[1:6]
f3[c(13,6,9)]
f3[c(-2,-4)]

x <- c(0,3,5)
x*3
y <- x-1
y
x^3
y^x
x >2

sum(x)
mean(x)
sd(x)
median(x)


N <- 100
p <- rnorm(N)
p>-1 & p<1
sum(p>-1 & p<1)/N

zz <- c(5,2,-3,8)
which(zz>1)
all(zz>1)
any(zz>1)

t1 <- c("Hello","hi")
t2 <- c("John","Jack")
paste(t2,t1,collapse=NULL)


x+zz
xx <- c(2,9)
xx+zz

first1a <- function(x){
  return(which(x==1))
}
first1a(y)
first1a(c(3,7,9,1,9,1,2))
first1a(2)

length(f3)

# findruns(x,k)





