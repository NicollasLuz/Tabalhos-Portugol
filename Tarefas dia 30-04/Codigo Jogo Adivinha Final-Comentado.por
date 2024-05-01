  programa {
      //Declara��o da biblioteca
      inclua biblioteca Util
      
      //Declara��o das variaveis no modo global
      real quantidade_num, tempo = 99999999, tamanhoDificil, tempoDificil, numPraChuta, tentativas = 0, timer, timer_i, timer_a, teste, p = 0, acertos = 0, quantidade, acrescimo = 0
      logico modoDificil 

    funcao inicio() {

      //Pergunta ao usuario se ele deseja jogar no modo dificil
      escreva("Voc� quer jogar o modo dif�cil: ")
      leia(modoDificil)

      //Se ele selecionou o modo dificil ele vem para o jogo onde � 10x mais dificil que o normal
      se(modoDificil){

        //Explica como funciona as regras do modo dificil
        escreva("O modo dif�cil funciona assim: s�o gerados entre 10 e 20 n�meros aleat�rios e voc� tem um tempo de \n2,5 e 4 minutos, tendo 1 chance para acertar cada n�mero que s�o de 0 a 25 e podem se repetir \n")

        //Faz o sorteio de quantos n�meros v�o ser definidos no modo dificil
        tamanhoDificil = Util.sorteia(10, 20)

        //Faz o sorteio do tempo para o modo dificil
        tempoDificil = Util.sorteia(150000, 200000)

        //Faz a defini��o do tamanho do vetor que vai armazenar todos os n�meros que foi escolhido por tamanhoDififil
        inteiro numParaAcertarDif[tamanhoDificil] 

        //Loop para gerar todos os n�meros que v�o precisar serem descobertos
        para (inteiro i = 0; i < tamanhoDificil; i++) {
          numParaAcertarDif[i] = Util.sorteia(0, 25)
        }

        //Aguarda 17 segundos para o usuario ler as regras do MD
        Util.aguarde(17000)

        //Exibe a fun��o que faz a contagem regressiva para come�ar o jogo
        vai_comecar()

        //Variavel que pega o tempo ja foi gasto at� aqui para subtrair do tempo usado no jogo
        timer_i = Util.tempo_decorrido()

            //Come�a as tentativas para adivinhar o jogo

            //Loop  para o usuario tentar acertar o n�mero, que acaba qunado o tempo for atingido ou quando a qunatidade de tentativas terminar
            para(inteiro j = 0; p < timer ou j < tempoDificil; j++){
              
              //� usada para saber o tempo atual e subtrair pelo tempo obtido l� atras para saber o tempo de agora para come�ar o jogo de verdade
              timer_a = Util.tempo_decorrido()

              //� onde � feita a subtra��o do tempo para saber o tempo em que estamos agora no codigo 
              timer = timer_a - timer_i

              //Exibe uma mensagem para mostrar o tempo que ja foi gasto pelo usuario
              escreva("\nTempo correndo: ", timer - 1000, "\n")

              //Informa a casa em que o n�mero est� para o usuario descobrir qual n�mero ele pode tentar chutar
              escreva("Estamos no n�mero da casa: ",  tentativas)

              //Pede ao usuario para que ele informe qual o numero do chute dele
              escreva("\nQual n�mero voc� vai tentar: ")
              leia(numPraChuta)

              //Condi��o para saber se o numero informado pelo usuario � igual o n�mero da casa              
              se(numPraChuta == numParaAcertarDif[tentativas]){

                //Acrescenta + 1 a quantidade de acertos
                acertos++

                //Informa ao usuario que ele acertou o numero
                escreva("Parab�ns, voc� acertou um n�mero!")

              } senao {

                //Informa ao usuario que ele errou o numero 
                escreva("Voc� errou tente novamente!")
              }

                //Aumenta a quantidade tentativas em 1, passando para a proxima casa
                tentativas++
              
              //Condi��o para saber se o loop deve terminar, onde sao levado sem consiera��o se as tentativas cvhegaram ao fim que seria o tamanho do vetor ou se o timer passou do tempo definido
              se(tentativas == tamanhoDificil ou timer > tempo){
                
                //Defini que o valor de j � igual ao tempo 
                j = tempoDificil

                //Defini o tempo de p para timer para encerrar o loop
                p = timer

              }
      }

      //Variavel para saber o tamanho do vetor
      quantidade = Util.numero_elementos(numParaAcertarDif)

      //Informa ao usuario a quantidade numeros que ele acertou e a quantidade que tinha
      escreva("Voc� acertou ", acertos, " n�meros de um total de ", quantidade)

      //Informa os numeros corretos
      escreva("\nOs n�meros certos eram: ")

      //Loop para mostrar todos os numeros dfo vetor
      para (inteiro i = 0; i < tamanhoDificil; i++) {
          escreva(numParaAcertarDif[i], " ")
        }

      //Caso ele n�o tenha escolhido o MD ele vem para o MF
      } senao{
      
      //Pede ao usuario a quantidade de n�meros em que ele quer escolher
      escreva("Qual a quantidade de n�meros que voc� quer tentar acertar: ")
      leia(quantidade_num)
  
      inteiro numPraAcertar[quantidade_num]

        para (inteiro u = 0; u < quantidade_num; u++) {
          numPraAcertar[u] = Util.sorteia(0, 25)
          escreva(numPraAcertar[u], " ")
        }

        //� usada para saber o tempo atual e subtrair pelo tempo obtido l� atras para saber o tempo de agora para come�ar o jogo de verdade
        timer_a = Util.tempo_decorrido()

        //Condi��es para seber qual a quantidade numeros em que foi escolhido e definir o tempo  
        se(quantidade_num == 1){

          definir_tempo(30000)
          vai_comecar()

        timer_i = Util.tempo_decorrido()

            para(inteiro j = 0; p < timer ou j < tempo; j++){

              timer_a = Util.tempo_decorrido()
              timer = timer_a - timer_i
              escreva("\nTempo correndo: ", timer - 1000, "\n")

              escreva("Qual n�mero voc� vai tentar: ")
              leia(numPraChuta)

              se(numPraChuta == numPraAcertar[tentativas]){
                tentativas++
                acertos++
                escreva("Parab�ns, voc� acertou um n�mero!")
              } senao {
                escreva("Voc� errou tente novamente!")
              }

              se(tentativas == quantidade_num ou timer > tempo){
                j = tempo
                p = timer

              }
            }

        } senao se(quantidade_num >= 2 e quantidade_num <= 4){
          definir_tempo(95000)
            vai_comecar()

            timer_i = Util.tempo_decorrido()

            para(inteiro j = 0; p < timer ou j < tempo; j++){

              timer_a = Util.tempo_decorrido()
              timer = timer_a - timer_i
              escreva("\nTempo correndo: ", timer - 1000, "\n")

              escreva("Qual n�mero voc� vai tentar: ")
              leia(numPraChuta)

              se(numPraChuta == numPraAcertar[tentativas]){
                tentativas++
                acertos++
                escreva("Parab�ns, voc� acertou um n�mero!")
              } senao {
                escreva("Voc� errou tente novamente!")
              }

              se(tentativas == quantidade_num ou timer > tempo){
                j = tempo
                p = timer

              }
            }

        } senao se (quantidade_num >= 5 e quantidade_num <= 7){
          definir_tempo(150000)

          timer_i = Util.tempo_decorrido()

            para(inteiro j = 0; p < timer ou j < tempo; j++){

              timer_a = Util.tempo_decorrido()
              timer = timer_a - timer_i
              escreva("\nTempo correndo: ", timer - 1000, "\n")

              escreva("Qual n�mero voc� vai tentar: ")
              leia(numPraChuta)

              se(numPraChuta == numPraAcertar[tentativas]){
                tentativas++
                acertos++
                escreva("Parab�ns, voc� acertou um n�mero!")
              } senao {
                escreva("Voc� errou tente novamente!")
              }

              se(tentativas == quantidade_num ou timer > tempo){
                j = tempo
                p = timer

              }
            }

        } senao se(quantidade_num >= 8 e quantidade_num <= 10){ 
          definir_tempo(250000)
            vai_comecar()

            timer_i = Util.tempo_decorrido()

            para(inteiro j = 0; p < timer ou j < tempo; j++){

              timer_a = Util.tempo_decorrido()
              timer = timer_a - timer_i
              escreva("\nTempo correndo: ", timer - 1000, "\n")

              escreva("Qual n�mero voc� vai tentar: ")
              leia(numPraChuta)

              se(numPraChuta == numPraAcertar[tentativas]){
                tentativas++
                acertos++
                escreva("Parab�ns, voc� acertou um n�mero!")
              } senao {
                escreva("Voc� errou tente novamente!")
              }

              se(tentativas == quantidade_num ou timer > tempo){
                j = tempo
                p = timer

              }
            }

        } senao se(quantidade_num >= 11){
          tempo_sabido()
            vai_comecar()

            timer_i = Util.tempo_decorrido()

            para(inteiro j = 0; p < timer ou j < tempo; j++){

              timer_a = Util.tempo_decorrido()
              timer = timer_a - timer_i
              escreva("\nTempo correndo: ", timer - 1000, "\n")

              escreva("Qual n�mero voc� vai tentar: ")
              leia(numPraChuta)

              se(numPraChuta == numPraAcertar[tentativas]){
                tentativas++
                acertos++
                escreva("Parab�ns, voc� acertou um n�mero!")
              } senao {
                escreva("Voc� errou tente novamente!")
              }

              se(tentativas == quantidade_num ou timer > tempo){
                j = tempo
                p = timer

              }
            }

        } senao se(quantidade_num <= 0){

          //Informa que a quantidade nao pode ser menor ou igual a 0 para jogar
          escreva("A quantidade de n�meros � inv�lida")
        }

      //Variavel para saber o tamanho do vetor
      quantidade = Util.numero_elementos(numPraAcertar)

      //Informa ao usuario a quantidade numeros que ele acertou e a quantidade que tinha
      escreva("Voc� acertou ", acertos, " n�meros de um total de ", quantidade)

      //Informa os numeros corretos
      escreva("\nOs n�meros certos eram: ")

      //Loop para mostrar todos os numeros dfo vetor
      para (inteiro i = 0; i < quantidade; i++) {
          escreva(numPraAcertar[i], " ")
        }
      }
    }

    //Funcao para exibir a tabela de tempo por cada n�mero 
    funcao tempo_sabido(){
      escreva("\n| Tabela de tempo                           |")
      escreva("\n| 1 n�mero at� 30 segundos                  |")
      escreva("\n| De 2 at� 4 n�meros at� 95 segundo         |")
      escreva("\n| De 5 at� 7 n�meros at� 150 segundos       |")
      escreva("\n| De 8 at� 10 n�meros at� 250 segundos      |")
      escreva("\n| Mais de 11 n�meros tempo ilimitado        |")

      //Pede ao usuario que digite o tempo desejado 
      escreva("\nQual a quantidade de tempo que voc� quer: ")
      leia(tempo)

      //Multiplica o tempo escolhido pelo usuario por mil pois a biblioteca usa milesimos
      tempo *= 1000

    }
    
    //Fun��o onde � deifido o tempo 
    funcao definir_tempo(inteiro a){

        //Loop para garantir que o tempo se menor que p maximo do numero
        enquanto(tempo > a){

          //Usa fun��o que informa a tabela de tempos
          tempo_sabido()

            //Condi��o para saber se o tempo que o usuario quer � menor que o maximo
            se(tempo > a){

              //Avisa que o tempo desejado � maior que o possivel
              escreva("Tempo inv�lido para a quantidade de n�meros, tente novamente!\n")
            } senao {

              //Avisa que o tempo foi definido com suscesso
              escreva("Tempo definido com sucesso!\n")
            }
        }
    }

    funcao acertar_numero(){

      //funcao que passa o tempo definido
      definir_tempo(30000)

      //Fun��o da contagem regressiva
      vai_comecar()

      //Variavel que pega o tempo ja foi gasto at� aqui para subtrair do tempo usado no jogo
      timer_i = Util.tempo_decorrido()

        //Loop para o usuario tentar acertar o n�mero, que acaba qunado o tempo for atingido ou quando a qunatidade de tentativas terminar
        para(inteiro j = 0; p < timer ou j < tempo; j++){

          //� usada para saber o tempo atual e subtrair pelo tempo obtido l� atras para saber o tempo de agora para come�ar o jogo de verdade
          timer_a = Util.tempo_decorrido()

          //� onde � feita a subtra��o do tempo para saber o tempo em que estamos agora no codigo 
          timer = timer_a - timer_i

          //Exibe uma mensagem para mostrar o tempo que ja foi gasto pelo usuario
          escreva("\nTempo correndo: ", timer - 1000, "\n")

          //Pede ao usuario para que ele informe qual o numero do chute dele
          escreva("Qual n�mero voc� vai tentar: ")
          leia(numPraChuta)
          
          //Condi��o para saber se o numero informado pelo usuario � igual o n�mero da casa    
          se(numPraChuta == numPraAcertar[tentativas]){
            
            //Aumennta as tentativas em 1 e vai para o proximo numero
            tentativas++

            //Acrescenta + 1 a quantidade de acertos
            acertos++

            //Informa ao usuario que ele acertou o numero
            escreva("Parab�ns, voc� acertou um n�mero!")

          } senao {

            //Informa ao usuario que ele errou o numero 
            escreva("Voc� errou tente novamente!")
          }

          //Condi��o para saber se o loop deve terminar, onde sao levado sem consiera��o se as tentativas cvhegaram ao fim que seria o tamanho do vetor ou se o timer passou do tempo definido
          se(tentativas == quantidade_num ou timer > tempo){

            //Defini que o valor de j � igual ao tempo 
            j = tempo

            //Defini o tempo de p para timer para encerrar o loop
            p = timer

          }
        }
    }

    //Fun��o que faz a contagem regressiva usando aguarde
    funcao vai_comecar(){
      escreva("Se prepare, o jogo vai come�ar em...")
      escreva("\n5")
      Util.aguarde(1000)
      escreva("\n4")
      Util.aguarde(1000)
      escreva("\n3")
      Util.aguarde(1000)
      escreva("\n2")
      Util.aguarde(1000)
      escreva("\n1")
      Util.aguarde(500)
      escreva("\nVai!\n")
    }
  }
