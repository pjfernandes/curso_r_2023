#######Funções
##soma
soma <- function(x, y) {
  return(x+y)
}

resultado <- soma(2, 3)

##mega sena
megasena <- function() {
  sequencia <- 1:60
  sorteio <- sample(sequencia, 6)
  return(sorteio)
}

##encontrar valor maximo
maximo<-function(vetor) {
  max <- numeric()
  for (item in 1:length(vetor)) {
    if (length(max) == 0 || max < vetor[item]) {
      max <- vetor[item]
    }
  }
  return(max)
}

x<-c(59, 34, 2, 10, 25, 200, 123, 44)
maximo(x)

##encontrar somatório
somatorio<-function(vetor) {
  soma<-0
  
  ##############################
  ##IMPLEMENTE O CÒDIGO ABAIXO##
  ##############################
  
  return(soma)
}

x<-c(59, 34, 2, 10, 25, 200, 123, 44)
somatorio(x)

##encontrar valor (busca linear)
encontrar_valor <- function(numero, vetor) {
  resultado <- FALSE
  
  for (i in 1:length(vetor)) {
    if (numero == vetor[i]) {
      resultado <- TRUE
      #break
    } else {
      resultado <- FALSE
    }
  }
  
  return(resultado)
}

x<-c(59, 34, 2, 10, 25, 200, 123, 44)

encontrar_valor(2, x)
encontrar_valor(200, x)
encontrar_valor(2, x)
encontrar_valor(57, x)
