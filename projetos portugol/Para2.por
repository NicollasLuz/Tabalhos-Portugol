programa {
  funcao inicio() {
    real produto, total = 0

    escreva("-----------------------------------")
    escreva("\n| Seja Bem vindo ao trem de preço |")
    escreva("\n| Passa o produto no leitor       |")
    escreva("\n-----------------------------------\n")

    para(inteiro i = 0; i < 8; i++){
      escreva("Qual o preço do produto: ")
      leia(produto)
      total = produto + total
    }
    escreva("O valor total da sua compra fiocu em R$", total, ".00")
  }
}