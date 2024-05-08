programa {
  funcao inicio() {
    cadeia capitais[10] = {"Paris", "Kingston", "Brasília", "Madrid", "Moscou", "Berlim", "Caracas", "Ottawa", "Jerusalém", "Londres"}
    inteiro pais 
    cadeia recomeco
    escreva("Digite o número correspondente ao país que deseja saber a capital: \n0. França \n1. Jamaica \n2. Brasil \n3. Espanha \n4. Rússia \n5. Alemanha \n6. Venezuela \n7. Canadá \n8. Israel \n9. Inglaterra\n")
    leia(pais)

    enquanto(recomeco != "n"){
      escreva("A capital do país escolhido é: ", capitais[pais])

      escreva("\nDeseja tentar novamente? \n Sim (s) \n Não (n) \n")
      leia(recomeco)

      se(recomeco == "s"){
        escreva("Digite o número correspondente ao país que deseja saber a capital: \n0. França \n1. Jamaica \n2. Brasil \n3. Espanha \n4. Rússia \n5. Alemanha \n6. Venezuela \n7. Canadá \n8. Israel \n9. Inglaterra\n")
    leia(pais)
      }
    }
  }
}
