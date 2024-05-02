/*
Escreva um algoritmo que use vetores para armazenar 
as distâncias percorridas por um atleta em diferentes 
dias de treinamento e depois calcule a distância total 
percorrida. 
*/
programa {
  funcao inicio() {
    real dt_total = 0, i, dias
    caracter medida
    logico sabo

    escreva("Qual foi a quantidade de dias em que você quer registrar: ")
    leia(dias)

    real dt[dias]

    escreva("Como você quer registrar milhas ou Km: ")
    leia(medida)

    sabo = (medida == 'm')

    para(i = 0; i < dias; i++){
    escreva("Qual foi a distancia percorrida no ", i + 1, "° dia de treino: ")
    leia(dt[i])

    dt_total += dt[i]
    }

    se(sabo){
      escreva("A distancia total percorrida em milhas é: ", dt_total)
      escreva("\nA distancia total percorrida em quilômetros é: ", dt_total / 0.6214)
    } senao {
      escreva("A distancia total percorrida em quilômetros é: ", dt_total)
      escreva("\nA distancia total percorrida em milhas é: ", dt_total * 0.6214)
    }
  }
}
