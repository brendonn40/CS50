programa
{
	/* Faça um programa que leia dois horários (serão lidos dois valores inteiros com o seguinte formato
HHMM) e exiba o total de minutos de cada horário e a diferença em minutos entre os dois horários.
Considere que o segundo horário fornecido pelo usuário ocorre depois do primeiro.
	*/
	funcao inicio()
	{
		inteiro h1,h2,m1,m2,dif
		escreva("Digite o primeiro horario: ")
		leia(h1)
		escreva("Digite o segundo horario: ")
		leia(h2)
		m1=(h1/100)*60 + (h1%100)
		m2=(h2/100)*60 + (h2%100)
		dif=(m2-m1)
		
		escreva("Horario 1: ",m1," minutos\n")
		escreva("Horario 2: ",m2," minutos\n")
		escreva("Diferenca: ",dif)
		
		
		
	
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 342; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */