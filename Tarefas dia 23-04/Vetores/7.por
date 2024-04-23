programa {
  funcao inicio() {
    inteiro i, im = 0, pa = 0, num[15]

    para(i = 0; i < 15; i++){
      escreva("Digite um número: ")
      leia(num[i])

      se(num[i] % 2 == 0){
        pa++
      } senao {
        im++
      }
    }
    escreva("A quantidade de números pares é: ", pa)
    escreva("\nA quantidade de números impares é: ", im)
  }
}
