programa
{
	/*
	 * Faça um programa que leia dois números inteiros e exiba uma mensagem informando se o primeiro
número é divisível pelo segundo ou não.
	 */
	funcao inicio()
	{
		inteiro n1,n2
		escreva("Numero 1: ")
		leia(n1)
		escreva("Numero 2: ")
		leia(n2)
		se(n1%n2== 0)
		{
			escreva("O numero ",n1," eh divisivel por ",n2,".\n")
		}
		senao
	{
		escreva("O numero ",n1," nao eh divisivel por ",n2,".\n")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 336; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */