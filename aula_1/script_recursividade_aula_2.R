####recursividade
fatorial_nao_recursivo<-function(numero) {
  resultado<-1
  sequencia<-numero:1
  
  for(i in sequencia) {
    resultado <- resultado * i
  }
  return(resultado)
}

###
fatorial<-function(numero) {
  if (numero == 0 || numero==1) {
    return(1)
  } else {
    return(numero*fatorial(numero-1))
  }
}

fatorial(5)
