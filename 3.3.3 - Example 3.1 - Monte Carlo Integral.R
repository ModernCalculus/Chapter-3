#R code for Example 3.1
#MC for an integral

f <- function(x){x^2} #Define a function
f # function(x){x^2}

x <- runif(1000, 1,3) #Using 1,000 samples 
(3-1)*mean(f(x)) #[1] 8.722102 is the result from the MC method 

x <- runif(1000000,1,3) #Using 1,000,000 samples 
(3-1)*mean(f(x)) #[1] 8.667114 is the result from the MC method

integrate(f,1,3) #R code for numerical integration #8.666667 with absolute error < 9.6e-14