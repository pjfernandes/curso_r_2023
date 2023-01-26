library(raster)
library(Kendall)

arquivos<-dir(pattern=".tif$")
lista <- list()

for (arquivo in arquivos) {
  lista<-append(lista, raster(arquivo))
}

s<-stack(lista)

fun1<- function(x) { 
  #dat<-1:16
  if (is.na(x[1])) { 
    NA 
  } else { 
    m=MannKendall(x)
    m$tau[1]
  } 
} 

fun2 <- function(x) { 
  #dat<-1:365
  if (is.na(x[1])) { 
    NA 
  } else { 
    m=MannKendall(x)
    m$s[1]
  } 
}
beginCluster(6)

l_m<-clusterR(s,calc,args=list(fun=fun1))
p<-clusterR(s,calc,args=list(fun=fun2))
p_mask<-p<0.05
p_mask[p_mask==0][]<-NA

final<-l_m*p_mask
plot(final)
