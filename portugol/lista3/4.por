programa
{
	/*
	 * Faça um programa para processar os 100 funcionários de uma empresa. Para cada funcionário, o
programa deverá ler a matrícula e o salário. Ao final, o programa deverá exibir a matrícula e o salário do
funcionário que ganha o maior salário da empresa. Considere que não ocorrerá empate.
	 */
	const inteiro tamanho=100
funcao inicio()
	{
		inteiro matr[tamanho],i
		real salario[tamanho],soma=0,maior=0

		para(i=0;i<tamanho;i++)
	{
		escreva("Digite a matricula do funcionario ",i+1,": ")
		leia(matr[i])
		escreva("Digite o valor do salario deste funcionario: ")
		leia(salario[i])
		}
		para(i=0;i<tamanho;i++)
		{
		soma+=salario[i]
		}
		para(i=0;i<tamanho;i++)
		{
			se(salario[i]>maior)
		{	
			maior=salario[i]
			
			}
			}
			escreva("Matricula \t\tSalario\n")
		para(i=0;i<tamanho;i++)
		{
			escreva(matr[i],"\t\t\t",salario[i],"\n")
			}

	
		escreva("O maior salario eh: ",maior,"\n")	
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 441; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */