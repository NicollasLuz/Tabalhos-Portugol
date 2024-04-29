programa {
  funcao inicio() {
    inteiro hora, mes, sal

    escreva("Qual o valor que você ganha por hora: ")
    leia(hora)

    escreva("Qual a quantidade de horas que você trabalha por mês: ")
    leia(mes)

    sal = mes * hora

    escreva("O seu salário referente ao mês é de: R$", sal, ".00")
  }
}
