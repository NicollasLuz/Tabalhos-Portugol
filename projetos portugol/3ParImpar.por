programa {
  funcao inicio() {
    inteiro n1, n2 ,n3, soma

    escreva("Digite o n�mero um : ")
    leia(n1)
    escreva("Digite o n�mero dois: ")
    leia(n2)
    escreva("Digite o n�mero tr�s: ")
    leia(n3)

    soma = n1 + n2 + n3 
    
    se (soma % 2 == 0){
      escreva("O n�mero � par")
    } senao {
      escreva("O n�mero � �mpar")
    }
  }
}