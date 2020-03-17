programa
{
	
	/*
	 * recebe 40 numeros, guarda num vetor e depois retorna  a soma desses numeros.
	 */
	funcao inicio()
	{
		inteiro soma=0,vetor[40] //defini soma como 0 para iniciar a variavel.

		para(inteiro i=0;i<40;i++)
		{
			escreva("Digite um numero: ")
			leia(vetor[i])
			soma+=vetor[i]

			}
		escreva("A soma de todos numeros eh: ",soma)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 195; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */