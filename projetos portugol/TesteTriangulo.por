programa {
  funcao inicio() {
    inteiro ld[4]
      escreva("Digite um número inteiro para saber se é possivel formar um triangulo\n")
    para(inteiro i = 0; i < 3; i++){
      escreva("Qual o n", i + 1,": ")
      leia(ld[i])
    }
    se(ld[0] == ld[1] == ld[2]){
      escreva("É possível fazer um triangulo equilátero")
    } senao se(ld[0] == ld[1] ou ld[0] == ld[2] ou ld[1] == ld[2]){
      se(ld[0] < (ld[1] * 2) ou ld[0] < (ld[2] * 2) ou ld[1] < (ld[2] * 2)){
        escreva("Não é possível fazer um triangulo")
      }
      escreva("É possível fazer um triangulo isósceles")
    } senao {
      escreva("É possível fazer um triangulo escaleno")


    }
  }
}
