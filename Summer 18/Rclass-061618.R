2
1:10
x <- 1:10
sqrt(x)
y <- 2.5
5 /2
# Integer division
5 %/% 2  
# Remainder operator
5 %% 2   
# complex number
3 + 2i
# Character 
a <- "date"
a
y <- 2
# Logic data
z <- TRUE
z1 <- T
# variable
q1 <- "Hello"
q2 <- "World"
message <- paste(q2,q1)
message
# create vector
q2 <- c("World","home")

# Logicals result / comparison
4 >5
4 < 5
4 == 5
r1 <- 6>7
r2 <- !r1
r1 & r2
r1 | r2
4 <= 5
4 >= 5
4 != 5

# make decision -- if statement
x <- 10
if(x>2){
  answer <- "x is greater than 2"
}
x <- -1
y <- 9
if(x>2 & y>9){
  if(x>2){
    if(x>2){
      answer <- "x is greater than 2"
    }else{
      answer <- "x is less than 2"
    }
  }else{
    answer <- "x is less than 2"
  }
}else{
  if(x>2){
    answer <- "x is greater than 2"
  }else{
    answer <- "x is less than 2"
  }
}

# while/for loop
x <- 5
while(x>2){
  print("x is larger than 2")
  x <- x-1
}

for(i in 1:5){
  print("hello")
}
sum <- 0
for(i in 3:78){
  sum <- sum+i
}

sum

sum(3:78)

# Normal distribution random number
rnorm(1)
rnorm(10)















