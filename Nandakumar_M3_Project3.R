#1.print name
print("Ajoy Kumar")

#installing packages

install.packages("FSA")
install.packages("FSAdata")
install.packages("magrittr")
install.packages("dplyr")
install.packages("ggplot2")
install.packages("moments")
install.packages("tidyr plyr")
install.packages("tidyverse")

#package libraries

library(FSA)
library(FSAdata)
library(ggplot2)
library(dplyr)
library(magrittr)
library(moments)
library(plotrix)
library(tidyrplyr)
library(tidyverse)

#2.import inchBio.csv table
bio <- read.csv("C:\\Users\\AJOY\\Downloads\\inchBio.csv")
#display inchBio.csv
bio

#3.head
head(bio)

#tail
tail(bio)

#structure
str(bio)

#4.create an abject that count all species record
table(bio['species'])
counts<-list(bio$species)
counts

#5.name species as "count"
tmpunique<-unique(bio[c("species")])
tmpunique

#6. store in temp
tmp <- table(bio['species'])
tmp

#7.subset
tmp2<-head(tmpunique,5)
tmp2

#8.Create a table, <w>, of the species variable. Display the class of w
w<-table(tmpunique)
w
lapply(w,class)

#9. Convert <w> to a data frame named <t> and display the results
t<-print(as.data.frame(w))


#10.Extract and display the frequency values from the <t> data frame
print(t$Freq)

#11.Create a table named <cSpec> from the bio species attribute (variable) and confirm that you created a table which displays the number of species in the dataset <bio>
cSpec <- table(bio$species)
cSpec

#12.Create a table named <cSpecPct> that displays the species and percentage of records for each species. Confirm you created a table class.
x_cout <- table(bio$species)   
cSpecPct <- (x_cout / length(bio$species)) * 10   
cSpecPct

#13.Convert the table, <cSpecPct>, to a data frame named <u> and confirm that <u> is a data
frame
u<-print(as.data.frame(cSpecPct))
print(u)
is.data.frame(u)
colnames(u) <- c('Var1','Freq')

#14.Create a barplot of <cSpec> with the following: titled Fish Count with the following specifications:
barplot(cSpec, main = "Fish Count", xlab = "COUNTS", col = "light green", horiz=TRUE, cex.names=0.5, las = 2)

#15. Create a barplot of <cSpecPct>, with the following specifications
barplot(cSpecPct, ylim=c(0,4), col.axis = "light blue", ylab = "Frequency",
main = "Fish Relative Frequency",las=2,cex.names=0.5,col.lab="light blue")

#16.Rearrange the <u> cSpec Pct data frame in descending order of relative frequency.Save the rearranged data frame as the object <d>
d<-u[order(-u$Freq),]
d

#17.Rename the <d> columns Var 1 to Species, and Freq to RelFreq
colnames(d) <- c('Species','RelFreq')
d

#18.Add new variables to <d> and call them cumfreq, counts, and cumcounts
d$cumfreq = c(cumsum(d$RelFreq))
d
d$counts = c(d$RelFreq)
d
d$cumcounts = c(cumsum(d$counts))
d

#19.Create a parameter variable <def_par> to store parameter variables
def_par=par(no.readonly = TRUE)
def_par

#20.Create a barplot, <pc>, with the following specifications
pc <- barplot(d$counts, width = 1, space = 0.15, border = NA, axes = F,
ylim = c(0,0.05*228),ylab ="Cummulative Counts",cex.axis = 0.7, cex.names = 0.55,
names.arg = d$Species,las=2, main = "Species Pareto")

#21.Add a cumulative counts line to the <pc> plot with the following
px <- d$cum_counts
lines(pc,d$cumcounts, type = "b", cex = 0.70, pch = 19, col="cyan4")

#22.Place a grey box around the pareto plot 
par(box(which = "plot", lty = "solid", col = "grey"))

#23. Add a left side axis with the following specifications
axis(side = 2, at = c (0,d $cumcounts),  tick = TRUE,
col.axis = "grey62", col.ticks ="grey62",cex.axis = 0.80)
     
#24.Add axis details on right side of box with the specifications
axis(side = 4, at = c(0,d$cumcounts),
label = c(0,d$cumfreq), col.axis ="cyan3", col="cyan4", cex.axis=0.60)     
     
#25.Display the finished Species Pareto Plot (without the star watermarks). Have your last name on the plot
pc <- barplot(d$counts, width = 1, space = 0.15, border = NA, axes = F,
ylim = c(0,0.05*228),ylab ="Cumulative Counts",cex.axis = 0.7, cex.names = 0.55,
names.arg = d$Species,las=2, main = "Species Pareto")

px <- d$cum_counts
lines(pc,d$cumcounts, type = "b", cex = 0.70, pch = 19, col="cyan4")

par(box(which = "plot", lty = "solid", col = "grey"))

axis(side = 2, at = c (0,d $cumcounts),  tick = TRUE,
col.axis = "grey62", col.ticks ="grey62",cex.axis = 0.80)
     
axis(side = 4, at = c(0,d$cumcounts),
label = c(0,d$cumfreq), col.axis ="cyan3", col="cyan4", cex.axis=0.60)     
     
mtext("AjoyKumar", side=3)          
     
     
     

