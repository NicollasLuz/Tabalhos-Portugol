/*
Descreva um algoritmo que use a estrutura de "escolha caso" 
para determinar a classificação de um filme com base na idade 
do espectador (por exemplo, livre, 12 anos, 14 anos, 18 anos).
*/
programa {
    inteiro id
  funcao inicio() {
    idade()

    classificacao()

    escolha(id){
      caso 0:
        escreva("Você pode assistir apenas filmes livres")
      pare
      caso 1:
        escreva("Você pode assistir filmes com classificação de 12 anos e livre")
      pare
      caso 2:
        escreva("Você pode assistir filmes com classificação de 14 anos, 12 anos e livre")
      pare
      caso 3:
      escreva("Você pode assitir todos os filmes")
      pare
    }
  }
  funcao idade(){
    escreva("Qual sua idade: ")
    leia(id)      
  }
  funcao classificacao(){
    logico livre = (id < 12), doze = (id >= 12 e id < 14), quatorze = (id >= 14 e id < 18), dezoito = (id >= 18) 

    se(livre){
      id = 0
    } senao se(doze){
      id = 1
    } senao se(quatorze){
      id = 2
    } senao se(dezoito){
      id = 3
    }
  }
}
