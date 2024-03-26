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

nir ontop  blue
im.plotRGB(mato2006, 2, 3, 1)

par(mfrow=c(2,3))
im.plotRGB(mato1992, r=1, g=2, b=3) #1992 nir on red
im.plotRGB(mato1992, 2, 1, 3)  #1992 nir on green
im.plotRGB(mato1992, 2, 3, 1)  #1992 nir on blue
im.plotRGB(mato2006, 1, 2, 3) # 2006 nir on red
im.plotRGB(mato2006, 2, 1, 3) # 2006 nir on green
im.plotRGB(mato2006, 2, 3, 1) # 2006 nir on blue
