#R code for Example 3.4: Monte Carlo integral on a 2D disc 
# int(1+r^2, on a unit disk in 2D)

N <- 100000
x <- matrix(runif(2*N, -1,1),ncol=2) 
redx <- matrix(1,ncol=2,nrow=N) 
x[1:6,]
redx[1:6,]

k <- 0
for(i in 1:N){
  if((t(x[i,])%*%x[i,]) < 1) { 
    k=k+1
    redx[k,]=x[i,]
    } 
  }
k #[1] 78584 points inside the unit disc B2 in the 2D space 
#y[1:k,] are points inside the unit ball

red1 <- redx[1:k,1] 
red2 <- redx[1:k,2]

f <- function(x1,x2){1 + x1^2 + x2^2} 
n <- 2
V2 <- pi #Compute the area of B2 
V2*mean(f(red1,red2)) 
#Area of B2 times the mean value of the function
#[1] 4.711905 is the approximate value of the 2D integral 

# The exact value of the integral is
3*pi/2
#[1] 4.712389