programa {
  funcao inicio() {
    real peso, altura, imc
    
    escreva("Qual sua altura: ")
    leia(altura)

    escreva("Qual seu peso: ")
    leia(peso)

    imc = peso / (altura * altura)

    se(imc < 18.5){
      escreva("Esqueleto vivo")
    } senao se (imc < 25){
      escreva("T� no peso ideal em")
    } senao se (imc < 29.9){
      escreva("T� come�ando a engordar em!")
    } senao se (imc < 34.9){
      escreva("Voc� no n�vel Tais Carla 1")
    } senao se (imc < 39.9) {
      escreva("Voc� no n�vel Tais Carla 2")
    } senao se (imc < 49.9){
      escreva("Voc� no n�vel Tais Carla 3")
    } senao se (imc < 59.9){
      escreva("Voc� no n�vel Tais Carla 4")
    } senao se (imc > 60){
      escreva("Voc� virou uma Tais Carla, parab�ns")
    } 
    escreva("\nSeu imc � de ", imc)
  }
}
