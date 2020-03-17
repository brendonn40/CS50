programa
{

	/*
	 * https://youtu.be/j9473xQ39vY?list=PLHz_AreHm4dmSj0MHol_aoNYCSGFqvfXV
	 */
	inclua biblioteca Matematica --> mat
	funcao real media (real vetor[],inteiro qtd){
		real soma=0.0
			para(inteiro i=0;i<qtd;i++){
			soma+=vetor[i]
			}
		retorne soma/qtd	
		}
	funcao inicio()
	{
		caracter gabarito[5],respostas[5]
		cadeia alunos[3]
		real notas[3]

		escreva("Informe o gabarito das questoes\n----------------------------------\n")
		para(inteiro i=0;i<5;i++){
			escreva("Questao ",i+1,":")
			leia(gabarito[i])
			}
		escreva("Agora vamos colocar as respostas dos alunos.\n")
		para(inteiro i=0;i<3;i++){
			inteiro soma=0
			escreva("Aluno ",i+1,"\n")
			escreva("Nome: ")
			leia(alunos[i])
			para(inteiro j=0;j<5;j++){
				escreva("Questao ",j+1,": ")
				leia(respostas[i])
				se(respostas[i]==gabarito[i])
				{
					soma+=2 
					}
				}
			notas[i]=soma
			}
		escreva("Nome\t\tNota\n")	
		para(inteiro i=0;i<3;i++){
			escreva(alunos[i],"\t\t",notas[i],"\n")
		}
		
		escreva("Media da turma: ",mat.arredondar(media(notas,3), 2))		
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