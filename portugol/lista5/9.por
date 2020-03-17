programa
{
	/*
	 * 9) Sabe-se que o volume de uma caixa de lados a, b e c é dado por Vcaixa = a x b x c e que o volume de um
cilindro de raio r e altura h é dado por Vcilindro = πhr2
. Pede-se:

a) Escreva uma função para calcular e retornar o volume de uma caixa de lados a, b e c. Esta função
deverá receber como parâmetro os lados a, b e c.
b) Escreva uma função para calcular e retornar o volume de um cilindro de raio r e altura h. Esta função
deverá receber como parâmetro o raio e a altura.
c) Usando as funções dos itens anteriores, escreva um programa para calcular o volume de uma caixa
com um furo cilíndrico, com as dimensões ilustradas na figura abaixo.
O programa deve capturar do teclado os valores das dimensões da peça e deve exibir o valor do volume
calculado.
	 */
	inclua biblioteca Matematica --> mat

	funcao real volumedeCaixa(real a,real b,real c){

		retorne a*b*c
		
		}

	funcao real volumeCilindro(real raio,real altura){
		retorne mat.PI*raio*altura
		}
		
	funcao inicio()
	{
		real a,b,c
		
		escreva("Valor do lado A: ")
		leia(a)
		escreva("Valor do lado B: ")
		leia(b)
		escreva("Valor do lado C: ")
		leia(c)
		escreva(volumedeCaixa(a,b,c))
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1181; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */