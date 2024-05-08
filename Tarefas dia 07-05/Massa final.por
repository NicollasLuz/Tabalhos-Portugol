programa {
  inclua biblioteca Matematica --> mat
  inclua biblioteca Util --> ut

  funcao inicio() {
    real constante_gravitacional = 6.67428, massa_corpo_1, massa_corpa_2, distancia_entre_corpos, forca_atracao, dt, cpf

    escreva("Qual a massa do corpo 1, em Kg: ")
    leia(massa_corpo_1)

    escreva("Qual a massa do corpo 2, em Kg: ")
    leia(massa_corpa_2)

    escreva("Qual a dist�ncia entre os corpos, em metros: ")
    leia(distancia_entre_corpos)
    dt = distancia_entre_corpos

    constante_gravitacional *= mat.potencia(10, -11)


    ut.aguarde(1000)
    limpa()
    aguarde()

    escreva("A f�rmula para calcular a quest�o �: F = G x massa do corpo 1 x massa do corpo 2 / dist�ncia entre os dois corpos ao quadrado\n")
    escreva("Com os dados forneciados a fica asim: F = ", constante_gravitacional, " x ((", massa_corpo_1, " x ", massa_corpa_2, ") / ", distancia_entre_corpos, " ^ 2)\n")

    //Incremento 1
    escreva("\nO passo a passo da quest�o �: \n")
    escreva("Escrever a f�rmula para ficar mais f�cil: ")
    escreva("F = G x massa do corpo 1 x massa do corpo 2 / dist�ncia entre os dois corpos ao quadrado\n\n")

    escreva("Substituir os valores na f�rmula: ")
    escreva("F = ", constante_gravitacional, " x ((", massa_corpo_1, " x ", massa_corpa_2, ") / ", distancia_entre_corpos, "�)\n\n")

    //Incremento 2
    distancia_entre_corpos = mat.potencia(distancia_entre_corpos, 2)
    escreva("O segundo passo �: Transformar os valores, come�amos pela dist�ncia entre os dois corpos que � pot�ncia")
    escreva("F = ", constante_gravitacional, " x ((", massa_corpo_1, " x ", massa_corpa_2, ") / ", distancia_entre_corpos, ")\n\n")

    escreva("O terceiro passo �: ELiminar os par�nteses: ")
    escreva("F = ", constante_gravitacional, " x ", massa_corpo_1 * massa_corpa_2, " / ", distancia_entre_corpos, "\n\n")

    escreva("O quarto passo �: Eliminar os primeiros par�ntrses vamos eleinimar o segundo: ")
    escreva("F = ", constante_gravitacional, " x ", (massa_corpo_1 * massa_corpa_2) /  distancia_entre_corpos, "\n\n")

    escreva("O ultimo passo �: Multiplicar G pelo resultado descoberto na divis�o:")
    escreva("F = ", constante_gravitacional * (massa_corpo_1 * massa_corpa_2) /  distancia_entre_corpos, "\n\n")

    forca_atracao = constante_gravitacional * ((massa_corpo_1 * massa_corpa_2) / distancia_entre_corpos)

    escreva("A for�a gravitacional entre os dois corpos com massa de : ", massa_corpo_1, " e ", massa_corpa_2, " com dist�ncia de ", dt, " tem a for�a de atra��o em Newtons de: ", forca_atracao)

    //Incremento 3
    escreva("A soma de todos os n�meros �: ", constante_gravitacional + massa_corpo_1 + massa_corpa_2 + distancia_entre_corpos)

    escreva("Me informa seu CPF por favor s� pra um negocinho: ")
    leia(cpf)
  }

  funcao aguarde(){
    inteiro i = 0
    enquanto(i != 6){
    escreva("Processando a conta\n")
    ut.aguarde(500)
    limpa()
    escreva("Processando a conta .\n")
    ut.aguarde(500)
    limpa()
    escreva("Processando a conta ..\n")
    ut.aguarde(500)
    limpa()
    escreva("Processando a conta ...\n")    
    ut.aguarde(500)
    limpa()
    i++
    }
  }
}
