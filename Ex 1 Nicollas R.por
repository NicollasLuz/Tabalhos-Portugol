programa {
  funcao inicio() {
    inteiro num[5], par[5], i, j, pos[5]

    para(i = 0; i < 5; i++){
      escreva("Digite um número: ")
      leia(num[i])

      se(num[i] % 2 == 0){
        par[i] = num[i]
      } senao {
        par[i] = 0
      }
        pos[i] = i
    }
    
    limpa()

    para(j = 0; j < 5; j++){
      se(par[j] == 0){
        escreva("O número da casa: ", pos[j], " não é par\n")
      }senao {
        escreva("O número: ", par[j], " da casa: ", pos[j], " é par\n")
        // escreva("O número pares digitados são: ", par[j], " na posição: ", pos[j], "\n")
      }
    }
  }
}
