##correlacão e regressão linear simples
chuva<-c(120, 140, 122, 150, 115, 190, 130, 118)
soja<-c(40, 46, 45, 37, 25, 54, 33, 30)

cor(chuva, soja)
summary(lm(soja~chuva))

plot(chuva, soja)
abline(lm(soja~chuva), col="red")


###############Normalização radiometrica
dados<-read.csv("https://raw.githubusercontent.com/pjfernandes/curso_r/master/aula_3/normalizacao_radiometrica.txt", h=T, sep="\t")

modelo<-lm(dados$IMAGEM_A_SER_NORMALIZADA ~ dados$IMAGEM_REF)
summary(modelo)
plot(dados$IMAGEM_REF, dados$IMAGEM_A_SER_NORMALIZADA)
abline(modelo, col="red")

#############Séries temporais
install.packages("Kendall")
library(Kendall)

temperatura<-read.csv("https://raw.githubusercontent.com/pjfernandes/tendencias_dados_antartica/master/dados.txt", sep="\t", h=T)
head(temperatura)
plot(temperatura[,1], t="l")
MannKendall(temperatura[,1])
###########################################
temperatura2<-read.csv("https://raw.githubusercontent.com/pjfernandes/dados_clima_media/master/lon_75.txt", sep="\t", h=T)
plot(temperatura2[,1], t="l")
MannKendall(temperatura2[,1])
