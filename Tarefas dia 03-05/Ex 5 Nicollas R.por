programa {
  funcao inicio() {
    inteiro maior = 0, menor = 9999, num[50], pos_Ma, pos_Me

    para(inteiro i = 0; i < 50; i++){
      escreva("Digite o n�mero ", i + 1, ": ")
      leia(num[i])
      se(num[i] > maior){
        maior = num[i]
        pos_Ma = i
      }
      se(num[i] < menor){
        menor = num[i]
        pos_Me = i
      }
    }
    limpa()
    escreva("O maior n�mero �: ", maior, " na posi��o: ", pos_Ma)
    escreva("\nO menor n�mero �: ", menor, " na posi��o: ", pos_Me)
  }
}
