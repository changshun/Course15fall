# R code for AR(1) process
library(fBasics)
library(stats)
library(tseries)

#simulations for MA processes
arima.sim()
help(arima.sim)

require(graphics)
y=arima.sim(n = 200, list(ma = c(0.5)),sd = 1)
#for different value of phi;
plot(y,type='l')

var_y=cov(y,y)
var_y
print("truevalue:")
(1+0.5^2)

help(acf)

covy=acf(y, type = "covariance")
corry=acf(y, type = "correlation")

#simulations for AR processes

require(graphics)
y=arima.sim(n = 200, list(ar = c(0.5)),sd = 1)
plot(y,type='l')


var_y=cov(y,y)
var_y

print("truevalue:")
1/(1-0.5^2)

covy=acf(y, type = "covariance")
corry=acf(y, type = "correlation")



####

require(graphics)
y=arima.sim(n = 200, list(ar = c(0.5),ma=c(0.3)),sd = 1)
plot(y,type='l')



