programa {
  funcao inicio() {
    inteiro num1[5], num2[5], j, i, pos[5]

    para(i = 0; i < 5; i++){
    escreva("Qual o ", i + 1, "� numero do primeiro vetor: ")
    leia(num1[i])

    escreva("Qual o ", i + 1, "� numero do segundo vetor: ")
    leia(num2[i])

    se(num1[i] == num2[i]){
      pos[i] = i
    } senao {
      pos[i] = 0
    }
    
    }

    para(j = 0; j < 5; j++){
      se(pos[j] != 0){

        escreva("O n�mero da pos��o: ", pos[j] + 1, " � igual ao n�mero do outro vetor!\n")
      }
    }
  }
}
