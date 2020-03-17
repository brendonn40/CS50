programa
{

	/*
	 * Faça uma função que receba como parâmetros um vetor de números inteiros, já preenchido, e a
quantidade de números armazenados no vetor. Esta função deverá retornar a média dos números.
	 */
	funcao real media(inteiro vetor[],inteiro numeros){
		real result=0
		para(inteiro i=0;i<numeros;i++){
			result+=vetor[i]
			}
		retorne result/numeros	
		}
	funcao inicio()
	{
		inteiro vetor[3]
		para(inteiro i=0;i<3;i++){
			escreva("Digite um numero: ")
			leia(vetor[i])
			}
		escreva("A media desses numeros eh: ",media(vetor,3))
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 204; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */