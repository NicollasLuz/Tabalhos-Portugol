programa {
  funcao inicio() {
    inteiro n, f = 1, n1
    //f = fatorial, n = n�mero em que voc� deseja fazer a fatorial 
    //Pede o n
    escreva("Qual n�mero inteiro positivo voc� deseja fazer a fatorial: ")
    leia(n)
    //Como o valor do n�mero vai mudar, salvei em n1 par aimprimir no final qual foi o n�mero digitado
    n1 = n
    faca{
      //Falando que o valor da fatorial � fatorial vezes o n�mero 
      f = f * n
      //Diminuindo o n�mero para que a fatorial v� corredo em ordem decrescente
      n = n - 1
      //at� que o n�mero seja 1 que � o ultimo algarismo de toda fatorial vai repetir o c�digo dentro do fa�a
    } enquanto(n != 1)

    escreva("A Fatorial do n�mero ", n1," � de: ", f)
  }
}