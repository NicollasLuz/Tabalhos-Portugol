programa {
  funcao inicio() {
    real total, publico, popular, geral, arquibancada, cadeiras

    escreva("Qual foi o publico total do jogo: ")
    leia(publico)

    popular = (publico * 0.1) * 5
    geral = (publico * 0.5) * 10
    arquibancada = (publico * 0.3) * 20
    cadeiras = (publico * 0.1) * 30

    total = popular + geral + arquibancada + cadeiras

    escreva("A renda total do jogo foi: R$", total, ".00")
  }
}
