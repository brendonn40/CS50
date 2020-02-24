programa
{
	/*
	 * Faça um programa que leia as seguintes informações de um jogo de um campeonato de futebol: código
do time, quantidade de gols do time na partida, código do time adversário e quantidade de gols do time
adversário na partida. O programa deverá exibir uma mensagem indicando se o jogo empatou ou o
código do time vencedor da partida.
	 */
	funcao inicio()
	{
		inteiro c1,c2,g1,g2

		escreva("Codigo do time 1: ")
		leia(c1)
		escreva("Codigo do time 2: ")
		leia(c2)
		escreva("Quantidade de gols do time 1: ")
		leia(g1)
		escreva("Quantidade de gols do time 2: ")
		leia(g2)
		se(g1>g2)
		{
			escreva(c1," Vencedor.\n")
			}
		senao
		{
			se(g2>g1)
			{
				escreva(c2," Vencedor.\n")
				}
				senao
				{
					escreva("O jogo terminou empatado.\n")
					}
			}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 692; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */