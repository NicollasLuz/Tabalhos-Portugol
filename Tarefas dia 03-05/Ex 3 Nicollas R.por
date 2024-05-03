programa {
  funcao inicio() {
    inteiro vet[6], i

    para(i = 0; i < 6; i++){
      escreva("\nDigite um numero: ")
      leia(vet[i])

      escreva(vet[i])
      escreva("\n",vet[i] * vet[i])
    }
  }
}