programa {
  funcao inicio() {
    inteiro maior = 0, menor = 9999, num[10]

    para(inteiro i = 0; i < 10; i++){
      escreva("Digite um n�mero: ")
      leia(num[i])
      se(num[i] > maior){
        maior = num[i]
      }
      se(num[i] < menor){
        menor = num[i]
      }
    }
    escreva("O maior n�mero �: ", maior)
    escreva("\nO menor n�mero �: ", menor)
  }
}
