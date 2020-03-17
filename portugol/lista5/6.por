programa
{
	/*
	 * Faça um programa que leia três números inteiros que serão fornecidos pelo usuário, calcule e exiba a
soma e a média dos números. Este programa deverá utilizar as seguintes funções:
a) calcula_soma: recebe como parâmetros os 3 números inteiros, calcula, exibe e retorna a soma.
b) calcula_media: recebe como parâmetro a soma dos números, calcula e exibe a média.
	 */
	 funcao inteiro calcula_soma(inteiro a,inteiro b, inteiro c){
		retorne a+b+c
		
		}
	funcao calcula_media(inteiro soma){
		escreva("Media: ",soma/3)
		}
	funcao inicio()
	{
		inteiro vetor[3]
		para(inteiro i=0;i<3;i++)
		{
			escreva("Numero ",i+1,":")
			leia(vetor[i])
			}
		escreva("Soma: ",calcula_soma(vetor[0],vetor[1],vetor[2]),"\n")
		calcula_media(calcula_soma(vetor[0],vetor[1],vetor[2]))
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 684; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */