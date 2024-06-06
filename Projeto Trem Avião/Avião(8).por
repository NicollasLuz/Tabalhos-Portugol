programa {	
  inclua biblioteca Util --> ut

  inteiro opcao, fusoOrigem, fusoDestino, quantidadeDePontos
  cadeia aeroportoOrigem, aeroportoDestino
  real horaDecolagem, minutoDecolagem, velocidadeCruzeiro, distanciaTotal, tempoTotalVoo, horarioChegadaUTC, horarioChegadaLocal
  cadeia nomePontos[100]
  real distanciaPontos[100], coordenadasPontos[100]

  //Fun��o onde vai ser inicializado todos os comandos principais
  funcao inicio() {
    escreva("Bem-vindo ao aplicativo de navega��o VFR.\n")
    menuPrincipal()
  }

  //fun��o onde � exibido todas as funcionalidades do c�digo em que o c�digo executa para o usu�rio escolher  
  funcao menuPrincipal(){

    //Todos os comandos que ele pode selecionar
    escreva(" 1 - Inserir dados\n")
    escreva(" 2 - Calcular dados\n")
    escreva(" 3 - Visualizar dados\n")
    escreva(" 4 - Sair\n")
    escreva("Qual op��o voc� deseja selecionar: ")
    leia(opcao)

    limpa()

    //Escolha caso para verificar qual foi a op��o desejada pelo usu�rio
    escolha(opcao){

      //Caso ela escolha 1 ela vai para a inser��o de dados
      caso 1: 
        entradaDados()
        menuPrincipal()
      pare
      
      //Caso ela escolha 2 ela vai para a realiza��o dos calculos
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

      //caso ela escolha um n�mero que n�o seja um da lista ela volta para a sele��o de n�meros
      caso contrario:  
        escreva("\n*Op��o inv�lida, tente novamente!*\n\n")
        menuPrincipal()
      pare
    }
  }

  //Fun��o para reaizar a entrada de dados. Onde � obtida todas as informa��es para fazer os calculos
  funcao entradaDados() {

    //Todos os dados que pedimos ao usu�rio
    escreva("Insira o c�digo do aeroporto de origem: ")
    leia(aeroportoOrigem)
    escreva("Insira o c�digo do aeroporto de destino: ")
    leia(aeroportoDestino)
    escreva("Insira o fuso hor�rio GMT do aeroporto de origem: ")
    leia(fusoOrigem)
    escreva("Insira o fuso hor�rio GMT do aeroporto de destino: ")
    leia(fusoDestino)
    escreva("Insira a hora de decolagem (em UTC): ")
    leia(horaDecolagem)
    escreva("Insira os minutos de decolagem (em UTC): ")
    leia(minutoDecolagem)
    escreva("Insira a velocidade de cruzeiro em n�s (kt): ")
    leia(velocidadeCruzeiro)
    escreva("Qual a quantidade de pontos de refer�ncia que voc� quer inserir: ")
    leia(quantidadeDePontos)
    escreva("Insira os pontos de refer�ncia (nome, coordenadas, dist�ncia at� o pr�ximo ponto): \n")

    //"Para" para repertir de acordo com a quantidadade de pontos em que o usu�rio quer inserir
    para(inteiro i = 0; i < quantidadeDePontos; i++){
      escreva("Nome do ponto de refer�ncia: ")
      leia(nomePontos[i])
      escreva("Coordenadas do ponto de refer�ncia: ")
      leia(coordenadasPontos[i])
      escreva("Dist�ncia at� o pr�ximo ponto: ")
      leia(distanciaPontos[i])
    }

    //Limpar a tela para voltar para o menu principal
    limpa()
  }

  //Daqui

  //Fun��o para calcular a dist�ncia total, com base em todos os pontos de refer�ncias inseridos
  //*Deve haver ao menos 1 ponto de refer�ncia que � o aeroporto final*
  funcao real calcularDistanciaTotal() {
    real distancia = 0

    //"Para" para somar todos os pontos de refer�ncia
    para(inteiro i = 0; i < quantidadeDePontos; i++) {
      distancia = distancia + distanciaPontos[i]
    }

    //Retorna pela fun��o a dist�ncia total
    retorne distancia
  }

  /*fun��o para calcular o ETO que � o tempo estimado que um voo levar� para percorrer 
  uma determinada dist�ncia com base em sua velocidade de cruzeiro. Onde se calcula com 
  a dist�ncia dividida pela velociedade em cruzeiro*/
  funcao real calcularETO(real distancia, real velocidade) {
    retorne distancia / velocidade
  }

  /*Fun�� para poder usar horas e minutos para fazer os calculos*/
  funcao inteiro paraMinutos(inteiro horas, inteiro minutos) {
    //Transforma as horas em minutos e retorna a soma dos dois para usar uma medida s�
    retorne (horas * 60) + minutos
  }

  funcao cadeia formatarHoraMinutos(inteiro minutosTotais) {

    // Calcula a quantidade de horas inteiras
    inteiro horas = minutosTotais / 60

    // Calcula os minutos restantes ap�s dividir pelos 60 minutos de uma hora
    inteiro minutos = minutosTotais % 60

    //Inicializa a variavel para armazenar o valor obtido
    cadeia resultado = ""

    // Verifica se a quantidade de horas � menor que 10
    se (horas < 10) {
    // Se for, adiciona um zero � esquerda para manter o formato HH
      resultado = resultado + "0" + horas
    } senao {
    //Sen�o ele apenas transforma para cadeia
      resultado = resultado + horas
    }

    // Adiciona um separador de dois pontos ":" ap�s as horas
    resultado = resultado + ":"

    // Verifica se a quantidade de minutos � menor que 10
    se (minutos < 10) {
    // Se for, adiciona um zero � esquerda para manter o formato MM
      resultado = resultado + "0" + minutos
    } senao {
      //Sen�o ele apenas transforma para cadeia
      resultado = resultado + minutos
    }

    //Retorna as horas formatadas
    retorne resultado
  }

  //Fun��o onde realmente realizamos os calculos usando as fun��es acima
  funcao calculos(){

    //Usamos a fun��o de calcular a dist�ncia total para descobrir o tempo total de voo
    distanciaTotal = calcularDistanciaTotal()

    /* Calculamos o tempo todal de voo usando a dist�ncia total dividido pela 
    velocidade em cruzeiro vezes 60 para descobri em minutos*/
    tempoTotalVoo = calcularETO(distanciaTotal, velocidadeCruzeiro) * 60 // em minutos

    //Passa o horario de decolagem que esta em horas para minutos, para calcular o horario de chegada
    inteiro horarioDecolagemMinutos = paraMinutos(horaDecolagem, minutoDecolagem)

    //Calcula o horario de chegada em minutos no horario mundial
    inteiro horarioChegadaMinutosUTC = horarioDecolagemMinutos + tempoTotalVoo

    //Calcula a diferen�a de fuso em minutos
    inteiro diferencaFuso = (fusoDestino - fusoOrigem) * 60

    //Calcula a hora de chagada local em minutos
    inteiro horarioChegadaMinutosLocal = horarioChegadaMinutosUTC + diferencaFuso

    //Atribui o valor das horas de chegada a outras variaveis para usar na formata��o
    horarioChegadaUTC = horarioChegadaMinutosUTC
    horarioChegadaLocal = horarioChegadaMinutosLocal
  }
  //At� aqui
  //� onde realizamos os calculos

  //Fun��o para exibir todos os dados calculados
  funcao vizualizarDados(){

    //Exibe o tempo de voo em cada trecho 
    escreva("Tempo de voo de cada trecho: \n")

    //"Para" para exibir todas as dist�ncias dentro do vetor
    para(inteiro i = 0; i < quantidadeDePontos; i++) {
      escreva("Trecho ", i + 1, ": ", calcularETO(distanciaPontos[i], velocidadeCruzeiro), " horas\n")
    }

    //Exibe a dist�ncia total do voo
    escreva("Dist�ncia total do voo: ", distanciaTotal, " milhas\n")

    //Exibe o tempo total do voo em horas
    escreva("Tempo total de voo: ", tempoTotalVoo / 60, " horas\n")

    //Exibe a hora de chegada em horario mundial e horario local 
    escreva("Hor�rio de chegada em UTC: ", formatarHoraMinutos(horarioChegadaUTC), "\n")
    escreva("Hor�rio de chegada local: ", formatarHoraMinutos(horarioChegadaLocal), "\n")

    //Chama a fun��o continuar para o usu�rio continuar quando ele quiser
    continuar()

    //Limpar a tela para voltar para o menu principal
    limpa()
  }

  //fun��o que exibe o finalizando c�digo como se estivesse carregando
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
  Fun��o que tem por unica finaliddade solicitar ao usuario que tecle 
  alguma tecla para continuar um determinado processo
  */
  funcao continuar(){
    cadeia enter
    escreva("Pressione ENTER para continuar ...\n") 
    leia(enter)  
  }
}
