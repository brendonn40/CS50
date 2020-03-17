programa
{ 
	/*
	 * conversor de f pra c/
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
		/*
		inteiro dia,mes,ano

		escreva("Digite sua data de nascimento: ")
		leia(dia,mes,ano)
		escreva(dia,"/",mes,"/",ano)
		*/
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
 * @POSICAO-CURSOR = 458; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {resultado, 8, 7, 9};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */