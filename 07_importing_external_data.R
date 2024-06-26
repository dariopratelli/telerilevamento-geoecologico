# How to import external data in R

install.packages("RNetCDF")
library(RNetCDF) # needed to read Copernicus .nc data
library(terra)
library(imageRy)

setwd("C:/Users/utente/Downloads") 
# make use of slash instead of backslash
# Example: C://Documents/ instead of C:\\Documents\ 

# read the data
eclissi <- rast("eclissi.png") 
# like i.import in imageRy
# rast() is a function in the terra package
eclissi

# plot the data
im.plotRGB(eclissi, 1, 2, 3)
im.plotRGB(eclissi, 2, 1, 3)
im.plotRGB(eclissi, 3, 1, 2)

# different methods of plotting
par(mfrow=c(1,2))
im.plotRGB(eclissi, 2, 1, 3)
plotRGB(eclissi, 3, 1, 3)

# band differencing
dif = eclissi[[1]] - eclissi[[2]]
plot(dif)
# import another image
# Exercise: import another image from the net!
ocean<- rast("ocean_changes.jpg")
im.plotRGB(ocean, 1, 2, 3)
im.plotRGB(ocean, 2, 1, 3)

# importing Copernicus data
soil <- rast("c_gls_SSM1km_202404210000_CEURO_S1CSAR_V1.2.1.nc")
plot(soil)
plot(soil[[1]])

# cropping data
ext <- c(25, 35, 58, 62)
soilcrop <- crop(soil, ext)
plot(soilcrop)
plot(soilcrop[[1]])
