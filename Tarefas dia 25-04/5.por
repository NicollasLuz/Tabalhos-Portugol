/*
5 - Descreva um algoritmo que use vetores 
para armazenar as idades de uma família e 
depois determine a idade média dos membros.
*/
programa {
  funcao inicio() {
    inteiro tamanho
    real media = 0

    escreva("Qual o tamanho da familía para registrar: ")
    leia(tamanho)

    real idades[tamanho]
    cadeia nome[tamanho]

    para(inteiro i = 0; i != tamanho; i++){
      escreva("Qual o nome do ", i + 1, "° integrante que você quer registrar: ")
      leia(nome[i])

      escreva("Qual a idade do(a) ", nome[i], " para registrar registrar: ")
      leia(idades[i])

      media += idades[i]
    }
    escreva("Todos os membros da familia com suas idades: \n")

    para(inteiro j = 0; j != tamanho; j++){
      escreva(j + 1, "° ",nome[j], " com ", idades[j], " anos \n")
    }

    escreva("A média de idade de todos os integrantes da familía é: ", media / tamanho)

  }
}
