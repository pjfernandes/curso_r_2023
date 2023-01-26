####CRIANDO DATAFRAME
notas<-c(7,8,9,10,10,0,5)
alunos<-c("Jemisson","Pedro","Raphael","Junior","Jairson","Marcelo", "Daniel")

df<-data.frame(alunos=alunos, notas=notas)
df

df[,"notas"]
df[,"alunos"]

df[,1]
df[,2]

df[1,]
df[c(2,3),]

df$notas
df$alunos

##Pegando alunos nota 10
alunos_nota_10 <- df[df$notas==10,]

#Pior aluno
pior_aluno <- df[df$notas==0,]

#Leitura de dados
tabela<-read.csv("https://raw.githubusercontent.com/pjfernandes/curso_r/master/aula_3/VGs__melhores.csv", h=T, sep=",")
names(tabela)
tabela$class_name

head(tabela)

#Estatística descritiva das notas
summary(notas)
mean(notas)
median(notas)
var(notas)
sd(notas)

hist(notas)
abline(v=c(mean(notas, 0)), col="red") #adicionando média
abline(v=c(median(notas, 0)), col="blue") #adicionando mediana
abline(v=10, col="darkgreen") #adicionando moda

#Boxplot e Assimetria
boxplot(notas)

install.packages("moments")
library(moments)
skewness(notas)

#barplot
casos_covid_niteroi <- read.csv("https://raw.githubusercontent.com/pjfernandes/pjfernandes.github.io/master/casos.csv", sep=";", h=T)

head(casos_covid_niteroi)

barplot(casos_covid_niteroi$Casos, names.arg = casos_covid_niteroi$NOME)

#plotly
install.packages("plotly")
library(plotly)

fig <- plot_ly(
  x = casos_covid_niteroi$NOME,
  y = casos_covid_niteroi$casos,
  name = "Casos COVID (13/05/2020)",
  type = "bar"
)

fig

###Boxplot classes de relevo
tabela<-read.csv("https://raw.githubusercontent.com/pjfernandes/curso_r/master/aula_3/VGs__melhores.csv", h=T, sep=",")

ersm_declividade<-tabela[tabela$class_name=="Escarpas e Reversos da Serra do Mar",]$Mean.Declividade
cmc_declividade<-tabela[tabela$class_name=="Colinas e Maci\xe7os Costeiros",]$Mean.Declividade

par(mfrow=c(3,1))
hist(ersm_declividade,breaks=50,xlim=c(0,45), col="red")
hist(cmc_declividade,breaks=50,xlim=c(0,45), col="orange")
boxplot(ersm_declividade, cmc, col=c("red", "orange"), names=c("ERSM", "CMC"))

####Teste t de Student para verificar diferença entre médias
var.test(cmc_declividade, ersm_declividade)
t.test(cmc_declividade, ersm_declividade, var.equal = F)
