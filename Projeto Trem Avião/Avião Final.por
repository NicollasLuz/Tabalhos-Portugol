programa {	
  inclua biblioteca Util --> ut

  inteiro opcao, fusoOrigem, fusoDestino, quantidadeDePontos
  cadeia aeroportoOrigem, aeroportoDestino
  real horarioDecolagemUTC, velocidadeCruzeiro
  caracter continuar = ' '

	funcao inicio() {

		escreva("Seja bem vindo!\n")
    escolherOpcao()
	}
  
  funcao escolherOpcao() {
      menuPrincipal()

  }

  //Fun��o para exibir o menu princial com as op��es poss�veis   
  funcao menuPrincipal(){
    escreva("Qual op��o voc� deseja selecionar?\n")
		escreva(" 1 - Inserir dados\n")
		escreva(" 2 - Calcular dados\n")
		escreva(" 3 - Visualizar dados\n")
		escreva(" 4 - Sair\n")
    leia(opcao)

    escolha(opcao){
      caso 1: 
        //Neg�cio pra saber o tamanho dos vetores de nome, distancia e coordenadas dos pontos de refer�ncias
        escreva("Qual a quantidade de pontos que voc� quer inserir: ")
        leia(quantidadeDePontos)
        cadeia nomePontos[quantidadeDePontos]
        real distanciaPontos[quantidadeDePontos], coordenadasPontos[quantidadeDePontos]
        //Passa os vetores dos pontos de refer�ncias
        entradaDados(nomePontos, distanciaPontos, coordenadasPontos)
      
      caso 2: 
        calculos()

      caso 3: 
        vizualizarDados()

      caso 4: 
        finalizarPrograma()

      caso contrario:  
        escreva("Op��o inv�lida, tente novamente!")
        menuPrincipal()
    }
  }

  funcao entradaDados(cadeia nomePontos[], real distanciaPontos[], real coordenadasPontos[]) {
    enquanto(continuar != '.'){
    escreva("Insira o c�digo do aeroporto de origem: ")
    leia(aeroportoOrigem)
    escreva("Insira o c�digo do aeroporto de destino: ")
    leia(aeroportoDestino)
    escreva("Insira o fuso hor�rio GMT do aeroporto de origem: ")
    leia(fusoOrigem)
    escreva("Insira o fuso hor�rio GMT do aeroporto de destino: ")
    leia(fusoDestino)
    escreva("Insira o hor�rio de decolagem em UTC: ")
    leia(horarioDecolagemUTC)
    escreva("Insira a velocidade de cruzeiro em n�s (kt): ")
    leia(velocidadeCruzeiro)
    escreva("Insira os pontos de refer�ncia (nome, coordenadas, dist�ncia at� o pr�ximo ponto): \n")

    para(inteiro i = 0; i != quantidadeDePontos; i++){
      escreva("Nome do ponto de refer�ncia: ")
      leia(nomePontos[i])
      escreva("Coordenadas do ponto de refer�ncia: ")
      leia(coordenadasPontos[i])
      escreva("Dist�ncia at� o pr�ximo ponto: ")
      leia(distanciaPontos[i])
    }

    limpa()
    menuPrincipal() 
    // enquanto(continuar != '.'){
    //   escreva("Voc� deseja continuar <s/n>: ")
    //   leia(continuar)
    //     se(continuar == 'n'){
    //       continuar = '.'
    //     } senao se (continuar == 's'){
    //       continuar = ','
    //       }
    //     }
    }
  }

  funcao calculos(){
    
  }

  funcao vizualizarDados(){
    
  }

  funcao finalizarPrograma(){
    para(inteiro j = 0; j != 4; j++){
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
