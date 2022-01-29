#1.print name
print("Plotting basics : Nandakumar")

#2.installing packages
install.packages("FSA")
install.packages("FSAdata")
install.packages("magrittr")
install.packages("dplyr")
install.packages("ggplot2")
#package libraries
library(FSA)
library(FSAdata)
library(ggplot2)
library(dplyr)
library(magrittr)
library(moments)
library(plotrix)

#3.BullTroutRML2 data
data.class(BullTroutRML2)
print(BullTroutRML2)

#4.first&last three data
headtail(BullTroutRML2,3)

#5.filter Harrison data
filter(BullTroutRML2,  lake == "Harrison")
dataHarrison<- print(filter(BullTroutRML2,lake=="Harrison"))

#6.first&last three Harrison data
headtail(dataHarrison,5)

#7.structure of Harrison
str(dataHarrison)

#8.summary of Harrison
summary(dataHarrison)

#9.scatterplot
plot(x = dataHarrison$fl,y = dataHarrison$age,
     xlab = "Fork Length(mm)",
     ylab = "Age (yrs)",
     xlim = c(0,500),
     ylim = c(0,15),
     main = "Plot 1: Harrison Lake Trout",pch=16)

#10.histogram
hist(dataHarrison$age,
     main = "Plot 2: Harrison Fish Age Distribution" ,
     xlab = "Age (yrs)",
     ylab = "Frequency",
     xlim = c(0,15),
     ylim = c(0,15),
     col = "cadetblue",
     col.main = "cadetblue")

#11.overdense plot
smoothScatter(dataHarrison$fl,dataHarrison$age,
              xlab="Fork Length(mm)",
              ylab="Age(yrs)",
              xlim=c(0,500),
              ylim=c(0,15),
              main="Plot 3: Harrison Density Shaded by Era",
              col=c("green"),
              las=1,
              cex=0.9,
              pch=21)

#12.create new data set for headtail for BullTroutRML2
tmp<-headtail(BullTroutRML2,3)
print(tmp)

#13.create tmp and display era
print(tmp$era)

#14.create pchs vector with the argument values for + and x
pchs= c("+","x")

#15.create a cols vector with the two element "red and "grey60"
cols  = c("red", "gray60")

#16.convert the tmp era values to numeric value
numeric <- as.numeric(tmp$era)
print(numeric)

#17.Initiate the cols vector with the tmp era values
cols = c(tmp$era)
print(cols)

#18(a)create a plot of "Age"
plot(x = dataHarrison$fl,y = dataHarrison$age,
     xlab = "Age(yrs)",
     ylab = "Fork Length(mm)",
     xlim = c(0,500),
     ylim = c(0,15),
     main = "Plot 4: Symbol & colour by Era",pch=pchs,col=cols)

#18(b)ctreate a plot "Age"
plot(x = dataHarrison$age,y = dataHarrison$fl,
     xlab = "Age(yrs)",
     ylab = "Fork Length(mm)",
     ylim = c(0,500),
     xlim = c(0,15),
     main = "Plot 4: Symbol & colour by Era",pch=pchs,col=cols)

#19(a)Plot a reggression line overlay on Plot 4
plot(x = dataHarrison$fl,y = dataHarrison$age,
           xlab = "Age(yrs)",
           ylab = "Fork Length(mm)",
           xlim = c(0,500),
           ylim = c(0,15),
           main = "Plot 5: Regression Overlay",pch=pchs,col=cols)
abline(lm(age~fl, data = dataHarrison))

#19(b)Plot a reggression line overlay on Plot 4
plot(x = dataHarrison$age,y = dataHarrison$fl,
     xlab = "Age(yrs)",
     ylab = "Fork Length(mm)",
     ylim = c(0,500),
     xlim = c(0,15),
     main = "Plot 5: Regression Overlay",pch=pchs,col=cols)
abline(lm(fl~age, data = dataHarrison))

#20(a)Place a legend of on Plot 5
plot(x = dataHarrison$fl,y = dataHarrison$age,
     +      xlab = "Age(yrs)",
     +      ylab = "Fork Length(mm)",
     +      xlim = c(0,500),
     +      ylim = c(0,15),
     +      main = "Plot 6: Legend Overlay",pch=pchs,col=cols)
> abline(lm(age~fl, data = dataHarrison))
> legend("bottomright", title=("Time"),legend =c("1977-80", "1977-01"), pch= pchs, col=cols)

#20(b)Place a legend of on Plot 5
plot(x = dataHarrison$age,y = dataHarrison$fl,
     xlab = "Age(yrs)",
     ylab = "Fork Length(mm)",
     ylim = c(0,500),
     xlim = c(0,15),
     main = "Plot 6: Legend Overlay",pch=pchs,col=cols)
abline(lm(fl~age, data = dataHarrison))
legend("bottomright", title=("Time"),legend =c("1977-80", "1977-01"), pch= pchs, col=cols)
#end

