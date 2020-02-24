programa
{
	/*
	 * Considerando a existência de notas (cédulas) nos valores R$ 100, R$ 50, R$ 20, R$ 10, R$ 5, R$ 2 e R$ 1,
escreva um programa que leia um valor inteiro em reais (R$) e determine o menor número de notas
para se obter o montante fornecido. O seu programa deve exibir o número de notas para cada um dos
valores de nota existentes.
	 */
	
	funcao inicio()
	{
		inteiro valor,notas[7]={100,50,20,10,5,2,1},contador,qtd[7]
		escreva("Digite o valor: ")
		leia(valor)
		para(contador=0;contador < 7;contador++)
	{	
		se(valor/notas[contador] > 0)
	{
		qtd[contador]=valor/notas[contador]
		valor= valor %notas[contador]
		}
		senao
		{
			qtd[contador]=0
			}
		}
		escreva("Quantidade\t\tNota\n")
		para(contador=0;contador < 7;contador++) 
	{
		escreva(qtd[contador],"\t\t\t",notas[contador],"\n")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 8; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */