programa {
  funcao inicio() {
    real numero = 1, i = 0

    enquanto(numero >= 1){
      escreva("Digite um valor: ")
      leia(numero)
      i++
    }
    escreva("A quantidade de números digitados foi ", i)
  }
}
