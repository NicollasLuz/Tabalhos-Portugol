programa {
  inteiro qtdPizzarias, i, o, esch
  cadeia pizzarias[1000]

  funcao inicio() {
    opcoes()
    escolha(esch){
      caso 1:
        cradrastro()
      pare
      caso 2: 
        lista()
    }


    para (i =0; i < qtdPizzarias; i++){
    escreva("\nDigite o nome de uma Pizzaria: ")
    leia(pizzarias[i])
    } opcoes()
        escolha(esch){
      caso 1:
        cradrastro()
      pare
      caso 2: 
        lista()
    }
  }
  funcao opcoes(){
    escreva("---------------------------------------")
    escreva("\n| Qual a��o voc� deseja executar.     |\n|*Digite o respectivo n�mero da op��o*|")
    escreva("\n| 1. Cadastro de Pizzaria             |")
    escreva("\n| 2. Listas Pizzarias                 |")
    escreva("\n| 3. Excluir Pizzaria                 |")
    escreva("\n| 4. Sair                             |")
    escreva("\n---------------------------------------")
    escreva("\nQual a op��o desejada: ")
    leia(esch)
  
  }
  funcao cradrastro(){
    escreva("----------------------------------------------\n")
    escreva("| SEJA BEM VINDO AO REGISTRADOR DE PIZZARIAS |\n")
    escreva("----------------------------------------------")
    escreva("\nQual a quantidade de pizzarias que voc� quer registrar? ")
    leia(qtdPizzarias)
  }
  funcao lista(){
      para(o = 0; o < qtdPizzarias; o++){
        escreva("\n",o,"� ",pizzarias[o])
      }
  }
  funcao excluir(){
    escreva("Qual pizzaria voc� quer excluir: ")
  }
}
