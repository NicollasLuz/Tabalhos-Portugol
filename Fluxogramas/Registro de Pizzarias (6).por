programa {
  inteiro qtdPizzarias, i, o, esch, num
  cadeia pizzarias[1000], exl = "Excluido", continuar = " "

  funcao inicio() {
    faca{
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
    }
    escreva("\nDeseja continuar? <s/n>")
    leia(continuar)
    } enquanto(continuar != "n")
sair()
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
    escreva("\n----------------------------------------------\n")
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
    escreva("\nQual pizzaria voc� quer excluir: ")
    lista()
    escreva("\nDigite o n�mero: ")
    leia(num)
    pizzaria[1] = exl
    lista()
  }
  funcao sair(){
    escreva("\nSaindo...")
    continuar = "n"
  }
  funcao addpizzaria(){
    para (i =0; i < qtdPizzarias; i++){
    escreva("\nDigite o nome de uma Pizzaria: ")
    leia(pizzarias[i])
    }
  }
}
