# Matrix
y <- matrix(1:6,3,2)
y
y <- matrix(data=1:6, nrow=2)
y
y <- matrix(data=1:6, nrow=2, byrow=T)
y
z <- matrix(2,2)
z
z <- matrix(1:6,5,3)
z
z <- matrix(nrow=2,ncol=2)
z
y
y[1,2]
y[1,]
y[,1]
y[-2,]
y
y[c(1,3),]
y[-2]
dim(y)
dim(y[-2])
a <-1:20
dim(a) <- c(4,5)
a

r1 <- c("I","am","Happy")
r2 <- c("good","abc","book")
r3 <- c(5,10,9)
c <- rbind(r1,r2,r3)
c
c1 <- 1:5
c2 <- -1:-5
d <- cbind(c1,c2)
d
d*d
d%*%d
d%*%t(d)
3 + d
3-d

# Naming dimension
rnames <- c("R1","R2","R3")
cnames <- c("C1","C2")
yy <- matrix(data=1:6,nrow=3,ncol=2,dimnames=list(rnames,cnames))
yy
yy["R1","C2"]
yy["R1",]
yy[,"C2"]
rownames(yy)
colnames(yy)
rownames(yy) <- c("Jan","Feb","March")
yy
Salary
View(Salary)
colnames(yy) <- NULL
yy
yy[1,]
yy[1,,drop=FALSE]
yy[1:2,]

# matplot
?matplot
matplot(FieldGoals)
FieldGoals
t(FieldGoals)
matplot(t(FieldGoals/Games),type="b",pch=15:18,col=c(1:4,6))
legend("bottomleft",inset=0.01,legend=Players,pch=15:18,col=c(1:4,6),horiz= F)
