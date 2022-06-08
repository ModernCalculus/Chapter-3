#Two-dice simulation
x <- y <- 1:6 #Two dice x and y
m <- 100000 #Simulate m times
l <- 0 #k is used as the counter for a specific event, such as "7" 
for (i in 1:m) {
  if(sample(x,1) + sample(y,1) == 7) 
    l <- l+1
  }
l/m #The simulated probability
#[1] 0.16613 which is approximately 1/6.
