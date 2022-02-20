#PHAS I
_ _ _ _ _ _ _ 
#print name
print("Final project Ajoy Kumar")

#import file
wine<-read.csv(file="C:\Users\AJOY\Downloads\winequalityN.csv")
wine

#head and tail 
headtail(wine)

#sumarry
summary(wine)

#structure
str(wine)

#bar graph for winepH
wine_ph <- table(wine$pH)
barplot(wine_ph, main = "Wine pH value", xlab = "pH value", col = "light green", cex.names=0.5)

#bar graph for density
wine_density <- table(wine$density)
barplot(wine_density, main = "Wine density value", xlab = "Density", col = "black", cex.names=0.5,las=2)

#scatter plot for alcohol
plot(x = winetop$alcohol, y = winetop$quality,
     xlab = "Alcohol",
     ylab = "Quality",
     main = "Quality vs Alcohol")
______________________________________________________________________________________________________________
#PHASE II
_ _ _ _ _ _
#create new attributes (cum density)
wine$cumulativeDensity = c(cumsum(wine$density))
wine
#creat new attribute (cum pH)
wine$cumulativepH= c(cumsum(wine$pH))
wine

#create new attributes (cum alcohol)
wine$cumulativealcohol= c(cumsum(wine$alcohol))
wine

#median of alcohol
alcoholMedian<-median(wine$alcohol)
alcoholMedian

#mean of alcohol
alcoholmean<-mean(wine$alcohol)
alcoholmean

#standard deviation of cummulative density
sd(wine$cumulativeDensity)

#variance of cumulative alcohol
var(wine$cumulativealcohol)

#mean of cumulativedensity
cumulativeDensitymean<-mean(wine$cumulativeDensity)
cumulativeDensitymean

#median of cumulativedensity
cumulativeDensitymedian<-median(wine$cumulativeDensity)
cumulativeDensitymedian

#mean of cum alcohol
cumulativealcoholmean<-mean(wine$cumulativealcohol)
cumulativealcoholmean

#median of cum alcohol
cumulativealcoholmedian<-median(wine$cumulativealcohol)
cumulativealcoholmedian
______________________________________________________________________________________________________________

