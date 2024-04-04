# Spectral indeces

#library(terra)
#library(imageRy)

#importing data
im.list()

mato1992<-im.import("matogrosso_l5_1992219_lrg.jpg")
#bands
#band1=NIR
#band2=red
#band3=green

#plotting the data
im.plotRGB(mato1992, r=1, g=2, b=3)

#nir on green
im.plotRGB(mato1992, 2, 1, 3)

#nir on blue
im.plotRGB(mato1992, 2, 3, 1)

#import 2006 
mato2006<-im.import("matogrosso_ast_2006209_lrg.jpg")

par(mfrow=c(1,2))

dev.off()

#nir ontop green
im.plotRGB(mato2006, 2, 1, 3)

#nir ontop  blue
im.plotRGB(mato2006, 2, 3, 1)

par(mfrow=c(2,3))
im.plotRGB(mato1992, r=1, g=2, b=3) #1992 nir on red
im.plotRGB(mato1992, 2, 1, 3)  #1992 nir on green
im.plotRGB(mato1992, 2, 3, 1)  #1992 nir on blue
im.plotRGB(mato2006, 1, 2, 3) # 2006 nir on red
im.plotRGB(mato2006, 2, 1, 3) # 2006 nir on green
im.plotRGB(mato2006, 2, 3, 1) # 2006 nir on blue

#DA SISTEMAREEEE

# Calculating the DVI (Difference vegtation index)
dvi1992=mato1992 [[1]] - mato1992 [[2]]
# alternative way of coding
dvi1992=m1992.......

#plotting the DVI
cl<-colorRampPalette(c("darkblue", "yellow", " red", "black"))(100)
plot(dvi1992, col=cl)

#2006
mato2006<-im.import("matogrosso_ast_2006209_lrg.jpg")
# DVI 2006
dvi2006=mato2006[[1]]-mato2006[[2]]
plot(dvi2006, col=cl)

#Exercise: plot the dvi1992 beside the dvi2006
par(mfrow=c(1,2))
plot(dvi1992, col=cl)
plot(dvi2006, col=cl)

stackdivi<- c(dvi1992, dvi2006)
pairs (stackdvi)

#Normalized difference vegetation index
ndvi1992=dvi1992 / (mato1992[[1]]+mato1992[[2]])
ndvi2006=dvi2996 / (mato2006[[1]]+mato2006[[2]])

dev.off()
par(mfrow=c(1,2))
plot(ndvi1992, col=cl)
plot(ndvi2006, col=cl)
