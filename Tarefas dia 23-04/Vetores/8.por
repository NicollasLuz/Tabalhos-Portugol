programa {
  funcao inicio() {
    inteiro num[10], i, vi

    para(i = 0; i < 10; i++){
      escreva("Digite um número: ")
      leia(num[i])
    }
    
    escreva("Qual número você quer visualisar: ")
    leia(vi)

    escreva(num[vi])
  }
}
