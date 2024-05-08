programa {
  funcao inicio() {
    real espaco_final, espaco_incial = 0, velocidade_incial, tempo, aceleracao

    escreva("Qual a velocidade inicial em m/s: ")
    leia(velocidade_incial)

    escreva("Qual o tempo em segundos: ")
    leia(tempo)

    escreva("Qual a aceleração do objeto em m/s²: ")
    leia(aceleracao)

    limpa()
    aguarde()

    //Incremento 1: Explicar a fórmula
    escreva("A fórmula para resolver a questão é: S= So + vt + (a.t²) / 2")
    escreva("\nOnde:")
    escreva("\nS: Posição final")
    escreva("\nSo: Posição inicial, onde geralmente é 0")
    escreva("\nV: Velocidade inicial")
    escreva("\nT: Tempo")
    escreva("\na: Aceleração")

    //Incremento 2: Mostrar como os valores ficam na fórmula
    escreva("\n\nCom os valores fornecidos a fórmula fica assim: ")
    escreva("S = ", espaco_incial, " + ", velocidade_incial, " * ", tempo, " + (", aceleracao, " * ", tempo, "²) / 2")

    //S= So+vt(a.t²)/2
    espaco_final = (espaco_incial + (velocidade_incial * tempo)) + ((aceleracao * (tempo * tempo)) / 2)

    escreva("\n\nA posição final do móvel é: ", espaco_final, " metros\n")

    se(espaco_final % 2 == 0){
      escreva("O número é par")
    }senao {
      escreva("O número é ímpar")
    }
  }

  funcao aguarde(){
  inteiro i = 0
  enquanto(i != 6){
  escreva("Processando a conta\n")
  ut.aguarde(500)
  limpa()
  escreva("Processando a conta .\n")
  ut.aguarde(500)
  limpa()
  escreva("Processando a conta ..\n")
  ut.aguarde(500)
  limpa()
  escreva("Processando a conta ...\n")    
  ut.aguarde(500)
  limpa()
  i++
    } 
  }
}