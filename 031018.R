# Basketball HW
FreeThrows <- rbind(KobeBryant_FT,JoeJohnson_FT,LeBronJames_FT,CarmeloAnthony_FT,DwightHoward_FT,ChrisBosh_FT,ChrisPaul_FT,KevinDurant_FT,DerrickRose_FT,DwayneWade_FT)
FreeThrows
rm(KobeBryant_FT,JoeJohnson_FT,LeBronJames_FT,CarmeloAnthony_FT,DwightHoward_FT,ChrisBosh_FT,ChrisPaul_FT,KevinDurant_FT,DerrickRose_FT,DwayneWade_FT)
rownames(FreeThrows) <- Players
colnames(FreeThrows) <- Seasons

FreeThrowsAttemps <- rbind(KobeBryant_FTA,JoeJohnson_FTA,LeBronJames_FTA,CarmeloAnthony_FTA,DwightHoward_FTA,ChrisBosh_FTA,ChrisPaul_FTA,KevinDurant_FTA,DerrickRose_FTA,DwayneWade_FTA)
FreeThrowsAttemps
rownames(FreeThrowsAttemps) <- Players
colnames(FreeThrowsAttemps) <- Seasons

myplot <- function(data,row=1:10){
  Data <- data[row,,drop=FALSE]
  matplot(t(Data),type="b",pch=15:18,col=c(1:4,6))
  legend("bottomleft",inset=0.01,legend=Players[row],pch=15:18,col=c(1:4,6),horiz= F)
}
myplot(FreeThrows)
myplot(FreeThrowsAttemps)
myplot(FreeThrowsAttemps/Games)
myplot(FreeThrows/FreeThrowsAttemps)
myplot(FieldGoals/FieldGoalAttempts)
myplot((Points-FreeThrows)/FieldGoals)


# DataFrame HW
data <- read.csv("DataFrame-HW-Data.csv")
data
head(data)
str(data)
tail(data)
data$Year

temp <- factor(data$Year)
temp
summary(temp)

data1960 <- data[data$Year == 1960,]
data2013 <- data[data$Year == 2013,]
head(data1960)

add1960 <- data.frame(Country=Country_Code,Life.Exp=Life_Expectancy_At_Birth_1960)
add2013 <- data.frame(Country=Country_Code,Life.Exp=Life_Expectancy_At_Birth_2013)

merged1960 <- merge(data1960,add1960,by.x="Country.Code",by.y="Country")
head(add1960)
head(merged1960)
merged2013 <- merge(data2013,add2013,by.x="Country.Code",by.y="Country")
head(merged2013)

merged1960$Year <- NULL
head(merged1960)
merged2013$Year <- NULL

library("ggplot2")
qplot(data=merged1960,x=Fertility.Rate, y=Life.Exp, 
      color=Region,size=I(5),alpha=I(0.5),main="Life Expectancy vs Fertility")
qplot(data=merged2013,x=Fertility.Rate, y=Life.Exp, 
      color=Region,size=I(5),alpha=I(0.5),main="Life Expectancy vs Fertility")



