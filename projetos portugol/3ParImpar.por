programa {
  funcao inicio() {
    inteiro n1, n2 ,n3, soma

    escreva("Digite o número um : ")
    leia(n1)
    escreva("Digite o número dois: ")
    leia(n2)
    escreva("Digite o número três: ")
    leia(n3)

    soma = n1 + n2 + n3 
    
    se (soma % 2 == 0){
      escreva("O número é par")
    } senao {
      escreva("O número é ímpar")
    }
  }
}