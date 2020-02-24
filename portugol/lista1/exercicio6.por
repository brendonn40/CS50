programa
{
	/*
	 * Faça um programa que leia o número de dias decorrido em um evento e exiba na tela o mesmo valor
expresso em números de semanas e número de dias. Por exemplo, se um usuário fornecer o valor 19, o
programa deve exibir: “2 semanas e 5 dias”.
	 */
	funcao inicio()
	{
		inteiro evento,semanas,dias
		escreva("Dias desde o ocorrido: ")
		leia(evento)
		semanas=evento/7
		dias=evento%7
		escreva(semanas,"semanas e ",dias," dias\n")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 429; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */