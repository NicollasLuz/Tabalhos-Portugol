programa {
  funcao inicio() {
    inteiro n, media = 0

    para(inteiro i = 0; i < 5; i++){
      escreva("Qual o ", i + 1, "� n�mero: ")
      leia(n)
      media = media + n
    }
      escreva("A m�dia dos 5 n�meros digitados �: ", media / 5)
  }
}
