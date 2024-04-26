programa {
  funcao inicio() {
    real a, b, c

    escreva("Qal o valor de a: ")
    leia(a)

    escreva("Qual o valor de b: ")
    leia(b)

    c = a
    a = b
    b = c

    escreva("O valor de a agora é: ", a)
    escreva("\nO valor de b agora é: ", b)
  }
}
