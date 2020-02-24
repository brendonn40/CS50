programa
{
	/*
	 * Faça um programa que leia três números inteiros e exiba o maior. Considere que os números são
diferentes.
	 */
	funcao inicio()
	{
		inteiro n1,n2,n3

		escreva("Numero 1: ")
		leia(n1)
		escreva("Numero 2: ")
		leia(n2)
		escreva("Numero 3: ")
		leia(n3)
		se(n1 > n2 e n1 > n3)
		{
			escreva("O numero 1 eh o maior.\n")
			
		}
		senao
		{
		se(n2> n1 e n2> n3)
		{
			escreva("O numero 2 eh o maior.\n")
			}
		senao
		{
			escreva("O numero 3 eh o maior.\n")
			}
		}		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 491; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */