programa
{
	
	funcao inicio()
	{
		cadeia nome
		inteiro idade
		real altura
		logico mulher

		escreva("Qual seu nome: ")
    leia(nome)

    escreva("Qual sua idade: ")
    leia(idade)

    escreva("Qual sua altura: ")
    leia(altura)

    escreva("Voc� � mulher? ")
    leia(mulher)

    limpa()
    escreva("Seu nome �: ", nome, " voc� tem ", idade, " anos, com ", altura, " metros de altura e � ", mulher, " que voc� � mulher")
	}
}