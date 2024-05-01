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

    escreva("Você é mulher? ")
    leia(mulher)

    limpa()
    escreva("Seu nome é: ", nome, " você tem ", idade, " anos, com ", altura, " metros de altura e é ", mulher, " que você é mulher")
	}
}