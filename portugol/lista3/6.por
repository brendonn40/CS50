programa
{
	/*
	 * Faça um programa que inicialmente leia a quantidade de vôos de um aeroporto. A seguir, o programa
deverá ler, para cada vôo, o horário previsto de chegada (2 valores inteiros: horas e minutos) e o horário
efetivo de chegada (2 valores inteiros: horas e minutos) e exibir se o vôo adiantou, chegou no horário
ou atrasou.
	 */
	
	funcao inicio()
	{
		inteiro qtd,hp,mp,he,me,h1,h2
		escreva("Digite a quantidade de voos: ")
		leia(qtd)
		para(inteiro i=0;i<qtd;i++)
	{
		escreva("Previsto\n")
		escreva("Horas: ")
		leia(hp)
		escreva("Minutos: ")
		leia(mp)
		escreva("Efetivo\n")
		escreva("Horas: ")
		leia(he)
		escreva("Minutos: ")
		leia(me)
		h1=hp*60+mp
		h2=he*60+me
		se(h1==h2)
		{
			escreva("O voo chegou no horario previsto.\n")
			}
		se(h1>h2)
		{
			escreva("O voo chegou adiantado.\n")
			}
		se(h1<h2)
			{
				escreva("O voo chegou atrasado.\n")
				}
		}

	
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 338; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */