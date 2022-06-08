#R code for plotting Fig. 3.6: Fourier series over [-1,1] 
#setwd("sshen/CalculusR") ##set working directory

i <- complex(real=0, imaginary=1)
T <- 2
t <- seq(-T/2,T/2, len = 401)

#Define the original function x(t)
xt <- ( t >= -1 & t < 0) * 
  (-4) + 
  ( t <= 1 & t > 0) * 
  (4)

#Plot the function x(t)
setEPS ()
postscript("fig0315.eps", height=5, width=8)
par(mar = c(4, 4.5, 2, 0.5))
plot(t, xt, type = 'l',
     ylim=c(-5,5),
     xlab='t', 
     ylab='x(t)',
     main='Approximate a function by a finite sum of Fourier series',
     cex.lab=1.5, 
     cex.axis=1.4, 
     cex.main=1.4,
     lwd=5, 
     col='red')

#Plot the partial
J <- c(3, 10, 100) 
Fcol <- c('brown', 'blue', 'black')
for (j in 1:3){
  k <- -J[j]:J[j]
  RK <- colSums(8/(i*pi*(2*k-1))*
                  exp(i*pi*outer(2*k-1, t))) 
  lines(t, 
        Re(RK), 
        type='l',
        col=Fcol[j])
}
legend(-1.05, 5.1,
       legend=c('Function x(t)', 
                  'Sum of 7 terms', 
                  'Sum of 21 terms', 
                  'Sum of 201 terms'),
       col=c('red', 'brown', 'blue', 'black'), 
       lty=c(1,1,1,1), 
       lwd=c(5, 1,1,1),
       cex=1.3, 
       bty='n')
dev.off()
# find fig0315.eps in working directory
