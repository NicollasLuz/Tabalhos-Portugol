programa {
  funcao inicio() {
    inteiro num[10], i, vi

    para(i = 0; i < 10; i++){
      escreva("Digite um n�mero: ")
      leia(num[i])
    }
    
    escreva("Qual n�mero voc� quer visualisar: ")
    leia(vi)

    escreva(num[vi])
  }
}
