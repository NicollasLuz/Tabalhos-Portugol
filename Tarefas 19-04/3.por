programa {
  funcao inicio() {
    real dinherio, poupan

    escreva("Qual o valor que você quer investir: ")
    leia(dinherio)

    poupan = (dinherio / 100) * 5
    escreva("O valor após um mês de rendimento será de: ", dinherio + poupan)
  }
}