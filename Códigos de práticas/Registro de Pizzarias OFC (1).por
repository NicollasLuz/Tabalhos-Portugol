programa {
  inteiro qtdPizzarias, i = 0, o = 0, esch, num, qtd, del = -1
  cadeia pizzarias[50], continuar = " "

  funcao inicio() {
    enquanto(continuar != "n") {
    opcoes()
    escolha(esch){
      caso 1:
        cradrastro()
        addpizzaria()
      pare
      caso 2: 
        lista()
      pare
      caso 3: 
        excluir()
      pare
      caso 4:
        sair()
      pare
      caso contrario:
        escreva("A op��o desejada n�o existe")
      pare
    }
    escreva("\nDeseja continuar? <s/n>")
    leia(continuar)
    }
  }
  funcao opcoes(){
    //Fun��o para exibir o menu
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
    //Fun��o para imprimir o menu e ler a quantidade de pizzarias
    escreva("\n----------------------------------------------\n")
    escreva("| SEJA BEM VINDO AO REGISTRADOR DE PIZZARIAS |\n")
    escreva("----------------------------------------------")
    escreva("\nQual a quantidade de pizzarias que voc� quer registrar? ")
    leia(qtdPizzarias)
  }
  funcao lista(){
    //Fun��o para exibir a lista de todas as pizzarias que j� foi resgistradas
    //Nova variavel de controle para que n�o haja confus�o do programa ao executar um variavel para duas coisa
    //qtdPizzarias + 10 pra exibir sempre as 10 posi��es da lista, pois se n�o tiver
    // e a lista for acessada mais de uma vez n�o aparece todas
      para(o = 0; o < (qtdPizzarias + 10); o++){
        escreva("\n",o,"�: ",pizzarias[o])
      }
  }
  funcao excluir(){
    //Fun��o para excluir pizzaria, � pedido a o n�mero da pizzaria, exibe a lista para saber a posi��o exata
    escreva("\nQual pizzaria voc� quer excluir: ")
    lista()
    escreva("\nDigite o n�mero: ")
    leia(num)
    pizzarias[num] = " "
    lista()
    //L� o n�mero e pizzaria e troca o nome por um espa�o em branco e exibe a lista novamente para mostrar que foi excluido 
  }
  funcao sair(){
    //Fun��o para exiber a fun��o de sair
    escreva("\nSaindo...")
    continuar = "n"
  } 
  funcao addpizzaria(){
    //fun��o para adicionar pizzarias adiconando i como n�mero da posi��o do vetor
    para (i = 0; i < qtdPizzarias; i++){
    escreva("\nDigite o nome de uma Pizzaria: ")
    leia(pizzarias[i])
    }
  }
}
