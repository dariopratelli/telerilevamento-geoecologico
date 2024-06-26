# time series analysis
#second method to quantify chages in time
#the firs method was based on classification

library(imageRy)
library(terra)

im.list()

# import the data
EN01 <- im.import("EN_01.png")
EN13 <- im.import("EN_13.png")

par(mfrow=c(2,1))
im.plotRGB.auto(EN01) #con auto prende le prime 3 e le plotta insime in automatico
im.plotRGB.auto(EN13)

# using the first element (band) of images
difEN = EN01[[1]] - EN13[[1]]

# palette
cldif <- colorRampPalette(c("blue", "white", "red")) (100)
plot(difEN, col=cldif)
dev.off()
plot(difEN, col=cldif)

### New example: temperature and ice melt in Greenland
#lavoriamo con un proxy del programma copernicus

g2000 <- im.import("greenland.2000.tif")
clg <- colorRampPalette(c("black", "blue", "white", "red")) (100)
plot(g2000, col=clg)

g2005 <- im.import("greenland.2005.tif")
g2010 <- im.import("greenland.2010.tif")
g2015 <- im.import("greenland.2015.tif")

plot(g2015, col=clg)

par(mfrow=c(1,2))
plot(g2000, col=clg)
plot(g2015, col=clg)

# stacking the data (stack)
stackg <- c(g2000, g2005, g2010, g2015)
plot(stackg, col=clg)

# Exercise: make the differencxe between the first and the final elemnts of the stack
difg <- stackg[[1]] - stackg[[4]]
# difg <- g2000 - g2015
plot(difg, col=cldif)
dev.off()
plot(difg, col=cldif)

clgreen <- colorRampPalette(c("red", "white", "blue")) (100) #cambiare l'ordine dei colori per evidenziare gli aumenti di temperatura in rosso
 plot(difg, col=clgreen)

# Exercise: make a RGB plot using different years
im.plotRGB(stackg, r=1, g=2, b=4) #se la mappa diventa rosso ho valori più alti nel 2000 , se verde nel 2005, se blu nel 2015, servono immagini della stessa dimensione
