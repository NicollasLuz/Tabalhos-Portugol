programa {
  funcao inicio() {
    real tanto, troco, dinheiro 
    cadeia continuar = ""

    escreva("------------------------------")
    escreva("\n| Seja BEm vindo ao trocador |")
    escreva("\n------------------------------\n")

    faca{
    escreva("Qual o valor da compra: ")
    leia(tanto)

    escreva("Qual a quantidade de dinheiro fornecida: ")
    leia(dinheiro)
    se(dinheiro < tanto){
      escreva("Est� faltando dinheiro. Tente novamente")
    } senao {
      troco = dinheiro - tanto
    }

    escreva("A qunatidade de troco nescessaria �: R$", troco, ".00")

    escreva("\nVoc� deseja continuar <s/n>")
    leia(continuar)

    }enquanto( continuar != 'n')

  }
}