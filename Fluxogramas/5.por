programa {
  funcao inicio() {
    inteiro peso
    escreva("Bom dia Jo�o, b�o?")
    escreva("Qual o peso do peixe da vez Jo�o?: ")
    leia(peso)

    se (peso > 50){
        escreva("P� Jo�o, esse � dos b�o em!!! Mas infelizmente esses ai tem a multinha n�. A� fica R$", (peso - 50) * 4, ".00 de taxa, valeu. At� mais!")
    }
    senao{
        escreva("Esse ai passou direto viu Jo�o, valeu. At� mais!")
    }
  }
}
