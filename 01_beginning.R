# First R scriptFirst 

#R as a calculator
a <- 6*7
b <- 5*8

a+b

# Arrays
flowers <-c(3,6,8,10,15,18)
flowers
insects<-c(10,16,25,42,61,73)
insects

plot(flowers,insects)

# changing plot parametres

# symbols
plot(flowers,insects,pch=19)

#symbol dimension (carachter exageration)
plot(flowers,insects,pch=19, cex=2)
plot(flowers,insects,pch=19, cex=0.5)


# symbol color
plot(flowers,insects,pch=19, cex=2, col="red") this function is cool

