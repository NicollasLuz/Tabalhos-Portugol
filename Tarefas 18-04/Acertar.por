programa {
  funcao inicio() {
    inteiro n = 0

    enquanto(n != 57){
      escreva("Adivinhe o n�mero de 1 a 100: ")
      leia(n)
      se(n == 57){
        escreva("Parab�ns, voc� acertou o n�mero!!")
      } senao {
        escreva("Voc� errou o n�mero, tente novamente\n")
      }
    }
  }
}
