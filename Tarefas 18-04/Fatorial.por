programa {
  funcao inicio() {
    inteiro n, f = 1, n1
    //f = fatorial, n = número em que você deseja fazer a fatorial 
    //Pede o n
    escreva("Qual número inteiro positivo você deseja fazer a fatorial: ")
    leia(n)
    //Como o valor do número vai mudar, salvei em n1 par aimprimir no final qual foi o número digitado
    n1 = n
    faca{
      //Falando que o valor da fatorial é fatorial vezes o número 
      f = f * n
      //Diminuindo o número para que a fatorial vá corredo em ordem decrescente
      n = n - 1
      //até que o número seja 1 que é o ultimo algarismo de toda fatorial vai repetir o código dentro do faça
    } enquanto(n != 1)

    escreva("A Fatorial do número ", n1," é de: ", f)
  }
}