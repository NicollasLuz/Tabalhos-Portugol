programa {
  inteiro qtdPizzarias
  funcao cradrastro(){
    escreva("----------------------------------------------\n")
    escreva("| SEJA BEM VINDO AO REGISTRADOR DE PIZZARIAS |\n")
    escreva("----------------------------------------------\n")
    escreva("\nQual a quantidade de pizzarias que você quer registrar?")
    leia(qtdPizzarias)
  }

  funcao inicio() {
    cradrastro()
    inteiro i
    cadeia pizzarias[3]


    para(i=0; i < 3; i++){
    escreva("\nDigite o nome de uma Pizzaria: ")
    leia(pizzarias[i])
    escreva(pizzarias[0])
    }
  }
}
