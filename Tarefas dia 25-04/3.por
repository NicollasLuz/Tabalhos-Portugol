/*
3 - Escreva um algoritmo que use a estrutura de "escolha caso" 
para determinar o tipo de dieta a ser seguida por um indivíduo 
com base em suas necessidades nutricionais e objetivos de saúde. 
Fonte: https://cuidadospelavida.com.br/blog/post/no-dia-da-nutricao-conheca-6-tipos-de-dietas-2 
*/
programa {
  funcao inicio() {
    inteiro dieta

    escreva("Qual o seu objetivo com a dieta? ")
    escreva("\n1 - Dieta para emagrecer ")
    escreva("\n2 - Dieta para problemas no coração ")
    escreva("\n3 - Dieta para eliminar alimentos \n    ultraprocessados da alimentação ")
    escreva("\n4 - Dieta de consumo de gorduras saudaveis")
    escreva("\n5 - Dieta para ganho de massa muscular")
    escreva("\n6 - Dieta com consumo de alimentos orgânicos\n")
    leia(dieta)

    escolha(dieta){
      caso 1:
        escreva("Você precisa fazer a dieta Low Carb")
      pare
      caso 2:
        escreva("Você precisa fazer a dieta DASH")
      pare
      caso 3:
        escreva("Você precisa fazer a dieta Paleolítica")
      pare
      caso 4:
        escreva("Você precisa fazer a dieta Cetogênica")
      pare
      caso 5:
        escreva("Você precisa fazer a dieta Dukan")
      pare
      caso 6:
        escreva("Você precisa fazer a dieta Mediterrânea")
      pare
      caso contrario:
        escreva("A opção escolhida não é válida")
      pare
    }
  }
}
