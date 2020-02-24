programa
{
	/*
	 * Faça um programa para processar os 100 funcionários de uma empresa. Para cada funcionário, o
programa deverá ler a matrícula e o salário. Ao final, o programa deverá exibir a matrícula e o salário do
funcionário que ganha o maior salário da empresa. Considere que não ocorrerá empate.
	 */
	
funcao inicio()
	{
		inteiro matr[100],i
		real salario[100],soma=0,maior=0

		para(i=0;i<=99;i++)
	{
		escreva("Digite a matricula do funcionario ",i+1,": ")
		leia(matr[i])
		escreva("Digite o valor do salario deste funcionario: ")
		leia(salario[i])
		}
		para(i=0;i<=99;i++)
		{
		soma+=salario[i]
		}
		para(i=0;i<=99;i++)
		{
			se(salario[i]>maior)
		{	
			maior=salario[i]
			
			}
			}
			escreva("Matricula \t\tSalario\n")
		para(i=0;i<=99;i++)
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
 * @POSICAO-CURSOR = 642; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */