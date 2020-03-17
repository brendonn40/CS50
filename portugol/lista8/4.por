programa
{
	/*
	 * Escreva uma função para receber em seu parâmetro uma temperatura F na
escala Fahrenheit e retornar a temperatura equivalente C em graus Celsius.
𝐶 = (𝐹 − 32) ×
5
9
Em seguida, escreva um programa para usar essa função.
	 */
	inclua biblioteca Matematica --> mat
	funcao real celsius(real f){
		real resultado
		resultado=(f-32)*5/9
		retorne resultado
		}
	funcao inicio()
	{	

		real fah
		escreva("Digite a temperatura em graus fahrenheit: ")
		leia(fah)
		escreva(mat.arredondar(celsius(fah),2))
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 29; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */