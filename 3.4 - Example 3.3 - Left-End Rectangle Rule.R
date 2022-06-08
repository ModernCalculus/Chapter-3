#R code for Example 3.3 
#int[exp(-x^2)/(1+x^2), -1,2]

f2 <- function(x){exp(-x^2)/(1+x^2)} 
f2 #function(x){exp(-x^2)/(1+x^2)}

n <- 100
x <- seq(-1, 2, len = n+1) 
sum(f2(x[1:n]))*(2-(-1))/n #[1] 1.292416

#A more accurate answer is below 
integrate(f2, -1, 2)
#1.289754 with absolute error < 7e-11