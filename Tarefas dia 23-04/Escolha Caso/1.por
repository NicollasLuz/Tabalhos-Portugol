programa {
  funcao inicio() {
    inteiro idade
    cadeia  nome

    escreva("Qual o nome do atleta: ")
    leia(nome)

    escreva("Qual a idade do ", nome, ": ")
    leia(idade)

    se(idade >= 5 e idade <= 10){
      idade = 1
    } senao se (idade >= 11 e idade <= 15){
      idade = 2
    } senao se (idade >= 16 e idade <= 20){
      idade = 3
    } senao se (idade >= 21 e idade <= 25){
      idade = 4
    }

    escolha(idade){
      caso 1: 
        escreva(nome, " é da categoria infantil")
      pare 
      caso 2: 
        escreva(nome, " é da categoria juvenil")
      pare
      caso 3: 
        escreva(nome, " é da categoria junior")
      pare 
      caso 4: 
        escreva(nome, " é da categoria profissional")
    }
  }
}
