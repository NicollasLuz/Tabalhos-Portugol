programa {
  funcao inicio() {
    real id 

    escreva("Qual o �ndice: ")
    leia(id)

    escolha(id){
      caso 0.3: 
        escreva("Grupo 1 deve suspender as atividades")
      pare
      caso 0.4: 
        escreva("Grupo 1 e 2 devem suspender as atividades")
      pare
      caso contrario:
        se(id >= 0.5){
        escreva("Todos os grupos devem suspender as atividades")
        } senao {
          escreva("�ndice bom")
        }
      pare
    }
  }
}
