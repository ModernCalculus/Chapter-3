#R code to generate two sine waves

# install.packages("audio") INSTALL IF YOU DON'T HAVE
library(audio)
x <- audioSample(0.3*sin(0.1*(1:4000)) +
                   0.9*sin(0.7*(1:4000)), 
                 bits = 16, 5000)
play(x) #You can hear the sound by running this line
