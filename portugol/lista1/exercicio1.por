programa
{
	/*
	 * Faça um programa que leia os seguintes dados sobre as ligações telefônicas de um cliente: código do
cliente, quantidade de minutos falados e valor do minuto. Este programa deverá calcular o valor a ser
pago e exibir o código e o valor a ser pago pelo cliente.
	 */
	funcao inicio()
	{
		inteiro m,cod
		real valor,v1
		escreva("Codigo do cliente -> ")
		leia(cod)
		escreva("Quantidade de minutos falado: ")
		leia(m)
		escreva("Valor do minuto: ")
		leia(valor)
		v1=m*valor
		escreva("Codigo do cliente:",cod,"\nValor a ser pago:",v1)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 278; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */