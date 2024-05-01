programa {
  inteiro qtdPizzarias, i = 0, o = 0, esch, num, qtd, del = -1
  cadeia pizzarias[50], continuar = " "

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
        escreva("A opção desejada não existe")
    }
    escreva("\nDeseja continuar? <s/n>")
    leia(continuar)
    } enquanto(continuar != "n")
  }
  funcao opcoes(){
    escreva("---------------------------------------")
    escreva("\n| Qual ação você deseja executar.     |\n|*Digite o respectivo número da opção*|")
    escreva("\n| 1. Cadastro de Pizzaria             |")
    escreva("\n| 2. Listas Pizzarias                 |")
    escreva("\n| 3. Excluir Pizzaria                 |")
    escreva("\n| 4. Sair                             |")
    escreva("\n---------------------------------------")
    escreva("\nQual a opção desejada: ")
    leia(esch)
  
  }
  funcao cradrastro(){
    //Função para imprimir o menu e ler a quantidade de pizzarias
    escreva("\n----------------------------------------------\n")
    escreva("| SEJA BEM VINDO AO REGISTRADOR DE PIZZARIAS |\n")
    escreva("----------------------------------------------")
    escreva("\nQual a quantidade de pizzarias que você quer registrar? ")
    leia(qtdPizzarias)
  }
  funcao lista(){
    //Função para exibir a lista de todas as pizzarias que já foi resgistradas
      para(o = 0; o < (qtdPizzarias + 10); o++){
        escreva("\n",o,"°: ",pizzarias[o])
      }
  }
  funcao excluir(){
    escreva("\nQual pizzaria você quer excluir: ")
    lista()
    escreva("\nDigite o número: ")
    leia(num)
    pizzarias[num] = " "
    lista()
  }
  funcao sair(){
    escreva("\nSaindo...")
    continuar = "n"
  } 
  funcao addpizzaria(){
    faca{
    escreva("\nDigite o nome de uma Pizzaria: ")
    leia(pizzarias[i])
    i++
    }enquanto (i < qtdPizzarias)
  }
}
