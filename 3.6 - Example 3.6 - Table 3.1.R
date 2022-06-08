#R code for Table 3.1: Linear approximation and its error 
x <- seq(-0.3,0.3, by=0.1)
fx <- c(1:7)
lx <- c(1:7)
ex <- c(1:7)

for(i in 1:7){
  fx[i] <- (1+x[i])^4
  lx[i] <- 1+4*x[i] 
  ex[i] <- ((1+x[i])^4-(1+4*x[i]))/((1+x[i])^4)*100
                      }
round(cbind(x, fx, lx, ex), digits=4)