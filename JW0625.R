# Create a vector from scratch
# alt + - to create <-
y[1] <- 10
y <- NULL
y[1] <- 10
y
y <- c(y,20)
y

# Homwwork solution
findruns <- function(x,k){
  n <- length(x)
  runs <- NULL
  for(i in 1:(n-k+1)){
    if(all(x[i:(i+k-1)]==1)){
      runs <- c(runs,i)
    }
  }
  return(runs)
}

x <- c(0,1,1,0,0,1,1,1,0,1,1,1)
findruns(x,2)
findruns(x,3)


n <- 4
1:(n-1)

# more about paste()
colors <- c("red","yellow","green")
paste(colors,"flowers")
paste(colors,c("bees","dogs"))
paste("Several",colors,"flowers")
paste("Several",colors,"flowers",sep="-")
paste("Several",colors,"flowers",collapse=", ")

suits <- c("club","diamond","heart","spade")
faces <- c("Ace",2:10,"Jack","Queen","King")
deck <- paste(faces,rep(suits,each=13))
deck

# Matrix
# create matrix: matrix(), rbind(), cbind()
mydata <- 1:19
A <- matrix(mydata,4,5)
A
A[,2]
A[1,2]
A[10]
A[20]
A + c(1,2)
A <- matrix(mydata,4,5,byrow=T)
A

r1 <- c("a","b","c")
r2 <- c("aa","bb","cc")
r3 <- c("aaa","bbb","ccc")
B <- rbind(r1,r2,r3)
B
C <- cbind(r1,r2,r3)
C
r4 <- c("x","y")
B <- rbind(r1,r2,r3,r4)
B

# Column names and row names
colnames(B) <- c("1st","2nd","3rd")
B
B["r3","2nd"]
rownames(B) <- NULL
B

# Array display
AA <- array(1:24,c(3,4,2,2))
AA

# Names again
p <- 1:5
p
names(p)
names(p) <- c("a","b","c","d","e")
p
p["c"]
names(p)

# Matrix operation
a <- matrix(1:6,3,2)
a
b <- matrix(2:5,2,2)
b
a+b
a/b
a*b





