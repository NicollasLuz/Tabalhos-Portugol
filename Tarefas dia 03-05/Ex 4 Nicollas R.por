programa {
  funcao inicio() {
    inteiro i, vet[5], soma = 0

    para(i = 0; i < 5; i++){
      escreva("Digite um numero: ")
      leia(vet[i])

      soma += vet[i]
    }

    escreva(vet[0], " + ",vet[1], " + ",vet[2], " + ",vet[3], " + ",vet[4], " = ", soma)
  }
}