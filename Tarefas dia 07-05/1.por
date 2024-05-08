programa {
  funcao inicio() {
    real desloc
    inteiro tempo
    real velo
    real kmh

    escreva("Digite a distancia percorrida em metros: ")
    leia(desloc)
    
    escreva("Digite o tempo gasto para percorrer essa distancia em segundos: ")
    leia(tempo)

    velo = desloc/tempo
    kmh = velo*3.6

    escreva("A velocidade média é: ",velo,"m/s ou ", kmh,"km/h")
  }
}