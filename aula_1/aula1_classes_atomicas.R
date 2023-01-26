## Hello world
"Hello world"
print("Hello world")
greeting<-"Hello world"
print(greeting)

## Classes atômicas
#complexo
complexo<-9+3i
is.complex(complexo)

#numerico
numerico_inteiro<-12
is.numeric(numerico_inteiro)
is.integer(numerico_inteiro)

numerico<-12.3
is.numeric(numerico)
is.integer(numerico)

p<-pi

#character
fruta<-"laranja"
print(fruta)
paste(laranja)
fruta
is.character(fruta)
class(fruta)

#logico
TRUE
FALSE
boolean<-TRUE
is.logical(boolean)
class(boolean)

##OPERAÇÕES MATEMÁTICAS
x<-10
y<--12
x+y
x*y
x/y
x^y
x^2
x**2
log(x)
log(x, 2)
exp(x)
sqrt(x)
cos(pi)
sin(pi)
tan(pi)
abs(-3)
abs(y)

##OPERAÇÕES COM STRING
fruta<-"laranja"
substr(fruta,1,2)
substring(fruta, "a","e")
gsub("a", "e", fruta)

frutas<-"laranja abacaxi"
gsub(" ", " ,", frutas)
toupper(fruta)
tolower(fruta)

install.packages("stringr")
library(stringr)
str_to_title(fruta)

#OPERAÇÔES BOOLEANAS
TRUE || TRUE
TRUE || FALSE
FALSE || TRUE
FALSE || FALSE

TRUE && TRUE
TRUE && FALSE
FALSE && TRUE
FALSE && FALSE

!FALSE
!TRUE
!FALSE || FALSE
(!FALSE || FALSE) && FALSE
(!FALSE || !TRUE) == !(FALSE && TRUE)
