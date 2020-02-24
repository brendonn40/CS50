programa
{
	/*
	 Faça um programa que leia os dados sobre as vendas de combustíveis de um posto de gasolina, calcule
e exiba o valor arrecadado pelo posto com as vendas de gasolina, com as vendas de álcool e o total
geral arrecadado. Os dados sobre as vendas de combustíveis do posto são: preço do litro da gasolina,
quantidade de litros vendidos de gasolina, preço do litro do álcool e quantidade de litros vendidos de
álcool.
	 */
	
	funcao inicio()
	{
		inteiro venda_a,venda_g
		real gas,alc,valor
		escreva("Litros de gasolina vendidos -> ")
		leia(venda_g)
		escreva("Litros de alcool vendidos -> ")
		leia(venda_a)
		escreva("Preco do litro da gasolina -> ")
		leia(gas)
		escreva("Preco do litro do alcool -> ")
		leia(alc)
		valor=(gas*venda_g)+(alc*venda_a)
		escreva("Valor arrecadado com a venda de gasolina -> ",gas*venda_g,"\n")
		escreva("Valor arrecadado com a venda de alcool -> ",alc*venda_a,"\n")
		escreva("Valor total -> ",valor)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 427; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */