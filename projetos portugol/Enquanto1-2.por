programa {
  funcao inicio() {
    real numero = 1, i = 0, total = 0
    cadeia continuar

    enquanto(continuar != 'n'){
      escreva("Digite um valor: ")
      leia(numero)
      i++
      escreva("deseja continuar <s/n>")
      se(numero == 0){
        continuar = "n"
      }
      leia(continuar)
      total = numero + total
    }
    escreva("A quantidade de n�meros digitados foi ", i)
    se(i == 1){
      escreva("\nComo apenas um n�mero foi digitado o valor dele �: ", numero)
    } senao {
    escreva("\nE a soma entre os ", i, " n�meros digitados �: ", total)
    }
  }
}
