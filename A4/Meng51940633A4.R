#Question 1
library(DAAG)
#a. 
par(mar = c(5, 5, 4, 2) + 0.1)
plot(Manitoba.lakes, xlim= c(160,260),cex=0.7)
#b. 
text(Manitoba.lakes, labels=rownames(Manitoba.lakes), cex=0.7, pos= 2)
#c.
myPlot = lm(area ~ elevation, data=Manitoba.lakes)
abline(myPlot, col="blue")
#d.
elevationdivided1000 = Manitoba.lakes$elevation/1000
areadivided100 = Manitoba.lakes$area/100
ML.df = data.frame(elevationdivided1000,areadivided100)
plot(ML.df)
# redo for areadivided1000 and elevationdivided100 
elevationdivided100 = Manitoba.lakes$elevation/100
areadivided1000 = Manitoba.lakes$area/1000
ML.df = data.frame(elevationdivided100,areadivided1000)
plot(ML.df)

#Question 2
help(unique)
myData = c(1,1,1,2,3,4,4,5,5,6,6,6,6,7)
unique(myData)
#unique takes data that is not repeated and returns it.
unique(myData, incomparables = 1)
#incomparables means that it will not compare whatever value is given, for example here,
#this will return all 1's.

#Question 3
plot(Loblolly$age, Loblolly$height, xlab="age", ylab="height", main="height vs age")
abline(lm(height~age, data=Loblolly), col="red")

#Question 4
# I believe this data is believable because if we think about it the older the pine tree
# the higher the tree but loblolly reaches its maximum height in around 150 years, so this
# data is true for now.

#Question 5
returns1 = diff(EuStockMarkets)
hist(returns1)
hist(returns1, breaks = "scott")
hist(returns1, breaks = "fd")
# they both look the same

#Question 6

# create points for b.
x <- c(8, 10, 15, 11, 12.5, 8.5, 4, 6, 2, 7, 8)
y <- c(15, 10, 10, 7, 2, 5, 2, 7, 10, 10, 15)
pointNames = c("A","B","C","D","E","F","G","H","I","J")

# c.
par(mar = c(4, 4, 4, 4), pin = c(4, 4),bg="blue")
mystar = plot(x,y, asp = 1, cex = 0.7, xlim =c(2,15), ylim = c(2,15))
text(x,y,labels = pointNames,pos=2,cex = 0.7)
lines(x,y, col = "red",lwd = 3)

#BONUS
mystar = plot(x,y, asp = 1, cex = 0.7, xlim =c(2,15), ylim = c(2,15), type="n")
polygon(x,y,col="yellow")
text(8.5,8,labels = "MY STAR", col= "blue", cex = 1.5)

