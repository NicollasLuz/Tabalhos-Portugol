programa {
  funcao inicio() {
    inteiro n, i

    escreva("Qual o número para ver a tabela: ")
    leia(i)

    escreva("Número   |  Ao quadrado  |  Ao cubo")

    para(i = i; i != 0; i--){
      escreva("\n  ",i, "              ", i * i, "            ", i * i * i)
    }
  }
}
