programa
{
	/*
	 * Faça um programa que inicialmente leia a quantidade de candidatos de um concurso. A seguir, para
cada candidato, o programa deverá ler a sua nota e exibir se o candidato foi aprovado ou reprovado.
Para ser aprovado, o candidato deverá ter nota superior a 80. Ao final o programa deverá exibir a
quantidade de aprovados e a quantidade de reprovados.
	 */
	funcao inicio()
	{
		inteiro qtd,ap=0,rp=0,nota

		escreva("Digite a quantidade de candidatos: ")
		leia(qtd)
		para(inteiro i=0;i<qtd;i++)
		{	
			escreva("Nota do candidato ",i+1,":")
			leia(nota)
			se(nota >80)
			{
				ap+=1
				}
			senao
			{
				rp+=1
				}
			}
		escreva("Aprovados: ",ap,"\nReprovados: ",rp)
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 692; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */