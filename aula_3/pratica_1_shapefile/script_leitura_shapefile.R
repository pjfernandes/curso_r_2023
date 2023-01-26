install.packages("sp")
install.packages("raster")
install.packages("rgdal")

library(sp)
library(rgdal)

niteroi<-readOGR("/home/uff/Área de Trabalho/arquivos/curso_r/aula_4/pratica_1_shapefile/Bairros_Niteroi.shp", "Bairros_Niteroi")

plot(niteroi)
summary(niteroi)

#Vamos fazer o subset do bairro Boa Viagem
bv<-niteroi[niteroi$NOME=="BOA VIAGEM",]
plot(bv)

crs(bv) #FUNÇÃO DO PACOTE RASTER (PROJEÇÃO)
#proj4string(bv)<-CRS() #APAGANDO A PROJEÇÃO
proj4string(bv)<-CRS("+proj=utm +zone=23 +south +datum=WGS84 +units=m +no_defs +ellps=WGS84 +towgs84=0,0,0") #DEFININDO A PROJEÇÃO
crs(bv)
bv_longlat<-spTransform(bv,CRS("+proj=longlat")) #REPROJENTADO PARA LONGLAT

#PLOT
plot(bv_longlat)
llgridlines(bv_longlat,lty=3) #PLOTAR O GRID. Lty é o tipo

writeOGR(bv_longlat,"LL","bv_ll",driver="ESRI Shapefile") #no pacote rgdal
shapefile(bv,"bv_ll.shp") #no pacote raster

#Lendo tabela com coordenadas e plotando pontos
df <- read.csv("https://raw.githubusercontent.com/pjfernandes/curso_r/master/aula_2/samples.csv", sep=";", h=T)
head

coordinates(df) <- c("longitude", "latitude") #Virou SpatialPointsDataFrame
plot(df)
crs(df)

#shapefile(df, "amostras_co2.shp") salvando shapefile
