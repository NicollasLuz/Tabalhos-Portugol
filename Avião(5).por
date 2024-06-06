programa {	
  inclua biblioteca Util --> ut

  inteiro opcao, fusoOrigem, fusoDestino, quantidadeDePontos
  cadeia aeroportoOrigem, aeroportoDestino
  real horarioDecolagemUTC, velocidadeCruzeiro, distanciaTotal, tempoTotalVoo, horarioChegadaUTC, horarioChegadaLocal
  cadeia nomePontos[50]
  real distanciaPontos[50], coordenadasPontos[50]
  caracter continuar = ' '

  funcao inicio() {
    escreva("Seja bem vindo!\n")
    escolherOpcao()
  }
  
  funcao escolherOpcao() {
    menuPrincipal()
  }

  funcao menuPrincipal(){
    escreva("Qual opção você deseja selecionar?\n")
    escreva(" 1 - Inserir dados\n")
    escreva(" 2 - Calcular dados\n")
    escreva(" 3 - Visualizar dados\n")
    escreva(" 4 - Sair\n")
    leia(opcao)

    limpa()

    escolha(opcao){
      caso 1: 
        escreva("Qual a quantidade de pontos de referência que você quer inserir: ")
        leia(quantidadeDePontos)
        entradaDados()
        menuPrincipal()
      
      caso 2: 
        calculos()
        menuPrincipal()

      caso 3: 
        vizualizarDados()
        menuPrincipal()

      caso 4: 
        finalizarPrograma()

      caso contrario:  
        escreva("\n*Opção inválida, tente novamente!*\n\n")
        menuPrincipal()
    }
  }

  funcao entradaDados() {
    escreva("Insira o código do aeroporto de origem: ")
    leia(aeroportoOrigem)
    escreva("Insira o código do aeroporto de destino: ")
    leia(aeroportoDestino)
    escreva("Insira o fuso horário GMT do aeroporto de origem: ")
    leia(fusoOrigem)
    escreva("Insira o fuso horário GMT do aeroporto de destino: ")
    leia(fusoDestino)
    escreva("Insira o horário de decolagem em UTC: ")
    leia(horarioDecolagemUTC)
    escreva("Insira a velocidade de cruzeiro em nós (kt): ")
    leia(velocidadeCruzeiro)
    escreva("Insira os pontos de referência (nome, coordenadas, distância até o próximo ponto): \n")

    para(inteiro i = 0; i < quantidadeDePontos; i++){
      escreva("Nome do ponto de referência: ")
      leia(nomePontos[i])
      escreva("Coordenadas do ponto de referência: ")
      leia(coordenadasPontos[i])
      escreva("Distância até o próximo ponto: ")
      leia(distanciaPontos[i])
    }

    limpa()
  }

  funcao real calcularDistanciaTotal() {
    real distancia = 0
    para(inteiro i = 0; i < quantidadeDePontos; i++) {
      distancia = distancia + distanciaPontos[i]
    }
    retorne distancia
  }

  funcao real calcularETO(real distancia, real velocidade) {
    retorne distancia / velocidade
  }

  funcao calculos(){
    distanciaTotal = calcularDistanciaTotal()
    tempoTotalVoo = calcularETO(distanciaTotal, velocidadeCruzeiro)
    horarioChegadaUTC = horarioDecolagemUTC + tempoTotalVoo
    horarioChegadaLocal = horarioChegadaUTC + fusoDestino - fusoOrigem
  }

  funcao vizualizarDados(){
    escreva("Tempo de voo de cada trecho: \n")
    para(inteiro i = 0; i < quantidadeDePontos; i++) {
      escreva("Trecho ", i + 1, ": ", calcularETO(distanciaPontos[i], velocidadeCruzeiro), " horas\n")
    }
    escreva("Distância total do voo: ", distanciaTotal, " milhas\n")
    escreva("Tempo total de voo: ", tempoTotalVoo, " horas\n")
    escreva("Horário de chegada em UTC: ", horarioChegadaUTC, "\n")
    escreva("Horário de chegada local: ", horarioChegadaLocal, "\n")
  }

  funcao finalizarPrograma(){
    para(inteiro j = 0; j < 4; j++){
      escreva("Finalizando programa\n")
      limpa()
      escreva("Finalizando programa.\n")
      ut.aguarde(500)
      limpa()
      escreva("Finalizando programa..\n")
      ut.aguarde(500)
      limpa()
      escreva("Finalizando programa...\n")
      ut.aguarde(500)
      limpa()
    }
  }
}
