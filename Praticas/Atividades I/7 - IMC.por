programa {
  funcao inicio() {
    real altura, imc

    escreva("Qual a sua altura em cm: ")
    leia(altura)
    
    altura = altura / 100

    imc = (72.7 * altura) - 58

    escreva("O seu peso ideal é de: ", imc)
  }
}
