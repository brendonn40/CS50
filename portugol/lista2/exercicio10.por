programa
{
	/*
	 * 10.Um concurso é avaliado por três jurados. Para evitar distorções, são desprezadas a maior e a menor
nota, ou seja, apenas uma nota é válida. Faça um programa que leia as 3 notas e exiba a nota válida.
Para facilitar, considere que as 3 notas fornecidas pelo usuário serão sempre diferentes entre si.
	 */
	funcao inicio()
	{
		inteiro n1,n2,n3
		escreva("Nota 1: ")
		leia(n1)
		escreva("Nota 2: ")
		leia(n2)
		escreva("Nota 3: ")
		leia(n3)

		se((n1>n2 e n1<n3) ou (n1>n3 e n1<n2))
		{
			escreva("Nota validada: ",n1)
			}
		se((n2>n1 e n2<n3) ou (n2>n3 e n2<n1))
		{
			escreva("Nota validada: ",n2)
			}
		se((n3>n1 e n3<n2) ou (n3>n2 e n3<n1))
		{
			escreva("Nota validada: ",n3)
			}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 320; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */