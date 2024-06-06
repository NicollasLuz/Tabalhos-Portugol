programa {	
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
      escolha(opcao){
        caso 1: 
          //Cololcar isso na hr que for selecionado a opção de inserir dados
          escreva("Qual a quantidade de pontos que você quer inserir: ")
          leia(quantidadeDePontos)
          cadeia nomePontos[quantidadeDePontos]
          real distanciaPontos[quantidadeDePontos], coordenadasPontos[quantidadeDePontos]
          entradaDados(nomePontos, distanciaPontos, coordenadasPontos)
          //Até aqui
        
        caso 2: 
          calculos()
      }
  }

  funcao menuPrincipal(){
    escreva("Qual opção você deseja selecionar?\n")
		escreva(" 1 - Inserir dados\n")
		escreva(" 2 - Calcular dados\n")
		escreva(" 3 - Visualizar dados\n")
		escreva(" 4 - Sair\n")
    leia(opcao)
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

  enquanto(continuar != '.'){
    escreva("Você deseja continuar <s/n>: ")
    leia(continuar)
      se(continuar == 'n'){
        continuar = '.'
      } senao se (continuar == 's'){
        continuar = ','
        }
      }
    }
  }

  funcao calculos(){

  }

  funcao alterarDados(){
    
  }
}
