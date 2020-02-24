programa
{
	/*
	 * Uma empresa aérea está fornecendo desconto nas tarifas. A empresa deseja saber o valor do desconto
e o valor a ser pago pelo cliente. Faça um programa que leia o preço da tarifa e a quantidade de
passagens desejadas e exiba o valor total do desconto e o valor a ser pago pelo cliente. O desconto
fornecido de acordo com a quantidade de passagens é calculado da seguinte forma:
 Até 2 passagens  desconto 10% no valor das passagens
 De 3 até 5 passagens  desconto 15% no valor das passagens
 Acima de 5 passagens  desconto 25% no valor das passagens
	 */
	funcao inicio()
	{
	
		inteiro qtd_p
		real preco,valor,desconto=0
		escreva("Informe o preco da passagem: ")
		leia(preco)
		escreva("Quantidade de passagens: ")
		leia(qtd_p)

		se(qtd_p > 0 e qtd_p <=2)
		{
			desconto=qtd_p*preco*0.1
			}
		
		se(qtd_p >=3 e qtd_p<= 5)
			{
			desconto=qtd_p*preco*0.15
				}
				
		se(qtd_p >5)
		{
			desconto=qtd_p*preco*0.25
					}
					
			
		valor=(qtd_p*preco)-desconto
		escreva("Valor a ser pago: ",valor,"\n")
		escreva("Valor descontado: ",desconto,"\n")
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 808; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */