programa {
  funcao inicio() {
    inteiro i
    real a, b, c

    escreva("Escreva qual o valor de I, 1, 2 ou 3: ")
    leia(i)
    escreva("Escreva qual o valor de a: ")
    leia(a)
    escreva("Escreva qual o valor de b, que seja diferente de a: ")
    leia(b)
    escreva("Escreva qual o valor de c, que seja diferente de a ou b: ")
    leia(c)

    escolha(i){
      caso 1: 
        se(a > b e a > c e b > c){
          escreva("\n", a)
          escreva("\n", b)
          escreva("\n", c)
        } 
        se(a > b e a > c e c > b){
          escreva("\n", a)
          escreva("\n", c)
          escreva("\n", b)
        } 
        se(b > a e b > c e a > c){
          escreva("\n", b)
          escreva("\n", a)
          escreva("\n", c)
        }
        se(b > a e b > c e c > a){
          escreva("\n", b)
          escreva("\n", c)
          escreva("\n", a)
        }
        se(c > a e c > b e a > b){
          escreva("\n", c)
          escreva("\n", a)
          escreva("\n", b)
        }
        se(c > a e c > b e b > a){
          escreva("\n", c)
          escreva("\n", b)
          escreva("\n", a)
        }
      pare
      caso 2:
          se(a < b e a < c e b < c){
          escreva("\n", a)
          escreva("\n", b)
          escreva("\n", c)
        } 
        se(a < b e a < c e c < b){
          escreva("\n", a)
          escreva("\n", c)
          escreva("\n", b)
        } 
        se(b < a e b < c e a < c){
          escreva("\n", b)
          escreva("\n", a)
          escreva("\n", c)
        }
        se(b < a e b < c e c < a){
          escreva("\n", b)
          escreva("\n", c)
          escreva("\n", a)
        }
        se(c < a e c < b e a < b){
          escreva("\n", c)
          escreva("\n", a)
          escreva("\n", b)
        }
        se(c < a e c < b e b < a){
          escreva("\n", c)
          escreva("\n", b)
          escreva("\n", a)
        }
      pare
      caso 3:
        se(a > b e a > c){
          escreva(b)
          escreva(a)
          escreva(c)
        }
        se(b > a e b > c){
          escreva(a)
          escreva(b)
          escreva(c)
        }
        se(c > a e c > b){
          escreva(a)
          escreva(c)
          escreva(b)
        }
      pare
      caso contrario: 
        escreva("O número precisa ser 1, 2 ou 3!!!")
      pare
    }
  }
}