## Base Plotting System

library(datasets)
data(cars)
with(cars, plot(speed, dist))


## The Lattice System
# single function call: xyplot, bwplot

library(lattice)
state <- data.frame(state.x77, region=state.region)
xyplot(Life.Exp ~ Income | region, data = state, layout = c(4,1))

## The ggplot2 system
library(ggplot2)
data(mpg)
qplot(displ, hwy, data=mpg)

## Simple Base Graphics
library(datasets)
hist(airquality$Ozone)

## Simple Base Graphics: scatterplot
with(airquality, plot(Wind, Ozone))

## Simple Base Graphics: Boxplot
airquality <- transform(airquality, Month=factor(Month))
boxplot(Ozone ~ Month, airquality, xlab="Month", ylab="Ozone (ppb)")

## All available colours:
colors()

## Base plot with annotation
with(airquality, plot(Wind, Ozone))
title(main="OhZone and Gas in New Yok city")

with(airquality, plot(Wind, Ozone), main="OhZone and Gas in New Yok city")
with(subset(airquality, Month == 5), points(Wind, Ozone, col="blue"))

with(airquality, plot(Wind, Ozone), main="OZone and Wind in New Yok city", type="n")
with(subset(airquality, Month == 5), points(Wind, Ozone, col="blue"))
with(subset(airquality, Month != 5), points(Wind, Ozone, col="red"))
legend("topright",pch=1,col=c("blue","red"),legend=c("May","Other Months"))

with(airquality, plot(Wind, Ozone, main="OZone and Wind in New Yok city", pch=20))
model <- lm(Ozone ~ Wind, airquality)
abline(model, lwd=2)

par(mfrow=c(1,2))
with(airquality, {
    plot(Wind, Ozone, main="Ozone and Wind") 
    plot(Solar.R, Ozone, main="Ozone and Solar Radiation")
    })

par(mfrow=c(1,3), mar=c(4,4,2,1), oma=c(0,0,2,0))
with(airquality, {
    plot(Wind, Ozone, main="Wind and Ozone")
    plot(Solar.R, Ozone, main="Solar radiation and Ozone")
    plot(Temp, Ozone, main="Temperature and Ozone")
    mtext("Ozone and weather in NYC", outer=TRUE)
})