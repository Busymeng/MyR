# Operation
x <- 4
y <- 3
x + y
x / y
x %% y
a <- 2L
b <- 3L
a / b
a %/% b
is.integer(a)
is.integer(x)
greeting <- "Hello"
name <- "John"
message <- paste(greeting,name)
message
1:10
1:10 %% 3


# Logical
4 < 5
10 > 100
# < , >, >=, <=, ==, !=, !, &, |

# while loop
while(3>2){
  print("Hello")
}

count <- 0
while(count < 12){
  print(count)
  count <- count +1
}

# for loop
for(i in 1:5){
  print("R")
}

x <- 1:5
x
x <- c(3,12,3,4,5,6)
x

for(i in x){
  print(i)
}


# If

rnorm(1)
rnorm(10)


# vector
u <- c("ab","abc")
u
is.integer(u)
is.character(u)
v <- c(u,123)
v
x <- c(1,2,3,6,7,9)
r <- x>3
r
x[r]
x[!r]

# seq() / rep()
a <- 1:5
b <- c(1,2,3,4,5)
is.double(a)

seq(1,15)
seq(1,15,2)
rep(2,5)
rep("abc",4)
rep(c(3,4),3,each=2)
x
x[1:3]
x[c(2,4,1)]
x[-1]
x[c(-1,-4)]

# vector recycling
x
a <- c(1,2)
a + x
b <- c(1,2,1,2)
x+b
x-a
a-x

# all()/any()

x <- 1:10
any(x>8)
all(x>8)

# define function

fun1 <- function(x){
  return(all(x>8))
}

x
fun1(x)



















