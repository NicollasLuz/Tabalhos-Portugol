/*
7 - Escreva um algoritmo que use vetores para armazenar 
as distâncias percorridas por um atleta em diferentes dias de 
treinamento e depois calcule a distância total percorrida.
*/
programa {
  funcao inicio() {
    real tamanho

    escreva("Qual o tamanho de treinos que você quer registrar: ")
    leia(tamanho)

    real distancias[tamanho], total = 0

    para(real i = 0; i != tamanho; i++){
      escreva("Qual foi a distancia percorrida no ", i + 1, "° treino: ")
      leia(distancias[i])

      total += distancias[i]
    }
    escreva("A distância total percorrida pelo atleta é de: ", total)
  }
}
