programa {
  funcao inicio() {
    inteiro operacao, n1, n2, resul

    escreva("Qual o valor do primeiro número: ")
    leia(n1)

    escreva("Qual o valor do segundo número: ")
    leia(n2)

    escreva("Digite o número para operação: \n [1] Para adição\n [2] Para subtração\n [3] Para multiplicação\n [4] Para divisão\n  ")
    leia(operacao)

    escolha(operacao){
      caso 1: 
        resul = n1 + n2
        escreva("O resultado da operação é: ", resul)
      pare
      caso 2: 
        resul = n1 - n2
        escreva("O resultado da operação é: ", resul)
      pare
      caso 3: 
        resul = n1 * n2
        escreva("O resultado da operação é: ", resul)
      pare
      caso 4: 
        resul = n1 / n2
        escreva("O resultado da operação é: ", resul)
      pare
    }
  }
}
