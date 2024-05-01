programa {
  funcao inicio() {
        inteiro palavras, tamanho = 0, vogais = 0
        cadeia letra, rascunho
        escreva("Quantos letras tem sua palavra?")
        escreva("\n*Caso seja mais de uma palavra leve em consideração os espaços como caracter. \nAbaixo você poedra contar a quantidade de caracteres*\n")
        leia(rascunho)
        escreva("Qual foi o resultado fianl ai? ")
        leia(palavras)
       
        enquanto(tamanho != palavras) {
            escreva("\nQual a outra letra?")
            leia(letra)
                se(letra == ("a") ou letra == ("e") ou letra == ("i") ou letra == ("o") ou letra == ("u") ou
                   letra == ("A") ou letra == ("E") ou letra == ("I") ou letra == ("O") ou letra == ("U")) {
                    vogais ++
                }
                    tamanho ++
        }
        escreva("\nA quantidade de vogais na sua palavra é: ", vogais)
        
  }
}
