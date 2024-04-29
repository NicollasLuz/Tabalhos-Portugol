programa {
  funcao inicio() {
    inteiro tanto, i
    real nota, media_total = 0

    escreva("Qaul a quantidade de alunos presentes na turma: ")
    leia(tanto)

    inteiro qtd_alunos[tanto]

    para(i = 0; i != tanto; i++){
      real media = 0
      escreva("\nQual as notas do ",  i + 1, "° aluno: ")

        para(inteiro u = 0; u != tanto; u++){
          escreva("\nQual a ", u + 1,"° nota do aluno ", i + 1, ": ")
          leia(nota)

          media += nota
        }
          media_total += media
          escreva("A media total do aluno ", qtd_alunos[i], "é de: ", media / 3)
    }
    escreva("\nA média total da sala é: ", media_total / tanto)
  }
}
