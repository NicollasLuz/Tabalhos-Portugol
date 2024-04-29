/*
4 - Escreva um algoritmo que use vetores para 
armazenar as temperaturas registradas em diferentes 
dias de uma semana e depois calcule a temperatura média. 
*/
programa {
  funcao inicio() {
    inteiro tamanho
    caracter unidade
    real mediaC = 0, mediaF = 0

    escreva("Qual a quantidade de temperaturas que você quer registrar: ")
    leia(tamanho)

    real temperatura[tamanho]

    escreva("Você quer registrar as temperaturas em Celsius  ou Fahrenheit: ")
    leia(unidade)

    se(unidade == 'c'){
      para(inteiro i = 0; i != tamanho; i++){
        escreva("Qual é a ", i + 1, "° temperatura: ")
        leia(temperatura[i])
        mediaC += temperatura[i]
        mediaF += (temperatura[i] * 9 / 5) + 32
      }
    escreva("A media das temperaturas em graus Celsius é: ", mediaC / tamanho)
    escreva("\nE em graus Fahrenheit é: ", mediaF / tamanho)
    } senao se(unidade == 'f'){
        para(inteiro i = 0; i != tamanho; i++){
        escreva("Qual é a ", i + 1, "° temperatura: ")
        leia(temperatura[i])
        mediaF += temperatura[i]
        mediaC += (temperatura[i] - 32) * 5 / 9
      }
    escreva("A media das temperaturas em graus Fahrenheit é: ", mediaC / tamanho)
    escreva("\nE em graus Celsius  é: ", mediaF / tamanho)
    } senao {
      escreva("Unidade incorreta, tente novamente!")
    }
  }
}
