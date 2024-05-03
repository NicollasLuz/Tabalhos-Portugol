programa {
  funcao inicio() {
    inteiro num1[5], num2[5], j, i, pos[5]

    para(i = 0; i < 5; i++){
    escreva("Qual o ", i + 1, "° numero do primeiro vetor: ")
    leia(num1[i])

    escreva("Qual o ", i + 1, "° numero do segundo vetor: ")
    leia(num2[i])
    }

    para(j = 0; j < 5; j++){
      se(num1[j] == num2[j]){
        escreva("O numero da posicao: ", j + 1, " e igual ao numero do outro vetor!\n")
      }
    }
  }
}