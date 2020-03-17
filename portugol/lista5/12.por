programa
{
/*
 * Faça um programa, utilizando a função abaixo, para processar os 20 jogos de um campeonato de
futebol. Para cada jogo, o programa deverá ler o código do time, a quantidade de gols do time na
partida, o código do time adversário e a quantidade de gols do time adversário na partida e exibir o
resultado da partida. Faça uma função que receba como parâmetro o código do time, a quantidade de
gols do time na partida, código do time adversário e a quantidade de gols do time adversário na partida.
Esta função deverá exibir o resultado da partida. O resultado da partida é uma mensagem indicando
que o jogo empatou ou o código do time vencedor da partida.
 */


	
	funcao vencedor(inteiro c1,inteiro g1,inteiro c2,inteiro g2){

		se(g1 == g2){
			escreva("O time ",c1," empatou com o time ",c2,".\n")
			}
		senao se(g1> g2){
			escreva("O time ",c1," venceu o time ",c2,".\n")
			}
			senao{
				escreva("O time ",c2," venceu o time ",c1,".\n")
				}
			
		
		}
	funcao inicio()
	{
		inteiro cod1,cod2,gols1,gols2

		para(inteiro i=0;i<20;i++){

			escreva("Codigo do time: ")
			leia(cod1)
			escreva("Quantidade de gols: ")
			leia(gols1)
			escreva("Codigo do time: ")
			leia(cod2)
			escreva("Quantidade de gols: ")
			leia(gols2)
			vencedor(cod1,gols1,cod2,gols2)
			
			
			}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 668; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */