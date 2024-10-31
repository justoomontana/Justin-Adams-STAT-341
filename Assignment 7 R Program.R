
x = rnorm(1000)
y = rnorm(300)
pts = seq(-4.5,4.5,length=100)
plot(pts,dt(pts,df=9),col='red',type='l')
lines(density(x), col='green')
lines(density(y), col='blue')
ttest = t.test(x,y) 


	Welch Two Sample t-test

data:  x and y
t = 0.29575, df = 483.3, p-value = 0.7676
alternative hypothesis: true difference in means is not equal to 0
95 percent confidence interval:
 -0.1072805  0.1452974
sample estimates:
  mean of x   mean of y 
-0.02589029 -0.04489871