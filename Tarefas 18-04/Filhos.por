programa {
  funcao inicio() {
    inteiro tanto = 0, filhos, maisFi = 0, menosFi = 0

    escreva("==================================\n")
    escreva("| C O N T A D O R DE F I L H O S |\n")
    escreva("==================================\n")

    enquanto(tanto < 20){
      escreva("Qual a quantidade de filhos  que você tem: ")
      leia(filhos)

      se(filhos <= 2){
        menosFi++
      } senao {
        maisFi++
      }
      tanto++
    }
  escreva("A quantidade de pessoas com 2 ou menos filhos é de: ", menosFi)
  escreva("\nA quantidade de pessoas com mais de 2 filhos é de: ", maisFi)
  }
}