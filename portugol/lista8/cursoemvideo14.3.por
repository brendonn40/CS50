programa
{
	/*
	 * https://youtu.be/j9473xQ39vY?list=PLHz_AreHm4dmSj0MHol_aoNYCSGFqvfXV
	 */
	funcao inteiro pegaIndice(cadeia vetor[],cadeia procura){
		inteiro posicao=-1
		para(inteiro i=0;i<10;i++){
			se(vetor[i]==procura){
				posicao=i
			}
			}
		retorne posicao	 
			
		} 
	funcao inicio()
	{
		cadeia vetor[10],reservada[10]
		caracter resp='s'
		cadeia cadeira
		inteiro indice
		para(inteiro i=0;i<10;i++){
			vetor[i]="[ B "+(i+1)+" ]"
			}
		para(inteiro i=0;i<10;i++){
			escreva(vetor[i]," ")
			}
		escreva("\n---------------------------------------------------------------------------------\n")
		enquanto(resp=='s' ou resp=='S'){
			escreva("Reservar a cadeira: ")
			leia(cadeira)
			indice=pegaIndice(vetor,cadeira)
			se(indice >= 0 e indice <10 ){
				vetor[indice]="[---]"
				}
				senao{
					escreva("Erro.")
					}
				}
			limpa()
			para(inteiro i=0;i<10;i++){
			escreva(vetor[i]," ")
			escreva("Deseja reservar outra cadeira:[s]/[n]")
			leia(resp)
			}
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 435; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */