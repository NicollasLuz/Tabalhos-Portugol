programa {
  funcao inicio() {
    real alunosC, alunosD

    escreva("Qual a porcentagem de alunos reprovados na turma C: ")
    leia(alunosC)

    escreva("Qual a porcentagem de alunos reprovados na turma D: ")
    leia(alunosD)

    escreva("A quantidade de alunos reprovados na turma C � de: ", (alunosC / 100) * 60)
    escreva("\nA quantidade de alunos reprovados na turma D � de: ", (alunosD / 100) * 20)

    escreva ("\n A porcentagem de alunos reprovados nas duas turmas � de: ",((alunosC + alunosD) / 100) * 80, "%")
  }
}
