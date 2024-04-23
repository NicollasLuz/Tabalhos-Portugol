programa {
  funcao inicio() {
    real nota[10], media = 0

    para(inteiro i = 0; i < 10; i++){
      escreva("Qual a nota do aluno ", i + 1, ": ")
      leia(nota[i])

      media = media + nota[i]
    }
    media /= 10
    escreva("A média final dos 10 alunos é de: ", media)
  }
}