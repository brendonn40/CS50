programa
{
	/*
	 * Faça uma função que receba como parâmetros a quantidade de funcionários da empresa, o salário
médio da empresa e 2 vetores, já preenchidos, com as matrículas e os salários dos funcionários. Esta
função deverá exibir a matrícula dos funcionários que ganham acima do salário médio da empresa.
	 */
	funcao acimaMedia(inteiro qtd_func,real salario_medio,inteiro matr[],real salarios[]){
		para(inteiro i=0;i<qtd_func;i++){
			se(salarios[i]>salario_medio){
				escreva("Matr\t\tSalario\n",matr[i],"\t\t",salarios[i])
				}
			}
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
 * @POSICAO-CURSOR = 595; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */