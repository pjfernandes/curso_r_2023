library(raster)
library(rgdal)
library(sp)

pontos<-read.csv("https://raw.githubusercontent.com/pjfernandes/curso_r/master/aula_4/pratica_2_leitura_de_pontos_dgps/pontos.txt", sep=",", h=T)
head(pontos)

pontos <- pontos[, c("x", "y", "z")]
coordinates(pontos) <-c("x", "y")

r<-raster(ext=extent(pontos), resolution=1)
mde<-rasterize(pontos, r, pontos$z, fun=mean)
plot(mde)

writeRaster(mde, "mde.tif", overwrite=T)
