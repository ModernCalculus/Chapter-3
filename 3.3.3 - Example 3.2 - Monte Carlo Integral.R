#R code for Example 3.2
#Monte Carlo int[exp(-x^2)/(1+x^2), -1, 2]

f2 <- function(x){exp(-x^2)/(1+x^2)}
f2 #function(x){exp(-x^2)/(1+x^2)}

x <- runif(1000, -1, 2)
(2-(-1))*mean(f2(x)) #[1] 1.273097 is the MC result

integrate(f2, -1, 2) #R’s numerical integration algorithm #1.289754 with absolute error < 7e-11 # almost exact value
