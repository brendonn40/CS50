programa
{
	/*
	 * Faça um programa que leia dois números inteiros e exiba o maior ou uma mensagem indicando que os
números são iguais.
	 */
	funcao inicio()
	{
		inteiro n1,n2
		escreva("Numero 1: ")
		leia(n1)
		escreva("Numero 2: ")
		leia(n2)
		se(n1==n2)
		{
			escreva("Os numeros digitados sao iguais.\n")
			}
		senao
		{
			se(n1 > n2)
			{
				escreva("O numero 1 eh maior que o numero 2.\n")
			
				}
			senao
			{
				escreva("O numero 2 eh maior que o numero 1.\n")
				}
				
			}
		}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 477; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */