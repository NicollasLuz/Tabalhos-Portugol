programa {
  funcao inicio() {
    inteiro n, i

    escreva("Qual o n�mero para ver a tabela: ")
    leia(i)

    escreva("N�mero   |  Ao quadrado  |  Ao cubo")

    para(i = i; i != 0; i--){
      escreva("\n  ",i, "              ", i * i, "            ", i * i * i)
    }
  }
}
