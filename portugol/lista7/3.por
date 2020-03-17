programa
{
	/*
	 * Faça uma função que receba como parâmetros a quantidade de funcionários da empresa e 2 vetores, já
preenchidos, com as matrículas e os salários dos funcionários da empresa. Esta função deverá retornar
a matrícula do funcionário com o maior salário. Considere que não há empate.
	 */

	funcao inteiro retornaMaior(inteiro numero,inteiro matr[],real salarios[]){
		inteiro mat
		real maior=0.0
		para(inteiro i=0;i<numero;i++){
			se(salarios[i]>maior){
				maior=salarios[i]
				mat=matr[i]
				}
			}
		retorne mat
		}
	funcao inicio()
	{
		escreva("Olá Mundo")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 554; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */