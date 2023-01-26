library(raster)
library(sp)

arquivos <- dir(pattern=".tif$")
lista <- list()

for (arquivo in arquivos) {
  r<-raster(arquivo)
  lista<-append(lista, r)
}

s<-stack(lista)
plot(s[[1]])

click()

ponto<-data.frame(x=462245.2, y=-2555479)
coordinates(ponto) <- c("x", "y")

v<-as.vector(extract(s, ponto))
plot(v, t="l")

v_com_ruido<-v+runif(length(v))
plot(v_com_ruido, t="l")

install.packages("sleekts")
library(sleekts)

v_filtrado<-sleek(v_com_ruido)
plot(v_filtrado, t="l")

media<-mean(s)
maxima<-max(s)
minima<-min(s)
amplitude <- maxima-minima
