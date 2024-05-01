programa {
  funcao inicio() {
    real nota1, nota2, nota3, media
    escreva("Qual a nota 1: ")
    leia(nota1)

    escreva("Qual a nota 2: ")
    leia(nota2)

    escreva("Qual a nota 3: ")
    leia(nota3)  

    media=(nota1+nota2+nota3)/3
    
    se(media>=7){
    escreva("\nAluno aprovado")
    } senao se(media >=5){
      escreva("\nAluno em prova final")
      media = 10 - media
      se(media > 7){
        escreva("\nAluno passou de ano")
        escreva("\nA média final fiocu em ", media)
      }
    } senao se(media < 4.9){
      escreva("\nAluno em recuperacao")
      media = (10 - media) + 2
      se(media > 7){
        escreva("\nAluno passou de ano")
        escreva("\nA média final fiocu em ", media)
      }
    } senao {
      escreva("\nNotas inválidas")
    }
  }
}
