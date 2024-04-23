programa {
  funcao inicio() {
    inteiro num
     
    escreva("Qual a opção de compra que você quer: ")
    leia(num)

    escolha(num){
      caso 1: 
          escreva("1 - Venda a vista\n")
      pare
      caso 2: 
          escreva("2 - Venda a prazo de 30 dias\n")
      pare
      caso 3: 
          escreva("3 - Venda a prazo de 60 dias\n")
      pare
      caso 4: 
          escreva("4 - Venda a prazo de 90 dias\n")
      pare
      caso 5: 
          escreva("5 - Venda no cartão de débito\n")
      pare
      caso 6: 
          escreva("6 - Venda no cartão de crédito\n")
      pare
      caso contrario:
          escreva("Opção inválida!!")
      pare
    }
  }
}
