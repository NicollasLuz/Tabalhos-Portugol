programa {
    inclua biblioteca Matematica --> mat

    funcao inicio() {
        real concentracao_H

        escreva("Por favor, digite a concentra��o de �ons H+ em mol/L: ")
        leia(concentracao_H)

        real pH = mat.logaritmo(concentracao_H, 10)
        pH = pH * -1

        escreva("O pH da solu��o aquosa �: ", pH)
    }
}
