programa {
  funcao inicio() {
    inteiro cor
    
    escreva("Qual a cor do jogo?\n 1. Verde\n 2. azul\n 3. Amarelo\n 4. Vermelho\n")
    leia(cor)
    
    escolha(cor){
      caso 1: 
        cor = 10
      pare
      caso 2: 
        cor = 20
      pare
      caso 3: 
        cor = 30
      pare
      caso 4: 
        cor = 40
      pare
      caso contrario:
        cor = 0
        escreva("Opção inválida")
    }
    escreva("O jogo escolhio fica em R$", cor, ".00 pode pagar lá no caixa")
  }
}
