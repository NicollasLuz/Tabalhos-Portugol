programa {
  funcao inicio() {
    inteiro cod, hrs = 0, st, el, sei

    escreva("Qual o c�digo do funcion�rio: ")
    leia(cod)

    escreva("Qual foi a qunatidade de horas trabalhadas: ")
    leia(hrs)

    se(hrs > 50){
      st = (hrs - 50) * 20
      sei = (st + hrs) * 10
    } senao {
      st = hrs * 10 
      sei = 0  
    }
    
    escreva("O sal�rio total � R$", sei,".00")
    escreva("\nO sal�rio exedente � R$", st,".00")
  }
}
