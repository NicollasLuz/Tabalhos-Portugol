programa {
  inclua biblioteca Matematica --> mat
  funcao inicio() {
    real a, b, c, delta, x1, x2, raiz_quadrada

     escreva("Qual o valor de a:")
        leia(a) 
        escreva("Qual o valor de b:")
        leia(b) 
        escreva("Qual o valor de c:")
        leia(c) 

        delta = (b * b) - (4 * a * c)
        
        raiz_quadrada = mat.raiz(delta, 2.0)

        se (delta <= 0 ou a == 0) {
            escreva("Impossível continuar a expressão")
        } senao {
            x1 = (-b + raiz_quadrada) / (2 * a)
            x2 = (-b - raiz_quadrada) / (2 * a)
            escreva("\nO resltado de x uma linha é: ", x1)
            escreva("\nO resltado de x duas linha é: ", x2)
        }
  }
}
