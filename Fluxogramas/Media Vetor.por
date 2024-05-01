programa {
  funcao inicio() {
    real nota[4], final,i
    cadeia nome

    escreva("Qual o nome do aluno: ")
    leia(nome)
    
    para(i = 0; i < 4; i++){
    escreva("Qual a nota ", i + 1, ": ")
    leia(nota[i])
    }

    final = (nota[0] + nota[1] + nota[2] + nota[3]) / 4

    escreva("O conceito final do aluno ", nome, " foi ", final)
  }
}