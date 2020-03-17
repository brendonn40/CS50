programa
{

	/*
	 * https://youtu.be/j9473xQ39vY?list=PLHz_AreHm4dmSj0MHol_aoNYCSGFqvfXV
	 */
	funcao inicio()
	{
		cadeia times[3]

		para(inteiro i=0;i<3;i++){
			escreva("Digite o nome do ",i+1,"o time: ")
			leia(times[i])
			}
		para(inteiro i=0;i<3;i++){
			para(inteiro j=0;j<3;j++){
				se(times[i]!= times[j]){
				escreva(times[i],"\t[ ] x [ ] ",times[j],"\n")
				}
				}
			}	
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 88; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */