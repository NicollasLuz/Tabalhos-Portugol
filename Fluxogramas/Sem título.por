programa {
  funcao inicio() {
    inteiro num = 0, menor =999999999,n,n1

    para(n=0; n <3 ; n++){
    escreva("Qual o ", n+1, " n�mero: ")
    leia(num)
    se (num < menor){
      n1 = n+1
      menor = num
    }
    }
    escreva(n1, " ",menor)
  }
} 