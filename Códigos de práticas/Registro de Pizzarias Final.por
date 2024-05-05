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
        escreva("A opção desejada não existe")
      pare
    }
    escreva("\nDeseja continuar? <s/n>")
    leia(continuar)
    }
  }
  funcao opcoes(){
    //Função para exibir o menu
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
    //Nova variavel de controle para que não haja confusão do programa ao executar um variavel para duas coisa
    //qtdPizzarias + 10 pra exibir sempre as 10 posições da lista, pois se não tiver
    // e a lista for acessada mais de uma vez não aparece todas
      para(o = 0; o < (qtdPizzarias + 10); o++){
        escreva("\n",o,"°: ",pizzarias[o])
      }
  }
  funcao excluir(){
    //Função para excluir pizzaria, é pedido a o número da pizzaria, exibe a lista para saber a posição exata
    escreva("\nQual pizzaria você quer excluir: ")
    lista()
    escreva("\nDigite o número: ")
    leia(num)
    pizzarias[num] = " "
    lista()
    //Lê o número e pizzaria e troca o nome por um espaço em branco e exibe a lista novamente para mostrar que foi excluido 
  }
  funcao sair(){
    //Função para exiber a função de sair
    escreva("\nSaindo...")
    continuar = "n"
  } 
  funcao addpizzaria(){
    //função para adicionar pizzarias adiconando i como número da posição do vetor
    para (i = 0; i < qtdPizzarias; i++){
    escreva("\nDigite o nome de uma Pizzaria: ")
    leia(pizzarias[i])
    }
  }
}
