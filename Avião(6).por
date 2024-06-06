programa {	
  inclua biblioteca Util --> ut

  inteiro opcao, fusoOrigem, fusoDestino, quantidadeDePontos
  cadeia aeroportoOrigem, aeroportoDestino
  real horaDecolagem, minutoDecolagem, velocidadeCruzeiro, distanciaTotal, tempoTotalVoo, horarioChegadaUTC, horarioChegadaLocal
  cadeia nomePontos[100]
  real distanciaPontos[100], coordenadasPontos[100]

  funcao inicio() {
    escreva("Bem-vindo ao aplicativo de navegação VFR.\n")
    menuPrincipal()
  }

  funcao menuPrincipal(){
    escreva(" 1 - Inserir dados\n")
    escreva(" 2 - Calcular dados\n")
    escreva(" 3 - Visualizar dados\n")
    escreva(" 4 - Sair\n")
    escreva("Qual opção você deseja selecionar: ")
    leia(opcao)

    limpa()

    escolha(opcao){
      caso 1: 
        escreva("Qual a quantidade de pontos de referência que você quer inserir: ")
        leia(quantidadeDePontos)
        entradaDados()
        menuPrincipal()
      pare
      
      caso 2: 
        calculos()
        menuPrincipal()
      pare

      caso 3: 
        vizualizarDados()
        menuPrincipal()
      pare

      caso 4: 
        finalizarPrograma()
      pare

      caso contrario:  
        escreva("\n*Opção inválida, tente novamente!*\n\n")
        menuPrincipal()
      pare
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
    escreva("Insira a hora de decolagem (em UTC): ")
    leia(horaDecolagem)
    escreva("Insira os minutos de decolagem (em UTC): ")
    leia(minutoDecolagem)
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

  funcao inteiro paraMinutos(real horas, real minutos) {
    retorne (horas * 60) + minutos
  }

  funcao cadeia formatarHoraMinutos(real minutosTotais) {
    inteiro horas = minutosTotais / 60
    inteiro minutos = minutosTotais % 60.0
    cadeia resultado = ""
    se (horas < 10) {
      resultado = resultado + "0" + (horas)
    } senao {
      resultado = resultado + (horas)
    }
    resultado = resultado + ":"
    se (minutos < 10) {
      resultado = resultado + "0" + (minutos)
    } senao {
      resultado = resultado + (minutos)
    }
    retorne resultado
  }

  funcao calculos(){
    distanciaTotal = calcularDistanciaTotal()
    tempoTotalVoo = calcularETO(distanciaTotal, velocidadeCruzeiro) * 60 // em minutos
    inteiro horarioDecolagemMinutos = paraMinutos(horaDecolagem, minutoDecolagem)
    inteiro horarioChegadaMinutosUTC = horarioDecolagemMinutos + tempoTotalVoo
    inteiro diferencaFuso = (fusoDestino - fusoOrigem) * 60
    inteiro horarioChegadaMinutosLocal = horarioChegadaMinutosUTC + diferencaFuso
    horarioChegadaUTC = horarioChegadaMinutosUTC
    horarioChegadaLocal = horarioChegadaMinutosLocal
  }

  funcao vizualizarDados(){
    escreva("Tempo de voo de cada trecho: \n")
    para(inteiro i = 0; i < quantidadeDePontos; i++) {
      escreva("Trecho ", i + 1, ": ", calcularETO(distanciaPontos[i], velocidadeCruzeiro), " horas\n")
    }
    escreva("Distância total do voo: ", distanciaTotal, " milhas\n")
    escreva("Tempo total de voo: ", tempoTotalVoo / 60, " horas\n")
    escreva("Horário de chegada em UTC: ", formatarHoraMinutos(horarioChegadaUTC), "\n")
    escreva("Horário de chegada local: ", formatarHoraMinutos(horarioChegadaLocal), "\n")

    continuar()
    limpa()
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

  funcao continuar(){
    cadeia enter
    escreva("Pressione ENTER para continuar ...\n") 
    leia(enter)  
  }

}
