# Fig. 3.1: R code

#R simulation to estimate the area of a unit disc #in a 2-dimensional space
rm(list=ls())#remove the R console history
N <- 10000
x <- y <- matrix(runif(2*N, -1, 1), ncol=2)
k <- 0
for(i in 1:N){
  if((t(x[i,])%*%x[i,]) < 1) {
    k<-k+1
    y[k,]=x[i,]
  }
}

#r=k/N is the ratio of points inside the ball to the #total number of points. r*2^2 is the ball’s volume #since 2^2 is the total volume of the square of side #equal to the diameter of the disk.
(k/N)*2^2
#[1] 3.1412 approximate value of pi
k #[1] 7853
  
par(mar=c(4.5,4.5,3,0.5))
#Plot all the 10000 points x[1:N,] inside the square 
plot(x,pch=19, 
     cex=0.2, 
     xlim=c(-1,1),
     ylim=c(-1,1), 
     xlab=expression("x"[1]), 
     ylab=expression("x"[2]), 
     cex.lab=1.5, 
     cex.axis=1.5, 
     main="10000␣random␣points␣on␣a␣2D␣square")

#Plot 7853 red points y[1:k,] inside the unit circle 
points(y[1:k,],pch=19, cex=0.3,col="red")