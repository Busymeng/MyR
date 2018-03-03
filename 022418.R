?matplot()
FieldGoals
matplot(FieldGoals)
matplot(t(FieldGoals))
Games[1:3,6:10]        
Games[c(1,5,10),]
Games[,c("2008","2010")]
Games[,1]
Games[,1,drop=FALSE]
matplot(t(FieldGoals[1,,drop=FALSE]),type="b",pch=15:18,col=c(1:4,6))
legend("bottomleft",inset=0.01,legend=Players[1],pch=15:18,col=c(1:4,6),horiz= F)
myplot <- function(data,row){
  Data <- data[row,,drop=FALSE]
  matplot(t(Data),type="b",pch=15:18,col=c(1:4,6))
  legend("bottomleft",inset=0.01,legend=Players[row],pch=15:18,col=c(1:4,6),horiz= F)
}
myplot(FieldGoals,1:3)
myplot(Games,1:6)




myplot <- function(data,row=1:10){
  Data <- data[row,,drop=FALSE]
  matplot(t(Data),type="b",pch=15:18,col=c(1:4,6))
  legend("bottomleft",inset=0.01,legend=Players[row],pch=15:18,col=c(1:4,6),horiz= F)
}
myplot(Games)

#--------------------------------------
z <- matrix(1:9,nrow=3)
z
row(z)
col(z)
row(z) == col(z)
ifelse(3>2,"OK","NO")
y<- ifelse(row(z) == col(z),1,0.2)
y

makecov <- function(x,n){
  m <- matrix(nrow=n,ncol=n)
  m<- ifelse(row(m) == col(m),1,x)
  return(m)
}

makecov(0.5,4)

#------------------------------------

install.packages("pixmap")
library("pixmap")
mtrush1 <- read.pnm("mtrush1.pgm")
plot(mtrush1)
mtrush1@grey[1,1]

locator()

mtrush2 <-mtrush1
mtrush2@grey[85:165,133:181] <- 1
plot(mtrush2)





