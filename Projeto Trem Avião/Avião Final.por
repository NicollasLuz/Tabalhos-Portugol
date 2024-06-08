programa {	
  inclua biblioteca Util --> ut
  inclua biblioteca Texto --> tx

  inteiro opcao, fusoOrigem = 0, fusoDestino = 0, quantidadeDePontos, horaDecolagem = 0, minutoDecolagem = 0, horarioChegadaUTC, horarioChegadaLocal, tempoTotalVoo, jaPassouPor = 0
  cadeia aeroportoOrigem = " ", aeroportoDestino = " "
  real velocidadeCruzeiro, distanciaTotal
  cadeia nomePontos[100]
  real distanciaPontos[100], coordenadasPontos[100]

  //Fun��o onde vai ser inicializado todos os comandos principais
  funcao inicio() {
    escreva("Bem-vindo ao aplicativo de navega��o VFR.\n")
    menuPrincipal()
  }

  //Fun��o para mostrar todas as funcionalidades do c�digo 
  funcao funcoes(){
    //Todos os comandos que ele pode selecionar
    escreva(" 1 - Inserir dados\n")
    escreva(" 2 - Calcular dados\n")
    escreva(" 3 - Visualizar dados\n")
    escreva(" 4 - Sair\n")
    escreva("Qual op��o voc� deseja selecionar: ")
    leia(opcao)
  }

  //fun��o onde � analizado a op��o que ele escolheu  
  funcao menuPrincipal(){

    funcoes()
    limpa()

    //Escolha caso para verificar qual foi a op��o desejada pelo usu�rio
    escolha(opcao){

      //Caso ela escolha 1 ela vai para a inser��o de dados
      caso 1: 
        insercao()
      pare
      
      //Caso ela escolha 2 ela vai para a realiza��o dos calculos
      caso 2:
        calc()
      pare

      //Caso ela escolha 3 ela vai pra janelinha que exibe todos os resultados
      caso 3: 
        visualizamento()
      pare

      //Caso ela escolha 4 ela vai finalizar o programa
      caso 4: 
        finalizarPrograma()
      pare

      //caso ela escolha um n�mero que n�o seja um da lista ela volta para a sele��o de n�meros
      caso contrario:  

        //Avisa que a op��o inserida � inv�lida e que � para ele tentar novamente
        escreva("\n*Op��o inv�lida, tente novamente!*\n\n")

        //Retorna ao menu principal
        menuPrincipal()
      pare
    }
  }
  
  //Fun��o para fazer tudo que acontece quando o usu�rio seleciona inserir dados
  funcao insercao(){

    //Exibe a fun��o onde esta a entrada de dados
    entradaDados()

    //Adiciona 1 para jaPssouPor para desbloquear os calculos
    jaPassouPor = 1

    //Volta ao menu principal
    menuPrincipal()
  }

  //Fun��o para fazer tudo que acontece quando o usu�rio seleciona calcular dados e validar se � poss�vel
  funcao calc(){

    //Condi��o para saber se ele j� passou pela inser��o de dados
    se(jaPassouPor != 1){

      //Avisa que � nescessario inserir os dados
      escreva("Fa�a a inser��o de dados primeiro!\n")

      //Fun��o para quando o usu�rio terminar de ler ele apertar enter e seguir
      continuar()

      //Limpa a tela
      limpa()
    } senao{
      calculos()

      //Adiciona 2 para jaPssouPor para desbloquear os calculos
      jaPassouPor = 2 

      //Exibe a fun��o calculando para fazer a contagem "regressiva" de calculando 
      calculando()
    }

    //Volta ao menu principal
    menuPrincipal()
  }

  //Fun��o para fazer tudo que acontece quando o usu�rio seleciona visualizar dados e validar se � poss�vel
  funcao visualizamento(){

    //Condi��o para saber se ele j� passou pelo calculo de dados
    se(jaPassouPor < 2){

      //Avisa que � nescessario inserir os dados
      escreva("Fa�a a inser��o ou calculo de dados primeiro!\n")

      //Fun��o para quando o usu�rio terminar de ler ele apertar enter e seguir
      continuar()

      //Limpa a tela
      limpa()
    } senao {

      //Caso ele j� tenha passador por calculos � exibido os dados
      vizualizarDados()
    }

    //Volta ao menu principal
    menuPrincipal()
  }

  //Fun��o para reaizar a entrada de dados. Onde � obtida todas as informa��es para fazer os calculos
  funcao entradaDados() {

    //Todos os dados que pedimos ao usu�rio
    validacaoDeCodigoAeroporto("Insira o c�digo do aeroporto de origem: ", aeroportoOrigem, 1)

    validacaoDeCodigoAeroporto("Insira o c�digo do aeroporto de destino: ", aeroportoDestino , 2)
    limpa()

    validacaoDeHorario("Insira a hora de decolagem (em UTC): ", horaDecolagem, minutoDecolagem)
    limpa()

    validacaoFusoHorario("Insira o fuso hor�rio GMT do aeroporto de origem: ", fusoOrigem, 1)

    validacaoFusoHorario("Insira o fuso hor�rio GMT do aeroporto de destino: ", fusoDestino, 2)
    limpa()

    escreva("Insira a velocidade de cruzeiro em n�s (kt): ")
    leia(velocidadeCruzeiro)
    limpa()

    escreva("Qual a quantidade de pontos de refer�ncia que voc� quer inserir: ")
    leia(quantidadeDePontos)

    se(quantidadeDePontos <= 0) {
      escreva("Insira a dist�ncia total do percurso: ")
      leia(distanciaPontos[0])
      quantidadeDePontos =+ 1
    } senao {

      escreva("Insira os pontos de refer�ncia (nome, coordenadas, dist�ncia at� o pr�ximo ponto): \n")

      //"Para" para repertir de acordo com a quantidadade de pontos em que o usu�rio quer inserir
      para(inteiro i = 0; i < quantidadeDePontos; i++){
        escreva("Nome do ponto de refer�ncia: ")
        leia(nomePontos[i])

        escreva("Coordenadas do ponto de refer�ncia: ")
        leia(coordenadasPontos[i])

        validacaoPontoDeReferencia("Dist�ncia at� o pr�ximo ponto: ", distanciaPontos[i], i)
      }
    }

    //Limpar a tela para voltar para o menu principal
    limpa()
  }

  /*
  Fun��o onde � feita a valida��o dos c�digos de aeroporto, onde os par�metros texto � 
  o que o sistema pede para o usu�rio inserir, o c�digo � o que o usu�rio vai digitar e 
  passar � para saber a qual vari�vel o sistema deve atribuir o valor, se for 1 � para o
  aeroporto de origem se for 2 � o aeroporto de destino
   */
  funcao validacaoDeCodigoAeroporto(cadeia texto, cadeia codigo, inteiro passar){

    //Tamanho � o tamanho do c�digo inserido para saber o se � v�lido
    inteiro tamanho

    //Digito � pra saber se o primeiro digito que o usu�rio inseriu � de acordo para validar
    caracter digito

    //Fa�a para repetir at� que seja inserido um c�digo v�lido
    faca{
      //Exibe o texto passado pelo sistema e l� a vari�vel que � o c�digo do aeroporto
      escreva(texto)
      leia(codigo)

      //Usa a biblioteca Texto para saber o tamanho e o digito
      tamanho = tx.numero_caracteres(codigo)
      digito = tx.obter_caracter(codigo, 0)

      //Condi��o para ver qual � o aeroporto que queremos inserir, o de destino ou origem 
      se(passar == 1){

        //Se for passado 1 � o de origem
        aeroportoOrigem = codigo
      } senao{

        //Se for passado 2 ou outro � o de destino
        aeroportoDestino = codigo
      }

      //Condi��o para ver se o tamanho � inv�lido ou se o digito tamb�m � inv�lido
      se(tamanho > 4 ou digito != 'S'){
        limpa()
        //Altera o digito para outro para n�o passar na condi��o do loop 
        digito = '.'

        //Informa que � inv�lido e fala para o usu�rio tentar novamente
        escreva("Voc� inseriu c�digo inv�lido! Tente novamente!\n")

      }

      //Vefica se o loop terminou ou n�o
    }enquanto(digito != 'S')
  }
  
  /*
  Fun��o onde � feita a valida��o dos fusos hor�rios dos aeroportos, onde os par�metros texto � 
  o que o sistema pede para o usu�rio inserir, o fuso � o que o usu�rio vai digitar e 
  passar � para saber a qual vari�vel o sistema deve atribuir o valor, se for 1 � para o
  aeroporto de origem se for 2 � o aeroporto de destino
   */
  funcao validacaoFusoHorario(cadeia texto, inteiro fuso, inteiro passar){

    //Vari�vel para fazer o controle do loop
    inteiro permissao = 0
    
    //Fa�a para repetir at� que seja inserido um fuso hor�rio v�lido
    faca{

      //Exibe o texto passado pelo sistema e l� a vari�vel que � o Fuso hor�rio
      escreva(texto)
      leia(fuso)

      //Condi��o para ver se o fuso � inv�lido, caso ele seja inserido de -13 pra mais ou para +13 pra mais
      se(fuso < -12 ou fuso > 12){
        limpa()

        //Informa que � inv�lido e fala para o usu�rio tentar novamente
        escreva("Voc� inseriu um fuso hor�rio inv�lido! Tente novamente!\n")
      } senao {

        //Caso seja v�lido o fuso hor�rio que ele digitou a vari�vel de controle do loop fica positivo para o loop encerrar
        permissao = 1
      }

      //Condi��o para ver qual � o aeroporto que queremos inserir, o de destino ou origem 
      se(passar == 1){

        //Se for passado 1 � o de origem
        fusoOrigem = fuso
      } senao{

        //Se for passado 2 ou outro � o de destino
        fusoDestino = fuso
      }

      //Vefica se o loop terminou ou n�o 
    } enquanto(permissao == 0)
  }

  /*
  Fun��o onde � feita a valida��o da hora de decolagem, onde os par�metros texto � 
  o que o sistema pede para o usu�rio inserir, o hora � o que o usu�rio vai digitar 
  */
    funcao  validacaoDeHorario(cadeia texto, inteiro hora, inteiro minutos){

    //Vari�vel para fazer o controle do loop
    inteiro permissao = 0

    //Fa�a para repetir at� que seja inserido uma hora v�lida
    faca{

      //Exibe o texto passado pelo sistema e l� a vari�vel que � a hora de decolagem
      escreva(texto)
      leia(hora)

      //Condi��o para ver se a hora � inv�lida, caso ele seja inserido de -1 pra mais ou para 24 pra mais
      se(hora < 0 ou hora > 23){
        limpa()

        //Informa que � inv�lido e fala para o usu�rio tentar novamente
        escreva("Voc� inseriu uma hora inv�lida! Tente novamente!\n")
      } senao {

        //Caso seja v�lida a hora que ele digitou a vari�vel de controle do loop fica positivo para o loop encerrar
        permissao = 1

        //Atribui a hora digitada pelo usu�rio para horaDecolagem para calcular
        horaDecolagem = hora
      }
    //Vefica se o loop terminou ou n�o 
    } enquanto(permissao == 0)

    //Fa�a para repetir at� que seja inserido minutos v�lidos
    faca{
      //Limpa tela para aparecer no formato certo
      limpa()

      //Exibe o pergunta dos minutos com o formato de hora j� inserida e l� a vari�vel que � os minustos de decolagem
      escreva("Insira a hora de decolagem (em UTC): ", hora, ":")
      leia(minutos)

      //Condi��o para ver se os minutos � inv�lidos, caso ele seja inserido de -1 pra mais ou para 60 pra mais
      se(minutos < 0 ou minutos > 59){

        //Informa que � inv�lido e fala para o usu�rio tentar novamente
        escreva("Voc� inseriu minutos inv�lidos! Tente novamente!\n")
      } senao {

        //Caso seja v�lido os minutos que ele digitou a vari�vel de controle do loop fica positivo para o loop encerrar
        permissao = 0

        //Atribui os minutos digitado pelo usu�rio para minutosDecolagem para calcular
        minutoDecolagem = minutos
      }

    //Vefica se o loop terminou ou n�o 
    } enquanto(permissao == 1)
  }

  funcao validacaoPontoDeReferencia(cadeia texto, real distancia, inteiro i){

    //Vari�vel para fazer o controle do loop
    inteiro permissao = 0

    //Fa�a para repetir at� que seja inserido uma hora v�lida
    faca{

      //Exibe o texto passado pelo sistema e l� a vari�vel que � a hora de decolagem
      escreva(texto)
      leia(distancia)

      //Verifica se a dist�ncia informada � maior que 0 para prosseguir
      se(distancia > 0){

        //Caso seja v�lida a dist�ncia que ele digitou a vari�vel de controle do loop fica positivo para o loop encerrar
        permissao = 1

        //Atribui a hora digitada pelo usu�rio para horaDecolagem para calcular
        distanciaPontos[i] = distancia
      } senao {
        limpa()

        //Informa que � inv�lido e fala para o usu�rio tentar novamente
        escreva("Voc� inseriu uma dist�ncia inv�lida! Tente novamente!\n")
      }

    //Vefica se o loop terminou ou n�o 
    } enquanto(permissao == 0)
  }

  //Daqui

  //Fun��o para calcular a dist�ncia total, com base em todos os pontos de refer�ncias inseridos
  //Caso n�o tenha nenhum ponto fornecido � pedido a dist�ncia total ao usu�rio, o calculo funciona do mesmo jeito
  funcao real calcularDistanciaTotal() {
    real distancia = 0.0

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

  funcao calculando(){
    para(inteiro j = 0; j < 4; j++){
      escreva("Calculando\n")
      limpa()
      escreva("Calculando.\n")
      ut.aguarde(500)
      limpa()
      escreva("Calculando..\n")
      ut.aguarde(500)
      limpa()
      escreva("Calculando...\n")
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
