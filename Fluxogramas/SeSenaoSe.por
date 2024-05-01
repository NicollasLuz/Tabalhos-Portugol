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
      escreva("Tá no peso ideal em")
    } senao se (imc < 29.9){
      escreva("Tá começando a engordar em!")
    } senao se (imc < 34.9){
      escreva("Você no nível Tais Carla 1")
    } senao se (imc < 39.9) {
      escreva("Você no nível Tais Carla 2")
    } senao se (imc < 49.9){
      escreva("Você no nível Tais Carla 3")
    } senao se (imc < 59.9){
      escreva("Você no nível Tais Carla 4")
    } senao se (imc > 60){
      escreva("Você virou uma Tais Carla, parabêns")
    } 
    escreva("\nSeu imc é de ", imc)
  }
}
