programa
{
	/*
	 * Escreva uma função para receber em seu parâmetro uma temperatura C em
graus Celcius e retornar a temperatura equivalente F na escala Fahrenheit.
𝐹 =
9𝐶 + 160
5

	 */
	funcao real conversao(real c){
		real f
		f=(9*c+160)/5
		retorne f
		}
	funcao inicio()
	{	real temp
		escreva("Temperatura em graus celsius: ")
		leia(temp)
		escreva(conversao(temp))
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 378; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */