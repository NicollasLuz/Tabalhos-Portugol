programa {
  funcao inicio() {
    real qtd_livros, compra

    escreva("Qual a quantidade de livros comprados: ")
    leia(qtd_livros)

    se(qtd_livros > 10){
      compra = qtd_livros * 8
    } senao {
      compra = qtd_livros * 12
    }
    escreva("O valor total da compra ficou em: R$", compra, ".00")
  }
}
