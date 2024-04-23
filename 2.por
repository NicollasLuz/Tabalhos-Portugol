programa {
  funcao inicio() {
    inteiro opcao

    escreva("================================\n")
    escreva(" Seja bem vindo à Marcin móveis\n")
    escreva("================================\n")
    escreva("1 - Venda a vista\n")
    escreva("2 - Venda a prazo de 30 dias\n")
    escreva("3 - Venda a prazo de 60 dias\n")
    escreva("4 - Venda a prazo de 90 dias\n")
    escreva("5 - Venda no cartão de débito\n")
    escreva("6 - Venda no cartão de crédito\n")
    escreva("Digite o número da opção desejada: \n")
    leia(opcao)

    escolha(opcao){
      caso 1:
        escreva("Você recebeu um desconto de 10%")
      pare
      caso 2:
        escreva("Você recebeu um desconto de 5%")
      pare
      caso 3:
        escreva("O preço se mantém o mesmo")
      pare
      caso 4:
        escreva("Nessa opção tem um acrécimo de 5%")
      pare
      caso 5:
        escreva("Você recebeu um desconto de 8%")
      pare
      caso 6:
        escreva("Você recebeu um desconto de 7%")
      pare
      caso contrario: 
        escreva("Opção inválida")
      pare
    }
  }
}
