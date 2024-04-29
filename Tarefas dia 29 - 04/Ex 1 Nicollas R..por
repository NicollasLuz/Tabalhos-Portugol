programa {
  funcao inicio() {
    inteiro n, n1 = 0

    para(inteiro i = 0; i != 10; i++){
      escreva("Qual o ", i + 1, "° número: ")
      leia(n)

      n1 += n
    }
    escreva("A soma dos 10 números é: ", n1)
  }
}
