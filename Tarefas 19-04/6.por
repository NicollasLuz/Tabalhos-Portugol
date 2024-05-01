programa {
  funcao inicio() {
    real alunosC, alunosD

    escreva("Qual a porcentagem de alunos reprovados na turma C: ")
    leia(alunosC)

    escreva("Qual a porcentagem de alunos reprovados na turma D: ")
    leia(alunosD)

    escreva("A quantidade de alunos reprovados na turma C é de: ", (alunosC / 100) * 60)
    escreva("\nA quantidade de alunos reprovados na turma D é de: ", (alunosD / 100) * 20)

    escreva ("\n A porcentagem de alunos reprovados nas duas turmas é de: ",((alunosC + alunosD) / 100) * 80, "%")
  }
}
