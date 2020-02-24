programa
{
	/*
	 Faça um programa que leia a hora e os minutos de dois horários (serão lidos quatro valores inteiros) e
exiba o total de minutos de cada horário e a diferença em minutos entre os dois horários. Considere que
o segundo horário fornecido pelo usuário ocorre depois do primeiro.
	 */
	funcao inicio()
	{
		inteiro horas1,horas2,minutos1,minutos2,h1,h2
		
		escreva("Horas: ")
		leia(horas1)
		escreva("Minutos: ")
		leia(minutos1)
		escreva("-","\n")
		escreva("Agora digite o segundo horario. \n")
		escreva("Horas: ")
		leia(horas2)
		escreva("Minutos: ")
		leia(minutos2)
		h1=(horas1*60) + minutos1
		h2=(horas2*60) + minutos2
		escreva("Diferenca em minutos: ",h2-h1)
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 187; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */