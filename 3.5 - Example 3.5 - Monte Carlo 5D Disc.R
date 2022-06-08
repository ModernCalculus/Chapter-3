#R code for Example 3.5: Monte Carlo integration in a 5D ball # Extend it to 5D
N <- 100000
x <- matrix(runif(5*N, -1,1),ncol=5)
y <- matrix(5,ncol=5,nrow=N)
k <- 0
for(i in 1:N){
  if((t(x[i,])%*%x[i,]) < 1) { 
    k <- k+1
    y[k,] <- x[i,]
    } 
  }
k #[1] 16506 points inside the unit ball B5 in the 5D space #y[1:k,] are points inside the unit ball

r1 <- y[1:k,1] 
r2 <- y[1:k,2] 
r3 <- y[1:k,3] 
r4 <- y[1:k,4] 
r5 <- y[1:k,5]

f <-function(x1,x2,x3,x4,x5){
  1 + x1^2 + x2^2 + x3^2 + x4^2 + x5^2
  } 
n <- 5
V5 <- pi^(n/2)/gamma(n/2 +1)

#Compute the volume of B5
V5*mean(f(r1,r2,r3,r4,r5))
#volume of B5 times the mean value of the function
#[1] 9.031473 is the approximate value of the 5D integral
