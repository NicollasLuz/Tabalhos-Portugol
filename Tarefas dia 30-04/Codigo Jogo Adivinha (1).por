  programa {
      inclua biblioteca Util

      real quantidade_num, tempo = 99999999, tamanhoDificil, tempoDificil, numPraChuta, tentativas = 0, timer, timer_i, timer_a, teste, p = 0
      logico modoDificil 

    funcao inicio() {
      escreva("Você quer jogar o modo difícil: ")
      leia(modoDificil)

      se(modoDificil){
        tamanhoDificil = Util.sorteia(10, 20)
        tempoDificil = Util.sorteia(150000, 200000)

        real numParaAcertarDif[tamanhoDificil] 

        para (inteiro i = 0; i < tamanhoDificil; i++) {
          numParaAcertarDif[i] = Util.sorteia(0, 25)
        escreva(numParaAcertarDif[i], " ")
        }

        para(inteiro j = 0; j != tempoDificil; j++){
        escreva("Qual número você vai tentar: ")
        leia(numPraChuta)
        se(j % 2 == 0){
          tentativas++
        }
        se(numPraChuta == numParaAcertarDif[tentativas]){
          tentativas++
        } 
        se(tentativas == quantidade_num){
          j = tempoDificil
        }
      }


      } senao{
      escreva("Qual a quantidade de números que você quer tentar acertar: ")
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

              escreva("Qual número você vai tentar: ")
              leia(numPraChuta)

              se(numPraChuta == numPraAcertar[tentativas]){
                tentativas++
                escreva("Parabêns, você acertou um número!")
              } senao {
                escreva("Você errou tente novamente!")
              }

              se(tentativas == quantidade_num ou timer > tempo){
                j = tempo
                p = timer

              }
            }
          escreva("Você precisou de: ",tentativas, " tentativas para acertar\n")

        } senao se(quantidade_num >= 2 e quantidade_num <= 4){
          definir_tempo(95000)
            vai_comecar()

            timer_i = Util.tempo_decorrido()

            para(inteiro j = 0; p < timer ou j < tempo; j++){

              timer_a = Util.tempo_decorrido()
              timer = timer_a - timer_i
              escreva("\nTempo correndo: ", timer - 1000, "\n")

              escreva("Qual número você vai tentar: ")
              leia(numPraChuta)

              se(numPraChuta == numPraAcertar[tentativas]){
                tentativas++
                escreva("Parabêns, você acertou um número!")
              } senao {
                escreva("Você errou tente novamente!")
              }

              se(tentativas == quantidade_num ou timer > tempo){
                j = tempo
                p = timer

              }
            }
          escreva("Você precisou de: ",tentativas, " tentativas para acertar\n")

        } senao se (quantidade_num >= 5 e quantidade_num <= 7){
          definir_tempo(150000)

          timer_i = Util.tempo_decorrido()

            para(inteiro j = 0; p < timer ou j < tempo; j++){

              timer_a = Util.tempo_decorrido()
              timer = timer_a - timer_i
              escreva("\nTempo correndo: ", timer - 1000, "\n")

              escreva("Qual número você vai tentar: ")
              leia(numPraChuta)

              se(numPraChuta == numPraAcertar[tentativas]){
                tentativas++
                escreva("Parabêns, você acertou um número!")
              } senao {
                escreva("Você errou tente novamente!")
              }

              se(tentativas == quantidade_num ou timer > tempo){
                j = tempo
                p = timer

              }
            }
          escreva("Você precisou de: ",tentativas, " tentativas para acertar\n")

        } senao se(quantidade_num >= 8 e quantidade_num <= 10){ 
          definir_tempo(250000)
            vai_comecar()

            timer_i = Util.tempo_decorrido()

            para(inteiro j = 0; p < timer ou j < tempo; j++){

              timer_a = Util.tempo_decorrido()
              timer = timer_a - timer_i
              escreva("\nTempo correndo: ", timer - 1000, "\n")

              escreva("Qual número você vai tentar: ")
              leia(numPraChuta)

              se(numPraChuta == numPraAcertar[tentativas]){
                tentativas++
                escreva("Parabêns, você acertou um número!")
              } senao {
                escreva("Você errou tente novamente!")
              }

              se(tentativas == quantidade_num ou timer > tempo){
                j = tempo
                p = timer

              }
            }
          escreva("Você precisou de: ",tentativas, " tentativas para acertar\n")

        } senao se(quantidade_num >= 11){
          tempo_sabido()
            vai_comecar()

            timer_i = Util.tempo_decorrido()

            para(inteiro j = 0; p < timer ou j < tempo; j++){

              timer_a = Util.tempo_decorrido()
              timer = timer_a - timer_i
              escreva("\nTempo correndo: ", timer - 1000, "\n")

              escreva("Qual número você vai tentar: ")
              leia(numPraChuta)

              se(numPraChuta == numPraAcertar[tentativas]){
                tentativas++
                escreva("Parabêns, você acertou um número!")
              } senao {
                escreva("Você errou tente novamente!")
              }

              se(tentativas == quantidade_num ou timer > tempo){
                j = tempo
                p = timer

              }
            }
          escreva("Você precisou de: ",tentativas, " tentativas para acertar\n")

        } senao se(quantidade_num <= 0){
          escreva("A quantidade de números é inválida")
        }
      }
    }

    funcao tempo_sabido(){
      escreva("\n| Tabela de tempo                           |")
      escreva("\n| 1 número até 30 segundos                  |")
      escreva("\n| De 2 até 4 números até 95 segundo         |")
      escreva("\n| De 5 até 7 números até 150 segundos       |")
      escreva("\n| De 8 até 10 números até 250 segundos      |")
      escreva("\n| Mais de 11 números tempo ilimitado        |")
      escreva("\nQual a quantidade de tempo que você quer: ")
      leia(tempo)
      tempo *= 1000

    }

    funcao definir_tempo(inteiro a){
        enquanto(tempo > a){
          tempo_sabido()
            se(tempo > a){
              escreva("Tempo inválido para a quantidade de números, tente novamente!\n")
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
    //     escreva("Qual número você vai tentar: ")
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
    //     escreva("Qual número você vai tentar: ")
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
      escreva("Se prepare, o jogo vai começar em...")
      escreva("\n5")
      Util.aguarde(1500)
      escreva("\n4")
      Util.aguarde(1500)
      escreva("\n3")
      Util.aguarde(1500)
      escreva("\n2")
      Util.aguarde(1500)
      escreva("\n1")
      Util.aguarde(100)
      escreva("\nVai!\n")
    }
  }