programa {
  funcao inicio() {
    inteiro ld[4]
      escreva("Digite um n�mero inteiro para saber se � possivel formar um triangulo\n")
    para(inteiro i = 0; i < 3; i++){
      escreva("Qual o n", i + 1,": ")
      leia(ld[i])
    }
    se(ld[0] == ld[1] == ld[2]){
      escreva("� poss�vel fazer um triangulo equil�tero")
    } senao se(ld[0] == ld[1] ou ld[0] == ld[2] ou ld[1] == ld[2]){
      se(ld[0] < (ld[1] * 2) ou ld[0] < (ld[2] * 2) ou ld[1] < (ld[2] * 2)){
        escreva("N�o � poss�vel fazer um triangulo")
      }
      escreva("� poss�vel fazer um triangulo is�sceles")
    } senao {
      escreva("� poss�vel fazer um triangulo escaleno")


    }
  }
}
