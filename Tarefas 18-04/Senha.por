programa {
  funcao inicio() {
    cadeia senhaReal = "senha123", senha
    inteiro i = 0

    faca{
      escreva("Tente acertar a senha: ")
      leia(senha)
      
      i++ 

      se(i == 3){
        escreva("**Dica: A senha tem 8 digitos**\n")
      } senao se( i == 6){
        escreva("**Dica: A senha tem 8 digitos, 5 letras e 3 n�meros**\n")
      } senao se(i == 9){
        escreva("**Dica: A primeira letra � 's' e o ultimo n�mero � 3 **\n")
      } senao se( i == 12){
        escreva("**Dica: o formato da senha � 's****003' **\n")
      } senao se(i == 15){
        escreva("**Dica: os ultimos n�meros s�o '123'**\n")
      } senao se (i == 20){
        escreva("**Dica: Desiste**\n")
      }

    }enquanto(senha != senhaReal)

    escreva("Parab�ns, voc� acertou a senha!!!")

  }
}