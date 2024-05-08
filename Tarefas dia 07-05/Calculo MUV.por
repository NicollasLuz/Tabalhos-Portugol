programa {
  funcao inicio() {
    real espaco_final, espaco_incial = 0, velocidade_incial, tempo, aceleracao

    escreva("Qual a velocidade inicial em m/s: ")
    leia(velocidade_incial)

    escreva("Qual o tempo em segundos: ")
    leia(tempo)

    escreva("Qual a acelera��o do objeto em m/s�: ")
    leia(aceleracao)

    limpa()
    aguarde()

    //Incremento 1: Explicar a f�rmula
    escreva("A f�rmula para resolver a quest�o �: S= So + vt + (a.t�) / 2")
    escreva("\nOnde:")
    escreva("\nS: Posi��o final")
    escreva("\nSo: Posi��o inicial, onde geralmente � 0")
    escreva("\nV: Velocidade inicial")
    escreva("\nT: Tempo")
    escreva("\na: Acelera��o")

    //Incremento 2: Mostrar como os valores ficam na f�rmula
    escreva("\n\nCom os valores fornecidos a f�rmula fica assim: ")
    escreva("S = ", espaco_incial, " + ", velocidade_incial, " * ", tempo, " + (", aceleracao, " * ", tempo, "�) / 2")

    //S= So+vt(a.t�)/2
    espaco_final = (espaco_incial + (velocidade_incial * tempo)) + ((aceleracao * (tempo * tempo)) / 2)

    escreva("\n\nA posi��o final do m�vel �: ", espaco_final, " metros\n")

    se(espaco_final % 2 == 0){
      escreva("O n�mero � par")
    }senao {
      escreva("O n�mero � �mpar")
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