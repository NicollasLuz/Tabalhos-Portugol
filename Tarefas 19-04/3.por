programa {
  funcao inicio() {
    real dinherio, poupan

    escreva("Qual o valor que voc� quer investir: ")
    leia(dinherio)

    poupan = (dinherio / 100) * 5
    escreva("O valor ap�s um m�s de rendimento ser� de: ", dinherio + poupan)
  }
}