programa {
  funcao inicio() {
    inteiro n, i

    escreva("Digite o número para saber a tabuada: ")
    leia(n)
    
    escreva("A tabuada do ", n, " é: \n")

    para(i = 0; i < 10; i++){
      escreva(n, " x ", (i + 1), " = ", n * (i + 1), "\n")
    }
  }
}