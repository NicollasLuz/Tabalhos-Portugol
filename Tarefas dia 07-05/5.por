programa {
  funcao inicio() {
    inteiro opcao
    inteiro carb, oxi, hidro, enxo
    inteiro et, gas, met

    escreva("Escolha um composto quimico \n 1- Etanol (CH3CH2OH) \n 2- Gás Sulfídrico (H2S)\n 3- Metano (CH4) \n")
    leia(opcao)

    escolha(opcao){
      caso 1:
        escreva("Digite o valor da massa do Carbono: ")
        leia(carb)
        escreva("Digite o valor da massa do Hidrogênio: ")
        leia(hidro)
        escreva("Digite o valor da massa do Oxigênio: ")
        leia(oxi)

        et = hidro*6 + carb*2 + oxi

        escreva("O valor da massa molar do Etanol é: ",et, "g/mol")
        pare
      caso 2:
        escreva("Digite o valor da massa do Hidrogênio: ")
        leia(hidro)
        escreva("Digite o valor da massa do Enxofre: ")
        leia(enxo)

        gas = hidro*2 + enxo

        escreva("O valor da massa molar do Gás Sulfídrico é: ",gas, "g/mol")
        pare
      
      caso 3:
        escreva("Digite o valor da massa do Carbono: ")
        leia(carb)
        escreva("Digite o valor da massa do Hidrogênio: ")
        leia(hidro)

        met = carb + hidro*4

        escreva("O valor da massa molar do Metano é: ",met, "g/mol")
        pare
    }
  }
}