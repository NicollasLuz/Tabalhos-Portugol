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

  //Função para exibir o menu princial com as opções possíveis   
  funcao menuPrincipal(){
    escreva("Qual opção você deseja selecionar?\n")
		escreva(" 1 - Inserir dados\n")
		escreva(" 2 - Calcular dados\n")
		escreva(" 3 - Visualizar dados\n")
		escreva(" 4 - Sair\n")
    leia(opcao)

    escolha(opcao){
      caso 1: 
        //Negócio pra saber o tamanho dos vetores de nome, distancia e coordenadas dos pontos de referências
        escreva("Qual a quantidade de pontos que você quer inserir: ")
        leia(quantidadeDePontos)
        cadeia nomePontos[quantidadeDePontos]
        real distanciaPontos[quantidadeDePontos], coordenadasPontos[quantidadeDePontos]
        //Passa os vetores dos pontos de referências
        entradaDados(nomePontos, distanciaPontos, coordenadasPontos)
      
      caso 2: 
        calculos()

      caso 3: 
        vizualizarDados()

      caso 4: 
        finalizarPrograma()

      caso contrario:  
        escreva("Opção inválida, tente novamente!")
        menuPrincipal()
    }
  }

  funcao entradaDados(cadeia nomePontos[], real distanciaPontos[], real coordenadasPontos[]) {
    enquanto(continuar != '.'){
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

    para(inteiro i = 0; i != quantidadeDePontos; i++){
      escreva("Nome do ponto de referência: ")
      leia(nomePontos[i])
      escreva("Coordenadas do ponto de referência: ")
      leia(coordenadasPontos[i])
      escreva("Distância até o próximo ponto: ")
      leia(distanciaPontos[i])
    }

    limpa()
    menuPrincipal() 
    // enquanto(continuar != '.'){
    //   escreva("Você deseja continuar <s/n>: ")
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
