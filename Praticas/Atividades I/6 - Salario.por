programa {
  funcao inicio() {
    inteiro hora, mes, sal

    escreva("Qual o valor que voc� ganha por hora: ")
    leia(hora)

    escreva("Qual a quantidade de horas que voc� trabalha por m�s: ")
    leia(mes)

    sal = mes * hora

    escreva("O seu sal�rio referente ao m�s � de: R$", sal, ".00")
  }
}
