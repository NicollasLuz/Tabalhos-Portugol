  programa {
      inclua biblioteca Util

      real quantidade_num, tempo = 99999999, tamanhoDificil, tempoDificil, numPraChuta, tentativas = 0, timer, timer_i, timer_a, teste, p = 0, acertos = 0, quantidade, acrescimo = 0
      logico modoDificil 

    funcao inicio() {
      escreva("Voc� quer jogar o modo dif�cil: ")
      leia(modoDificil)

      se(modoDificil){

        escreva("O modo dif�cil funciona assim: s�o gerados entre 10 e 20 n�meros aleat�rios e voc� tem um tempo de \n2,5 e 4 minutos, tendo 1 chance para acertar cada n�mero que s�o de 0 a 25 e podem se repetir \n")
        tamanhoDificil = Util.sorteia(10, 20)
        tempoDificil = Util.sorteia(150000, 200000)

        inteiro numParaAcertarDif[tamanhoDificil] 

        para (inteiro i = 0; i < tamanhoDificil; i++) {
          numParaAcertarDif[i] = Util.sorteia(0, 25)
        }

        Util.aguarde(17000)
        vai_comecar()

        timer_i = Util.tempo_decorrido()

            //Come�a a adivinha��o
            para(inteiro j = 0; p < timer ou j < tempoDificil; j++){

              timer_a = Util.tempo_decorrido()
              timer = timer_a - timer_i

              escreva("\nTempo correndo: ", timer - 1000, "\n")

              escreva("Estamos no n�mero da casa: ",  tentativas)
              escreva("\nQual n�mero voc� vai tentar: ")
              leia(numPraChuta)

              se(numPraChuta == numParaAcertarDif[tentativas]){
                tentativas++
                acertos++
                escreva("Parab�ns, voc� acertou um n�mero!")

              } senao {
                escreva("Voc� errou tente novamente!")
                tentativas++
              }

              se(tentativas == tamanhoDificil ou timer > tempo){
                j = tempoDificil
                p = timer

              }
      }

      quantidade = Util.numero_elementos(numParaAcertarDif)
      escreva("Voc� acertou ", acertos, " n�meros de um total de ", quantidade)
      escreva("\nOs n�meros certos eram: ")

      para (inteiro i = 0; i < tamanhoDificil; i++) {
          escreva(numParaAcertarDif[i], " ")
        }

      } senao{
      escreva("Qual a quantidade de n�meros que voc� quer tentar acertar: ")
      leia(quantidade_num)
  
      inteiro numPraAcertar[quantidade_num]

        para (inteiro u = 0; u < quantidade_num; u++) {
          numPraAcertar[u] = Util.sorteia(0, 25)
          escreva(numPraAcertar[u], " ")
        }

        timer_a = Util.tempo_decorrido()

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
          escreva("A quantidade de n�meros � inv�lida")
        }

      quantidade = Util.numero_elementos(numPraAcertar)
      escreva("Voc� acertou ", acertos, " n�meros de um total de ", quantidade)
      }
      
    }

    funcao tempo_sabido(){
      escreva("\n| Tabela de tempo                           |")
      escreva("\n| 1 n�mero at� 30 segundos                  |")
      escreva("\n| De 2 at� 4 n�meros at� 95 segundo         |")
      escreva("\n| De 5 at� 7 n�meros at� 150 segundos       |")
      escreva("\n| De 8 at� 10 n�meros at� 250 segundos      |")
      escreva("\n| Mais de 11 n�meros tempo ilimitado        |")
      escreva("\nQual a quantidade de tempo que voc� quer: ")
      leia(tempo)
      tempo *= 1000

    }

    funcao definir_tempo(inteiro a){
        enquanto(tempo > a){
          tempo_sabido()
            se(tempo > a){
              escreva("Tempo inv�lido para a quantidade de n�meros, tente novamente!\n")
            } senao {
              escreva("Tempo definido com sucesso!\n")
            }
        }
    }

    // funcao acertar_numero(){
    //   vai_comecar()

    //   timer = Util.tempo_decorrido()
    //   para(inteiro j = 0; j < tempo; j++){
    //     escreva(timer)
    //     escreva("Qual n�mero voc� vai tentar: ")
    //     leia(numPraChuta)
    //     escreva("\n", numPraAcertar[tentativas])
    //     se(numPraChuta == numPraAcertar[tentativas]){
    //       tentativas++
    //     } 
    //     se(tentativas == quantidade_num){
    //       j = tempo
    //     }
    //   }
    // }

    // funcao acertar_numero_dificil(){
    //   vai_comecar()

    //   para(inteiro j = 0; j != tempoDificil; j++){
    //     escreva("Qual n�mero voc� vai tentar: ")
    //     leia(numPraChuta)
    //     se(j % 2 == 0){
    //       tentativas++
    //     }
    //     se(numPraChuta == numParaAcertarDif[tentativas]){
    //       tentativas++
    //     } 
    //     se(tentativas == quantidade_num){
    //       j = tempoDificil
    //     }
    //   }
    // }

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