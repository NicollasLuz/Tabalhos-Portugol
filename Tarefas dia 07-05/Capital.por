programa {
  funcao inicio() {
    cadeia capitais[10] = {"Paris", "Kingston", "Bras�lia", "Madrid", "Moscou", "Berlim", "Caracas", "Ottawa", "Jerusal�m", "Londres"}
    inteiro pais 
    cadeia recomeco
    escreva("Digite o n�mero correspondente ao pa�s que deseja saber a capital: \n0. Fran�a \n1. Jamaica \n2. Brasil \n3. Espanha \n4. R�ssia \n5. Alemanha \n6. Venezuela \n7. Canad� \n8. Israel \n9. Inglaterra\n")
    leia(pais)

    enquanto(recomeco != "n"){
      escreva("A capital do pa�s escolhido �: ", capitais[pais])

      escreva("\nDeseja tentar novamente? \n Sim (s) \n N�o (n) \n")
      leia(recomeco)

      se(recomeco == "s"){
        escreva("Digite o n�mero correspondente ao pa�s que deseja saber a capital: \n0. Fran�a \n1. Jamaica \n2. Brasil \n3. Espanha \n4. R�ssia \n5. Alemanha \n6. Venezuela \n7. Canad� \n8. Israel \n9. Inglaterra\n")
    leia(pais)
      }
    }
  }
}
