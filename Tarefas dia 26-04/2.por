programa {
  funcao inicio() {
    real combustivel, distancia_percorrida, distancia_total

    escreva("Qual foi a quantidade de combustível que cocê abasteceu: ")
    leia(combustivel)

    escreva("Quantos litros por que o carro consome por km: ")
    leia(distancia_percorrida)

    distancia_total = combustivel * distancia_percorrida

    escreva("Ele pode percorrer até ",distancia_total, " Km")
  }
}
