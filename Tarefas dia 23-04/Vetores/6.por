programa {
  funcao inicio() {
    inteiro maior = 0, menor = 9999, num[10]

    para(inteiro i = 0; i < 10; i++){
      escreva("Digite um número: ")
      leia(num[i])
      se(num[i] > maior){
        maior = num[i]
      }
      se(num[i] < menor){
        menor = num[i]
      }
    }
    escreva("O maior número é: ", maior)
    escreva("\nO menor número é: ", menor)
  }
}
