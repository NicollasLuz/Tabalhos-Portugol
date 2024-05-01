programa {
  funcao inicio() {
    inteiro n, media = 0

    para(inteiro i = 0; i < 5; i++){
      escreva("Qual o ", i + 1, "° número: ")
      leia(n)
      media = media + n
    }
      escreva("A média dos 5 números digitados é: ", media / 5)
  }
}
