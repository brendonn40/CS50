programa
{
	/*
	 * Faça uma função que receba como parâmetros um vetor de números inteiros, já preenchido, e a
quantidade de números armazenados no vetor. Esta função deverá calcular a quantidade de números
pares e a quantidade de números ímpares, armazenando-as nas variáveis cujos endereços são
fornecidos na chamada da função.
	 */
	funcao par(inteiro vetor[],inteiro &pa[],inteiro &imp[],inteiro numeros){
		para(inteiro i=0;i<numeros;i++){
			se(vetor[i]%2==0){
				pa[i]=vetor[i]
				}
				senao{
					imp[i]=vetor[i]
					}
				
			}
		
		}
	funcao inicio()
	{
		inteiro vetor[10],pares[100],impar[100]
		
		para(inteiro i=0;i<10;i++){

			escreva("Digite um numero: ")
			leia(vetor[i])
			}
		par(vetor,pares,impar,10)

		escreva("Pares:\n")
		para(inteiro i=0;i<10;i++){
			se(pares[i]!=0){
			escreva(pares[i],"\n")}
			}
		escreva("Impares:\n")	
		para(inteiro i=0;i<10;i++){
			se(impar[i]!=0){
			escreva(impar[i],"\n")}
			}
				
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 939; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */