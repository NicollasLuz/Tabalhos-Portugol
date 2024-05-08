programa {
    inclua biblioteca Matematica --> mat

    funcao inicio() {
        real concentracao_H

        escreva("Por favor, digite a concentração de íons H+ em mol/L: ")
        leia(concentracao_H)

        real pH = mat.logaritmo(concentracao_H, 10)
        pH = pH * -1

        escreva("O pH da solução aquosa é: ", pH)
    }
}
