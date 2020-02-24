programa
{
	/*
	 * Um cliente pode efetuar o pagamento de sua compra de duas formas: em dinheiro ou em cartão de
crédito. Faça um programa que leia o valor da despesa de um cliente e a forma de pagamento (um
número inteiro). Caso o pagamento seja em dinheiro o programa deverá ler também o valor pago pelo
cliente e exibir o valor do troco. Caso o cliente efetue o pagamento em dinheiro, a forma de pagamento
é 1. Caso o cliente efetue o pagamento em cartão de crédito, a forma de pagamento é 2.
	 */
	
	funcao inicio()
	{
		inteiro forma
		real valor,troco
		escreva("Valor a ser pago: ")
		leia(valor)
		escreva("Forma de pagamento\n")
		escreva("1- Dinheiro\n2-Cartao de credito\n")
		leia(forma)
		se(forma == 1)
	{
		escreva("Quanto o cliente deu em dinheiro? ")
		leia(troco)
		escreva("Troco: ",(troco-valor),"\n")
		}
		escreva("Efetuando pagamento...")
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 819; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */