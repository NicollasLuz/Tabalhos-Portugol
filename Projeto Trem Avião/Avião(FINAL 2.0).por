programa {	
  inclua biblioteca Util --> ut
  inclua biblioteca Texto --> tx
  inclua biblioteca Matematica --> mat

  inteiro opcao, fusoOrigem = 0, fusoDestino = 0, quantidadeDePontos = 0, horaDecolagem = 0, minutoDecolagem = 0, horarioChegadaUTC = 0, horarioChegadaLocal = 0, tempoTotalVoo = 0, jaPassouPor = 0, temporealfinal = 0, horarioDecolagemMinutos
  cadeia aeroportoOrigem = " ", aeroportoDestino = " "
  real velocidadeCruzeiro, distanciaTotal
  cadeia nomePontos[500], rmPontos[500], impressamento
  real distanciaPontos[500]
  

  //Função onde vai ser inicializado todos os comandos principais
  funcao inicio() {
    escreva("Bem-vindo ao aplicativo de navegação VFR.\n")
    menuPrincipal()
  }

  //Função para mostrar todas as funcionalidades do código 
  funcao funcoes(){
    //Todos os comandos que ele pode selecionar
    escreva(" 1 - Inserir dados\n")
    escreva(" 2 - Calcular dados\n")
    escreva(" 3 - Visualizar dados\n")
    escreva(" 4 - Sair\n")
    escreva("Qual opção você deseja selecionar: ")
    leia(opcao)
  }

  //função onde é analizado a opção que ele escolheu  
  funcao menuPrincipal(){

    funcoes()
    limpa()

    //Escolha caso para verificar qual foi a opção desejada pelo usuário
    escolha(opcao){

      //Caso ela escolha 1 ela vai para a inserção de dados
      caso 1: 
        insercao()
      pare
      
      //Caso ela escolha 2 ela vai para a realização dos calculos
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

      //caso ela escolha algum número que não seja um da lista ela volta para a seleção de números
      caso contrario:  

        //Avisa que a opção inserida é inválida e que é para ele tentar novamente
        escreva("\n*Opção inválida, tente novamente!*\n\n")

        //Retorna ao menu principal
        menuPrincipal()
      pare
    }
  }
  
  //Função para fazer tudo que acontece quando o usuário seleciona inserir dados
  funcao insercao(){

    //Exibe a função onde esta a entrada de dados
    entradaDados()

    //Adiciona 1 para jaPssouPor para desbloquear os calculos
    jaPassouPor = 1

    //Volta ao menu principal
    menuPrincipal()
  }

  //Função para fazer tudo que acontece quando o usuário seleciona calcular dados e validar se é possível
  funcao calc(){

    //Condição para saber se ele já passou pela inserção de dados
    se(jaPassouPor != 1){

      //Avisa que é nescessario inserir os dados
      escreva("Faça a inserção de dados primeiro!\n")

      //Função para quando o usuário terminar de ler ele apertar enter e seguir
      continuar()

      //Limpa a tela
      limpa()
    } senao{
      calculos()

      //Adiciona 2 para jaPssouPor para desbloquear os calculos
      jaPassouPor = 2 

      //Exibe a função calculando para fazer a contagem "regressiva" de calculando 
      calculando()

      //Volta para o usuáiro falando que os calculos foram realizados com suscesso
      escreva("Calculado!\n")

      //Função para quando o usuário terminar de ler ele apertar enter e seguir
      continuar()

      //Limpa a tela
      limpa()
    }

    //Volta ao menu principal
    menuPrincipal()
  }

  //Função para fazer tudo que acontece quando o usuário seleciona visualizar dados e validar se é possível
  funcao visualizamento(){

    //Condição para saber se ele já passou pelo calculo de dados
    se(jaPassouPor != 2){

      //Avisa que é nescessario inserir os dados
      escreva("Faça a inserção ou calculo de dados primeiro!\n")

      //Função para quando o usuário terminar de ler ele apertar enter e seguir
      continuar()

      //Limpa a tela
      limpa()
    } senao {

      //Caso ele já tenha passador por calculos é exibido os dados
      vizualizarDados()
    }

    //Volta ao menu principal
    menuPrincipal()
  }

  //Função para reaizar a entrada de dados. Onde é obtida todas as informações para fazer os calculos
  funcao entradaDados() {

    //Todos os dados que pedimos ao usuário
    validacaoDeCodigoAeroporto("Insira o código ICAO do aeroporto de origem: ", aeroportoOrigem, 1)

    validacaoDeCodigoAeroporto("Insira o código ICAO do aeroporto de destino: ", aeroportoDestino , 2)
    limpa()

    escreva("*Insira primeiro as horas depois os minutos*\n")
    validacaoDeHorario("Insira a hora de decolagem (em UTC): ", horaDecolagem, minutoDecolagem)
    limpa()

    validacaoFusoHorario("Insira o fuso horário GMT do aeroporto de origem: ", fusoOrigem, 1)

    validacaoFusoHorario("Insira o fuso horário GMT do aeroporto de destino: ", fusoDestino, 2)
    limpa()

    escreva("Insira a velocidade de cruzeiro em nós (kt): ")
    leia(velocidadeCruzeiro)
    limpa()

    escreva("Qual a quantidade de pontos de referência que você quer inserir: ")
    leia(quantidadeDePontos)

    se(quantidadeDePontos <= 0) {
      nomePontos[0] = "Total"

      escreva("Rumo magnético para o ponto final: ")
      leia(rmPontos[0])

      escreva("Insira a distância total do percurso: ")
      leia(distanciaPontos[0])
      quantidadeDePontos =+ 1
    } senao {

      escreva("Insira os pontos de referência (nome, rumo magnético, distância até o próximo ponto): \n")

      //"Para" para repertir de acordo com a quantidadade de pontos em que o usuário quer inserir
      para(inteiro i = 0; i < quantidadeDePontos; i++){
        escreva("Nome do ponto de referência: ")
        leia(nomePontos[i])

        escreva("Rumo magnético do ponto de referência: ")
        leia(rmPontos[i])

        validacaoPontoDeReferencia("Distância até o ponto: ", distanciaPontos[i], i)
      }
    }

    //Limpar a tela para voltar para o menu principal
    limpa()
  }

  /*
  Função onde é feita a validação dos códigos de aeroporto, onde os parâmetros texto é 
  o que o sistema pede para o usuário inserir, o código é o que o usuário vai digitar e 
  passar é para saber a qual variável o sistema deve atribuir o valor, se for 1 é para o
  aeroporto de origem se for 2 é o aeroporto de destino
   */
  funcao validacaoDeCodigoAeroporto(cadeia texto, cadeia codigo, inteiro passar){

    //Tamanho é o tamanho do código inserido para saber o se é válido
    inteiro tamanho

    //Digito é pra saber se o primeiro digito que o usuário inseriu é de acordo para validar
    caracter digito

    //Faça para repetir até que seja inserido um código válido
    faca{
      //Exibe o texto passado pelo sistema e lê a variável que é o código do aeroporto
      escreva(texto)
      leia(codigo)

      //Usa a biblioteca Texto para saber o tamanho e o digito
      tamanho = tx.numero_caracteres(codigo)
      digito = tx.obter_caracter(codigo, 0)

      //Condição para ver qual é o aeroporto que queremos inserir, o de destino ou origem 
      se(passar == 1){

        //Se for passado 1 é o de origem
        aeroportoOrigem = codigo
      } senao{

        //Se for passado 2 ou outro é o de destino
        aeroportoDestino = codigo
      }

      //Condição para ver se o tamanho é inválido ou se o digito também é inválido
      se(tamanho > 4 ou digito != 'S'){
        limpa()
        //Altera o digito para outro para não passar na condição do loop 
        digito = '.'

        //Informa que é inválido e fala para o usuário tentar novamente
        escreva("Você inseriu código inválido! Tente novamente!\n")

      }

      //Vefica se o loop terminou ou não
    }enquanto(digito != 'S')
  }
  
  /*
  Função onde é feita a validação dos fusos horários dos aeroportos, onde os parâmetros texto é 
  o que o sistema pede para o usuário inserir, o fuso é o que o usuário vai digitar e 
  passar é para saber a qual variável o sistema deve atribuir o valor, se for 1 é para o
  aeroporto de origem se for 2 é o aeroporto de destino
   */
  funcao validacaoFusoHorario(cadeia texto, inteiro fuso, inteiro passar){

    //Variável para fazer o controle do loop
    inteiro permissao = 0
    
    //Faça para repetir até que seja inserido um fuso horário válido
    faca{

      //Exibe o texto passado pelo sistema e lê a variável que é o Fuso horário
      escreva(texto)
      leia(fuso)

      //Condição para ver se o fuso é inválido, caso ele seja inserido de -13 pra mais ou para +13 pra mais
      se(fuso < -12 ou fuso > 12){
        limpa()

        //Informa que é inválido e fala para o usuário tentar novamente
        escreva("Você inseriu um fuso horário inválido! Tente novamente!\n")
      } senao {

        //Caso seja válido o fuso horário que ele digitou a variável de controle do loop fica positivo para o loop encerrar
        permissao = 1
      }

      //Condição para ver qual é o aeroporto que queremos inserir, o de destino ou origem 
      se(passar == 1){

        //Se for passado 1 é o de origem
        fusoOrigem = fuso
      } senao{

        //Se for passado 2 ou outro é o de destino
        fusoDestino = fuso
      }

      //Vefica se o loop terminou ou não 
    } enquanto(permissao == 0)
  }

  /*
  Função onde é feita a validação da hora de decolagem, onde os parâmetros texto é 
  o que o sistema pede para o usuário inserir, o hora é o que o usuário vai digitar 
  */
    funcao  validacaoDeHorario(cadeia texto, inteiro hora, inteiro minutos){

    //Variável para fazer o controle do loop
    inteiro permissao = 0

    //Faça para repetir até que seja inserido uma hora válida
    faca{

      //Exibe o texto passado pelo sistema e lê a variável que é a hora de decolagem
      escreva(texto)
      leia(hora)

      //Condição para ver se a hora é inválida, caso ele seja inserido de -1 pra mais ou para 24 pra mais
      se(hora < 0 ou hora > 23){
        limpa()

        //Informa que é inválido e fala para o usuário tentar novamente
        escreva("Você inseriu uma hora inválida! Tente novamente!\n")
      } senao {

        //Caso seja válida a hora que ele digitou a variável de controle do loop fica positivo para o loop encerrar
        permissao = 1

        //Atribui a hora digitada pelo usuário para horaDecolagem para calcular
        horaDecolagem = hora
      }
    //Vefica se o loop terminou ou não 
    } enquanto(permissao == 0)

    //Faça para repetir até que seja inserido minutos válidos
    faca{
      //Limpa tela para aparecer no formato certo
      limpa()

      //Exibe o pergunta dos minutos com o formato de hora já inserida e lê a variável que é os minustos de decolagem
      escreva("Insira os minutos de decolagem (em UTC): ", hora, ":")
      leia(minutos)

      //Condição para ver se os minutos é inválidos, caso ele seja inserido de -1 pra mais ou para 60 pra mais
      se(minutos < 0 ou minutos > 59){

        //Informa que é inválido e fala para o usuário tentar novamente
        escreva("Você inseriu minutos inválidos! Tente novamente!\n")
      } senao {

        //Caso seja válido os minutos que ele digitou a variável de controle do loop fica positivo para o loop encerrar
        permissao = 0

        //Atribui os minutos digitado pelo usuário para minutosDecolagem para calcular
        minutoDecolagem = minutos
      }

    //Vefica se o loop terminou ou não 
    } enquanto(permissao == 1)
  }

  funcao validacaoPontoDeReferencia(cadeia texto, real distancia, inteiro i){

    //Variável para fazer o controle do loop
    inteiro permissao = 0

    //Faça para repetir até que seja inserido uma hora válida
    faca{

      //Exibe o texto passado pelo sistema e lê a variável que é a hora de decolagem
      escreva(texto)
      leia(distancia)

      //Verifica se a distância informada é maior que 0 para prosseguir
      se(distancia > 0){

        //Caso seja válida a distância que ele digitou a variável de controle do loop fica positivo para o loop encerrar
        permissao = 1

        //Atribui a hora digitada pelo usuário para horaDecolagem para calcular
        distanciaPontos[i] = distancia
      } senao {
        limpa()

        //Informa que é inválido e fala para o usuário tentar novamente
        escreva("Você inseriu uma distância inválida! Tente novamente!\n")
      }

    //Vefica se o loop terminou ou não 
    } enquanto(permissao == 0)
  }

  //Daqui

  //Função para calcular a distância total, com base em todos os pontos de referências inseridos
  //Caso não tenha nenhum ponto fornecido é pedido a distância total ao usuário, o calculo funciona do mesmo jeito
  funcao real calcularDistanciaTotal() {
    real distancia = 0.0

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

  /*Função para poder usar horas e minutos para fazer os calculos*/
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
    para(inteiro i = 0; i < quantidadeDePontos; i++) {
      tempoTotalVoo += calcularETO(distanciaPontos[i], velocidadeCruzeiro) * 60
    }

    //Passa o horario de decolagem que esta em horas para minutos, para calcular o horario de chegada
    horarioDecolagemMinutos = paraMinutos(horaDecolagem, minutoDecolagem)

  }
  //Até aqui
  //É onde realizamos os calculos

  //Função para exibir todos os dados calculados
  funcao vizualizarDados(){

    exibirDados()

    //Chama a função continuar para o usuário continuar quando ele quiser
    continuar()

    //Limpar a tela para voltar para o menu principal
    limpa()
  }

  //Função para retornar se o voo é em minutos ou horas
  funcao formatacaoTempoVoo(cadeia texto, cadeia formatado){

    //Condição para ver se o tempo total de voo é menor que 59 minutos 
    se(tempoTotalVoo <= 59){

      //Se for menor que 59 então é um voo de minutoos
      escreva(texto, formatado, " minutos\n")
    } senao{

      //Caso seja maior que 59 é um voo de horas
      escreva(texto, formatado, " horas\n")
    }
  }

  //Função para retornar se o voo é em minutos ou horas em cada trecho dos pontos de referência
  funcao formatacaoTempoVooTrecho(inteiro trecho, cadeia ponto, cadeia nomeDoPonto, cadeia rm, cadeia rm2, cadeia dt, cadeia dt2, cadeia eto, real tv){

    //Variável que recebe a distância do trecho vezes 60 para ficar em minutos
    real resultado = tv * 60

    //Váriavel para armazenar o número de 1 digito para saber se é menor que 0.4 para adicionar + 1
    real resultado2 = mat.arredondar(resultado, 0)

    //Condição para ver se o tempo do trecho é menor que 59 minutos 
    se(resultado <= 59){

      //Concição para saber se o número está entre 0.1 e 0.4 para arredondar para cima
      se(resultado - resultado2 >= 0.0001 ou resultado - resultado2 <= 0.49){
        resultado2 + 2
        temporealfinal += resultado2
        
        //Retorna o texto pela função com o texto o número do trecho, separação por 2 pontos, o tempo, mais minutos
      	escreva(trecho, ponto, nomeDoPonto, rm, rm2, dt, dt2, eto, resultado2, " minutos\n")   
      } senao{

      //Exibe o tempo total do voo em minutos
      escreva(trecho, ponto, nomeDoPonto, rm, rm2, dt, dt2, eto, tv, " minutos\n")
      }
    } senao{

      //Caso não seja em minutos é feita a converção para horas
      escreva(trecho, ponto, nomeDoPonto, rm, rm2, dt, dt2, eto, formatarHoraMinutos(tv), " horas\n")
    }
  }

  funcao exibirDados(){
    escreva("Indicativo do aeroporto de origem: ", aeroportoOrigem)
    escreva("\nIndicativo do aeroporto de destino: ", aeroportoDestino)
    escreva("\nO fuso horário do aeroporto de origem é: GMT", fusoOrigem)
    escreva("\nO fuso horário do aeroporto de destino é: GMT", fusoDestino)
    escreva("\nDistância total do voo: ", distanciaTotal, " milhas")
    escreva("\nA velocidade é de: ", velocidadeCruzeiro, "\n")


    escreva("___________________________________________________________________________________ \n") 
    escreva("REFERENCIA                  |    RM     |   DISTANCIA   |    ETO     | \n") 
    escreva("----------------------------------------------------------------------------------- \n")  

    //"Para" para exibir todas as distâncias dentro do vetor
    para(inteiro i = 0; i < quantidadeDePontos; i++) {
      formatacaoTempoVooTrecho(i + 1, ". " , formataTexto(nomePontos[i]), " | ", rmPontos[i], " |  ", formataNumero(distanciaPontos[i], 2), " |  ", calcularETO(distanciaPontos[i], velocidadeCruzeiro))
    }

    //Variável para formatar em horas para passar como paramêtro na função
    cadeia tempoTotalVooFormatado = formatarHoraMinutos(temporealfinal) 

    //Chama a função tempo total de voo onde é analizado se é horas ou minutos
    formatacaoTempoVoo("\nTempo total de voo é de:  ", tempoTotalVooFormatado)

    inteiro horarioChegadaMinutosUTC = horarioDecolagemMinutos + temporealfinal

    //Calcula a hora de chagada local em minutos
    inteiro horarioChegadaMinutosLocal = horarioChegadaMinutosUTC + (fusoDestino * 60)

    //Atribui o valor das horas de chegada a outras variaveis para usar na formatação
    horarioChegadaUTC = horarioChegadaMinutosUTC
    horarioChegadaLocal = horarioChegadaMinutosLocal

    escreva("\nHorários: ")
    escreva("\nEm UTC: Decolagem: ", horaDecolagem, ":", minutoDecolagem, " | Pouso: ", formatarHoraMinutos(horarioChegadaUTC))
    escreva("\nEm HLO: Decolagem: ", horaDecolagem + fusoDestino, ":", minutoDecolagem, " | Pouso: ", formatarHoraMinutos(horarioChegadaLocal))
    
  }

  funcao cadeia formataTexto(cadeia mensagem){
    mensagem = "| " + mensagem
    inteiro numeroCaracteres = tx.numero_caracteres(mensagem)
    cadeia mensgFormatada
    se(numeroCaracteres> 24){
      mensagem = tx.extrair_subtexto(mensagem, 0, 20)+" ..."
    }
    mensgFormatada = tx.preencher_a_direita(" ",24, mensagem)
    retorne mensgFormatada
  }

  funcao cadeia formataNumero(real numero, inteiro qtdCasaDec){
    retorne tx.preencher_a_esquerda("0",qtdCasaDec, ""+numero)
  } 

  //função que exibe o finalizando código como se estivesse carregando a finalização do programa
  funcao finalizarPrograma(){

    /* 
    "Para" para fazer um loop de acordo com a quantidade de vezes que queremos que o loop repita
    para mosrtrar Finalizando programa... 
    */
    para(inteiro j = 0; j < 3; j++){
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

  //função que exibe o finalizando código como se estivesse carregando a finalização do programa
  funcao calculando(){

    /* 
    "Para" para fazer um loop de acordo com a quantidade de vezes que queremos que o loop repita
    para mosrtrar calculando... 
    */
    para(inteiro j = 0; j < 3; j++){
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
  Função que tem por unica finaliddade solicitar ao usuario que tecle 
  alguma tecla para continuar um determinado processo
  */
  funcao continuar(){
    cadeia enter
    escreva("\nPressione ENTER para continuar ...\n") 
    leia(enter)  
  }
}