programa
{
	/*
	 * Faça um programa que leia o valor da compra de um cliente e o tipo de pagamento (1-à vista ou 2-
parcelado), calcule e exiba o valor da parcela, caso o tipo de pagamento seja igual a 2 (parcelado). O
programa deverá ler também, para o tipo de pagamento parcelado, a quantidade de parcelas. O
programa deverá utilizar a função parcelamento, caso o tipo de pagamento seja igual a 2, que recebe
como parâmetros o valor da compra e a quantidade de parcelas, calcula e exibe o valor da parcela.
	 */

	funcao parcelamento(real valor,real parcelas){
		 real p
		 p=valor/parcelas
		 escreva(parcelas," x de R$: ",p)
		 

		
		}
	funcao inicio()
	{
		inteiro tipo,parcelas
		real valor
		escreva("Digite o valor da compra: ")
		leia(valor)
		escreva("Escolha o tipo de pagamento\n1-A vista\n2-Parcelado\n")
		leia(tipo)
		se(tipo==2){
		escreva("Digite a quantidade de parcelas: ")
		leia(parcelas)
		parcelamento(valor,parcelas)
		}
		senao
		{
			escreva("Pagamento efetuado.")
			}
		
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 984; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */