programa
{
	/*
	 * Faça um programa para processar os 40 alunos de uma turma. Para cada aluno o programa deverá ler a
matrícula e as duas notas, calcular a média e exibir a matrícula, a média e a situação do aluno ("acima
da média da turma", " na média da turma" ou "abaixo da média da turma"). Faça uma função que
receba como parâmetros a matrícula e a média de um aluno e a média da turma e exiba a matrícula, a
média e a situação do aluno.
	 */
	funcao situacaoAluno(inteiro matr,real media,real media_turma){
		se(media>media_turma){
			escreva("Matr:",matr," media:",media,". O aluno esta acima da media da turma.\n")
			}
		senao se(media<media_turma){
			escreva("Matr:",matr," media:",media,". O aluno esta abaixo da media da turma.\n")
			} 
		senao{
			escreva("Matr:",matr," media:",media,". O aluno esta na media da turma.\n")
			}
		
		}
	funcao inicio()
	{
		inteiro matr[40]
		real medias[40],media_t,n1,n2,soma=0.0

		para(inteiro i=0;i<40;i++){
			escreva("Aluno ",i+1,"\n")
			escreva("Matr: ")
			leia(matr[i])
			escreva("Nota 1: ")
			leia(n1)
			escreva("Nota 2: ")
			leia(n2)
			medias[i]=(n1+n2)/2
			soma+=medias[i]
			}
		media_t=soma/40
		para(inteiro i=0;i<40;i++){
			situacaoAluno(matr[i],medias[i],media_t)
			}
			
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 620; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */