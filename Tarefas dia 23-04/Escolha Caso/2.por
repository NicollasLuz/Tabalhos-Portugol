programa {
  funcao inicio() {
    inteiro opcao

    escreva("================================\n")
    escreva(" Seja bem vindo � Marcin m�veis\n")
    escreva("================================\n")
    escreva("1 - Venda a vista\n")
    escreva("2 - Venda a prazo de 30 dias\n")
    escreva("3 - Venda a prazo de 60 dias\n")
    escreva("4 - Venda a prazo de 90 dias\n")
    escreva("5 - Venda no cart�o de d�bito\n")
    escreva("6 - Venda no cart�o de cr�dito\n")
    escreva("Digite o n�mero da op��o desejada: \n")
    leia(opcao)

    escolha(opcao){
      caso 1:
        escreva("Voc� recebeu um desconto de 10%")
      pare
      caso 2:
        escreva("Voc� recebeu um desconto de 5%")
      pare
      caso 3:
        escreva("O pre�o se mant�m o mesmo")
      pare
      caso 4:
        escreva("Nessa op��o tem um acr�cimo de 5%")
      pare
      caso 5:
        escreva("Voc� recebeu um desconto de 8%")
      pare
      caso 6:
        escreva("Voc� recebeu um desconto de 7%")
      pare
      caso contrario: 
        escreva("Op��o inv�lida")
      pare
    }
  }
}
