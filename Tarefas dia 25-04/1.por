programa {
  funcao inicio() {
    inteiro operacao, n1, n2, resul

    escreva("Qual o valor do primeiro n�mero: ")
    leia(n1)

    escreva("Qual o valor do segundo n�mero: ")
    leia(n2)

    escreva("Digite o n�mero para opera��o: \n [1] Para adi��o\n [2] Para subtra��o\n [3] Para multiplica��o\n [4] Para divis�o\n  ")
    leia(operacao)

    escolha(operacao){
      caso 1: 
        resul = n1 + n2
        escreva("O resultado da opera��o �: ", resul)
      pare
      caso 2: 
        resul = n1 - n2
        escreva("O resultado da opera��o �: ", resul)
      pare
      caso 3: 
        resul = n1 * n2
        escreva("O resultado da opera��o �: ", resul)
      pare
      caso 4: 
        resul = n1 / n2
        escreva("O resultado da opera��o �: ", resul)
      pare
    }
  }
}
