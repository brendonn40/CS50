programa
{

	/*
	 * 1) Faça uma função que calcula a soma e o produto de 2 números inteiros. A função recebe como
parâmetro dois números inteiros e coloca os valores da soma e do produto nas variáveis cujos
endereços são fornecidos na chamada da função.
	 */

	funcao somaproduto(inteiro a,inteiro b,inteiro &soma,inteiro &produto)
	{
		soma=a+b
		produto=a*b
	
		}
	funcao inicio()
	{    inteiro soma=0,produto=0
		somaproduto(10,20,soma,produto)
		escreva("Soma: ",soma,"\nProduto: ",produto)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 493; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */