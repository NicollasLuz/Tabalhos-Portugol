programa {
  funcao inicio() {
    inteiro ano

    escreva("Digite um ano: ")
    leia(ano)

    se (ano % 4 == 0){
      se (ano % 400 == 0){
        bi()
      } senao se (ano % 100 == 0){
        nbi()
      } senao{
        bi()
      }
    } senao {
      nbi()
    }
  }
  funcao bi(){
    escreva("O ano � bissexto, tem 366 dias")
  }
  funcao nbi(){
    escreva("O ano n�o � bissexto, tem 365 dias")
  }
}
