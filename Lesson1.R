pollution <- read.csv("avgpm25.csv",colClasses = c("numeric","character","factor","numeric","numeric"))
head(pollution)

#### Single dimensions:

## 5 Number Summary
summary(pollution$pm25)

## Boxplot
boxplot(pollution$pm25, col = "green")
abline(h=12)

## Histogram
hist(pollution$pm25, col = "blue")
rug(pollution$pm25)
hist(pollution$pm25, col = "blue", breaks = 100)
rug(pollution$pm25)

hist(pollution$pm25, col = "blue")
abline(v=12, lwd=2)
abline(v=median(pollution$pm25), col="red", lwd=3)

##barplot
barplot(table(pollution$region), col="wheat", main="Number of counties in each region")


#### Multi dimensional:

## 2 boxplots:
boxplot(pm25 ~ region, data = pollution, col="red")

## 2 histograms:
par(mfrow = c(2,1), mar=c(4,4,2,1))
hist(subset(pollution, region=="east")$pm25, col="blue")
hist(subset(pollution, region=="west")$pm25, col="green")

## scatterplot
with(pollution, plot(latitude, pm25))
abline(h=12, lwd=2, lty=2)

with(pollution, plot(latitude, pm25, col=region))

## Multiple scatterplots
par(mfrow = c(1,2), mar=c(5,4,2,1))
with(subset(pollution, region=="west"), plot(latitude, pm25, main="West"))
with(subset(pollution, region=="east"), plot(latitude, pm25, main="East"))


