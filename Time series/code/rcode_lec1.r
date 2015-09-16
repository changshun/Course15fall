
rm(list = ls())
## remove (almost) everything in the working environment.

setwd("C:/courses/time_series2014/data")  #set my working directory

dat=read.table("q-gdpc96.txt",header=T) #Load data with header

dim(dat)  # Check dimension of the data (row = sample size, col = variables)
head(dat)   # Print out the first 6 rows of the data object "da".
tail(dat) # Print out the last 6 rows of the data object "da".

gdp=dat[,4]  #Select gdp value stored in Column 4.
lgdp=log(gdp);

require(graphics)  #load package graphics
x <- ts(lgdp, start = c(1947, 1), end = c(2010, 4), frequency = 4)
plot.ts(x,xlab="date",ylab="log gdp")
title(main="quarterly log US GDP from 1947 to 2010");

gdpgr=diff(lgdp)
gdpgr1=c(0,gdpgr);
grate<- ts(gdpgr1, start = c(1947, 1), end = c(2010, 4), frequency = 4)
plot(grate,type="l",xlab="date",ylab="gdp growth rate");
title(main="quarterly US GDP growth rate from Feb 1950 to Feb 2010");
### seasonal components decompositions
m=decompose(x, type = c("additive"), filter = NULL)
m$figure
plot(m,xlab="date",ylab="lgdp")
#another graph
plot.ts(x)

##### another example

data1=read.table("m-Starts.txt")   ## Plots are not shown with this file.
head(data1)
yr=data1[397:576,1]
st=log(data1[397:576,2])  # log transformation, 1992-2006

op <- par(mfrow = c(2, 1)) # 2 x 1 pictures on one plot
plot(st,type='l')
length(st)
plot(st,type="l",axes=F,xlab="year",ylab="house start");
axis(side=1,at=seq(1,180,12),labels=seq(1992,2006,1));
axis(side=2,at=seq(4,6,.2));
## At end of plotting, reset to previous settings:
par(op)


#some typical packages, 
# data in economics and finance
library(Ecdat)
#packages for time series analysis functions
library(fBasics)
library(stats)
library(tseries)

## data example


