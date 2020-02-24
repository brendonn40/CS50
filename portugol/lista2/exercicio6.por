programa
{
	/*
	 * Faça um programa que leia a matrícula e as duas notas de um aluno, calcule a média aritmética e exiba
a matrícula, a média, a situação (“aprovado”: média >= 5.0, “reprovado”: média < 3.0 ou “em final”: 5.0
> média >=3.0) e a mensagem “parabéns” (caso a média do aluno seja acima de 9.0).
	 */
	funcao inicio()
	{
		inteiro matr
		real n1,n2,med
		escreva("Matricula do aluno: ")
		leia(matr)
		escreva("Primeira nota: ")
		leia(n1)
		escreva("Segunda nota: ")
		leia(n2)
		med=(n1+n2)/2
		se(med >=5)
		{
			escreva("Aprovado.\n")
			}
		
		se(med <3)
			{
				escreva("Reprovado.\n")
				
				}
		se(med >=3 e med <5)
			{
				escreva("Em final.\n")
				}
		se(med > 9)
			{
				escreva("Parabens!!")
				}	
			
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 736; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */