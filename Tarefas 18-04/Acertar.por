programa {
  funcao inicio() {
    inteiro n = 0

    enquanto(n != 57){
      escreva("Adivinhe o número de 1 a 100: ")
      leia(n)
      se(n == 57){
        escreva("Parabêns, você acertou o número!!")
      } senao {
        escreva("Você errou o número, tente novamente\n")
      }
    }
  }
}
