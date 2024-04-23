programa {
  funcao inicio() {
    inteiro i, num1[5], num2[5], num3[5], soma = 0

    para(i = 0; i < 5; i++){
      escreva("Qual o número ", i + 1, ": ")
      leia(num1[i])
      escreva("Qual o número ", i + 1, ": ")
      leia(num2[i])

      num3[i] = num1[i] + num2[i]
      soma += num3[i]
      escreva("\nA soma desses dois números é: ", num3[i], "\n")
    }
    escreva("A soma de todo os números é: ", soma)
  }
}
