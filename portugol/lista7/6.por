programa
{
	/*
	 * Faça um programa para processar os alunos de uma turma. Para cada aluno o programa deverá ler a
matrícula e as duas notas, calcular a média e exibir a matrícula, a média e a situação do aluno ("acima
da média da turma", " na média da turma" ou "abaixo da média da turma"). Término da leitura:
matrícula = 0. Faça uma função que receba como parâmetros a matrícula e a média de um aluno e a
média da turma e exiba a matrícula, a média e a situação do aluno. Considere que a turma possui, no
máximo, 40 alunos.
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
		inteiro matr[40],cont=0,matri=1
		real medias[40],media_t,n1,n2,soma=0.0

		enquanto(cont<40 e matri!=0){
			escreva("Aluno\n")
			escreva("Matr: ")
			leia(matri)
			se(matri!=0){
			escreva("Nota 1: ")
			leia(n1)
			escreva("Nota 2: ")
			leia(n2)
			medias[cont]=(n1+n2)/2
			matr[cont]=matri
			soma+=medias[cont]
			cont++ }
			}
		media_t=soma/cont
		para(inteiro i=0;i<=cont;i++){
			se(matr[i]!=0){
			situacaoAluno(matr[i],medias[i],media_t)
		}
			}
			
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 954; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */