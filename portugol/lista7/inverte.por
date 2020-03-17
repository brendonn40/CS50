programa
{
	/*
	 * Dado um número inteiro de três algarismos N = CDU – onde C é o algarismo
das centenas, D é o algarismo das dezenas e U o algarismo das unidades –
considere o número M, também inteiro, constituído pelos algarismos de N em
ordem inversa, isto é, M = UDC. Crie uma função para retornar M a partir de N
(p.ex.: N = 123 → M = 321). Em seguida, escreva um programa para usar essa
função.
	 */
	funcao inteiro inverte(inteiro numero){
		inteiro c,d,u,result
		c=numero/100
		d=(numero-(c*100))/10
		u=numero%10
		result=u*100+d*10+c
		retorne result
		}
	funcao inicio()
	{
		inteiro n
		escreva("Digite um numero: ")
		leia(n)
		escreva(inverte(n))
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 19; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */