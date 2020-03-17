programa
{
	/*
	 * 4) Faça um programa que leia 2 horários (4 valores inteiros, representando respectivamente, o valor da
hora e o valor dos minutos do primeiro horário e o valor da hora e o valor dos minutos do segundo
horário), calcule e exiba a diferença em minutos dos 2 horários. O seu programa deverá utilizar,
obrigatoriamente, a função abaixo.
converte: recebe como parâmetro 1 horário (2 valores inteiros: valor da hora e valor dos minutos de um
horário), calcula e retorna o horário convertido em minutos.
	 */
	 funcao inteiro converte(inteiro horas,inteiro minutos)
	 {
	 	retorne (horas*60)+minutos
	 	
	 	}
	funcao inicio()
	{
		inteiro h1,h2,m1,m2,dif

		escreva("Primeiro horario\n")
		escreva("Horas: ")
		leia(h1)
		escreva("Minutos: ")
		leia(m1)
		escreva("Segundo horario\n")
		escreva("Horas: ")
		leia(h2)
		escreva("Minutos: ")
		leia(m2)
		dif=converte(h1,m1)-converte(h2,m2)

		escreva("Diferenca: ",dif," minutos.\n")
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 942; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */