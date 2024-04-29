programa {
  funcao inicio() {
    inteiro valor

    escreva("Qual o valor do investimento: ")
    leia(valor)

    valor += valor * 0.05

    escreva("O valor do investimento após um mês é de: R$", valor, ".00")
  }
}
