library(raster)

b2<-raster("b2_2011c.tif")
b3<-raster("b3_2011c.tif")
b4<-raster("b4_2011c.tif")
b5<-raster("b5_2011_c.tif")

niteroi<-shapefile("Bairros_Niteroi.shp")
crs(niteroi)<-CRS("+proj=utm +zone=23 +south +datum=WGS84 +units=m +no_defs +ellps=WGS84 +towgs84=0,0,0") #DEFININDO A PROJEÇÃO
niteroi<-spTransform(niteroi,crs(b3))

b3_m<-mask(b3, niteroi)
plot(b3_m)
b3_m<-crop(b3_m, niteroi)
plot(b3_m)

b4_m<-mask(b4, niteroi)
plot(b4_m)
b4_m<-crop(b4_m, niteroi)
plot(b4_m)

ndvi<-(b4_m-b3_m)/b4_m+b3_m
plot(ndvi)
writeRaster(ndvi, "ndvi.tif")
