programa {
  funcao inicio() {
    real combustivel, distancia_percorrida, distancia_total

    escreva("Qual foi a quantidade de combust�vel que coc� abasteceu: ")
    leia(combustivel)

    escreva("Quantos litros por que o carro consome por km: ")
    leia(distancia_percorrida)

    distancia_total = combustivel * distancia_percorrida

    escreva("Ele pode percorrer at� ",distancia_total, " Km")
  }
}
