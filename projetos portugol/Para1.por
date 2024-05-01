programa {
  funcao inicio() {
    inteiro id, idm = 0, idMeno = 200, i
    cadeia nome, nomem, nomeMeno

    para(i = 0; i < 3; i++){
      escreva("Qual seu nome: ")
      leia(nome)
      escreva("Qual sua idade: ")
      leia(id)
      se(id > idm){
        idm = id
        nomem = nome
      }
      se(id < idMeno){
        idMeno = id
        nomeMeno = nome
      }
    }
    escreva("A maior idade foi do(a) ", nomem, " com ", idm, " anos")
    escreva("\nA menor idade foi do(a) ", nomeMeno, " com ", idMeno, " anos")
  }
}
