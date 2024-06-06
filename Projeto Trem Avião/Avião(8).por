programa {	
  inclua biblioteca Util --> ut

  inteiro opcao, fusoOrigem, fusoDestino, quantidadeDePontos
  cadeia aeroportoOrigem, aeroportoDestino
  real horaDecolagem, minutoDecolagem, velocidadeCruzeiro, distanciaTotal, tempoTotalVoo, horarioChegadaUTC, horarioChegadaLocal
  cadeia nomePontos[100]
  real distanciaPontos[100], coordenadasPontos[100]

  //Função onde vai ser inicializado todos os comandos principais
  funcao inicio() {
    escreva("Bem-vindo ao aplicativo de navegação VFR.\n")
    menuPrincipal()
  }

  //função onde é exibido todas as funcionalidades do código em que o código executa para o usuário escolher  
  funcao menuPrincipal(){

    //Todos os comandos que ele pode selecionar
    escreva(" 1 - Inserir dados\n")
    escreva(" 2 - Calcular dados\n")
    escreva(" 3 - Visualizar dados\n")
    escreva(" 4 - Sair\n")
    escreva("Qual opção você deseja selecionar: ")
    leia(opcao)

    limpa()

    //Escolha caso para verificar qual foi a opção desejada pelo usuário
    escolha(opcao){

      //Caso ela escolha 1 ela vai para a inserção de dados
      caso 1: 
        entradaDados()
        menuPrincipal()
      pare
      
      //Caso ela escolha 2 ela vai para a realização dos calculos
      caso 2: 
        calculos()
        menuPrincipal()
      pare

      //Caso ela escolha 3 ela vai pra janelinha que exibe todos os resultados
      caso 3: 
        vizualizarDados()
        menuPrincipal()
      pare

      //Caso ela escolha 4 ela vai finalizar o programa
      caso 4: 
        finalizarPrograma()
      pare

      //caso ela escolha um número que não seja um da lista ela volta para a seleção de números
      caso contrario:  
        escreva("\n*Opção inválida, tente novamente!*\n\n")
        menuPrincipal()
      pare
    }
  }

  //Função para reaizar a entrada de dados. Onde é obtida todas as informações para fazer os calculos
  funcao entradaDados() {

    //Todos os dados que pedimos ao usuário
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
    escreva("Qual a quantidade de pontos de referência que você quer inserir: ")
    leia(quantidadeDePontos)
    escreva("Insira os pontos de referência (nome, coordenadas, distância até o próximo ponto): \n")

    //"Para" para repertir de acordo com a quantidadade de pontos em que o usuário quer inserir
    para(inteiro i = 0; i < quantidadeDePontos; i++){
      escreva("Nome do ponto de referência: ")
      leia(nomePontos[i])
      escreva("Coordenadas do ponto de referência: ")
      leia(coordenadasPontos[i])
      escreva("Distância até o próximo ponto: ")
      leia(distanciaPontos[i])
    }

    //Limpar a tela para voltar para o menu principal
    limpa()
  }

  //Daqui

  //Função para calcular a distância total, com base em todos os pontos de referências inseridos
  //*Deve haver ao menos 1 ponto de referência que é o aeroporto final*
  funcao real calcularDistanciaTotal() {
    real distancia = 0

    //"Para" para somar todos os pontos de referência
    para(inteiro i = 0; i < quantidadeDePontos; i++) {
      distancia = distancia + distanciaPontos[i]
    }

    //Retorna pela função a distância total
    retorne distancia
  }

  /*função para calcular o ETO que é o tempo estimado que um voo levará para percorrer 
  uma determinada distância com base em sua velocidade de cruzeiro. Onde se calcula com 
  a distância dividida pela velociedade em cruzeiro*/
  funcao real calcularETO(real distancia, real velocidade) {
    retorne distancia / velocidade
  }

  /*FunçÕ para poder usar horas e minutos para fazer os calculos*/
  funcao inteiro paraMinutos(inteiro horas, inteiro minutos) {
    //Transforma as horas em minutos e retorna a soma dos dois para usar uma medida só
    retorne (horas * 60) + minutos
  }

  funcao cadeia formatarHoraMinutos(inteiro minutosTotais) {

    // Calcula a quantidade de horas inteiras
    inteiro horas = minutosTotais / 60

    // Calcula os minutos restantes após dividir pelos 60 minutos de uma hora
    inteiro minutos = minutosTotais % 60

    //Inicializa a variavel para armazenar o valor obtido
    cadeia resultado = ""

    // Verifica se a quantidade de horas é menor que 10
    se (horas < 10) {
    // Se for, adiciona um zero à esquerda para manter o formato HH
      resultado = resultado + "0" + horas
    } senao {
    //Senão ele apenas transforma para cadeia
      resultado = resultado + horas
    }

    // Adiciona um separador de dois pontos ":" após as horas
    resultado = resultado + ":"

    // Verifica se a quantidade de minutos é menor que 10
    se (minutos < 10) {
    // Se for, adiciona um zero à esquerda para manter o formato MM
      resultado = resultado + "0" + minutos
    } senao {
      //Senão ele apenas transforma para cadeia
      resultado = resultado + minutos
    }

    //Retorna as horas formatadas
    retorne resultado
  }

  //Função onde realmente realizamos os calculos usando as funções acima
  funcao calculos(){

    //Usamos a função de calcular a distância total para descobrir o tempo total de voo
    distanciaTotal = calcularDistanciaTotal()

    /* Calculamos o tempo todal de voo usando a distância total dividido pela 
    velocidade em cruzeiro vezes 60 para descobri em minutos*/
    tempoTotalVoo = calcularETO(distanciaTotal, velocidadeCruzeiro) * 60 // em minutos

    //Passa o horario de decolagem que esta em horas para minutos, para calcular o horario de chegada
    inteiro horarioDecolagemMinutos = paraMinutos(horaDecolagem, minutoDecolagem)

    //Calcula o horario de chegada em minutos no horario mundial
    inteiro horarioChegadaMinutosUTC = horarioDecolagemMinutos + tempoTotalVoo

    //Calcula a diferença de fuso em minutos
    inteiro diferencaFuso = (fusoDestino - fusoOrigem) * 60

    //Calcula a hora de chagada local em minutos
    inteiro horarioChegadaMinutosLocal = horarioChegadaMinutosUTC + diferencaFuso

    //Atribui o valor das horas de chegada a outras variaveis para usar na formatação
    horarioChegadaUTC = horarioChegadaMinutosUTC
    horarioChegadaLocal = horarioChegadaMinutosLocal
  }
  //Até aqui
  //É onde realizamos os calculos

  //Função para exibir todos os dados calculados
  funcao vizualizarDados(){

    //Exibe o tempo de voo em cada trecho 
    escreva("Tempo de voo de cada trecho: \n")

    //"Para" para exibir todas as distâncias dentro do vetor
    para(inteiro i = 0; i < quantidadeDePontos; i++) {
      escreva("Trecho ", i + 1, ": ", calcularETO(distanciaPontos[i], velocidadeCruzeiro), " horas\n")
    }

    //Exibe a distância total do voo
    escreva("Distância total do voo: ", distanciaTotal, " milhas\n")

    //Exibe o tempo total do voo em horas
    escreva("Tempo total de voo: ", tempoTotalVoo / 60, " horas\n")

    //Exibe a hora de chegada em horario mundial e horario local 
    escreva("Horário de chegada em UTC: ", formatarHoraMinutos(horarioChegadaUTC), "\n")
    escreva("Horário de chegada local: ", formatarHoraMinutos(horarioChegadaLocal), "\n")

    //Chama a função continuar para o usuário continuar quando ele quiser
    continuar()

    //Limpar a tela para voltar para o menu principal
    limpa()
  }

  //função que exibe o finalizando código como se estivesse carregando
  funcao finalizarPrograma(){
    para(inteiro j = 0; j < 2; j++){
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

  /*
  Função que tem por unica finaliddade solicitar ao usuario que tecle 
  alguma tecla para continuar um determinado processo
  */
  funcao continuar(){
    cadeia enter
    escreva("Pressione ENTER para continuar ...\n") 
    leia(enter)  
  }
}
