/*
6 - Crie um algoritmo usando vetores 
para encontrar a moda (valor que mais se repete) 
em um conjunto de dados?
*/
programa {
  funcao inicio() {
    inteiro tamanho

    escreva("Qual a quantidade de números que você deseja: ")
    leia(tamanho)

    real n[tamanho], moda

    para(inteiro i = 0; i != tamanho; i++){
      escreva("Qual o valor do ", i + 1, "° número: ")
      leia(n[i])
        para(inteiro j = 0; j != i; j++){
          se(n[i] == n[j])
            moda = n[i]
        }
    }
    escreva("O número que mais se repete é: ", moda)
  }
}
