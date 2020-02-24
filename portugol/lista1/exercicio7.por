programa
{
	/*
	 * A área da superfície corporal de um ser humano pode ser calculada, de forma aproximada, pela fórmula
de Mosteller:

onde: A é a área em m2

(valor real), p é o peso em quilos (valor real) e h é a altura em cm

(valor inteiro).

Faça um programa que calcule e exiba a área da superfície corporal de uma pessoa. O programa deverá
ler a altura e o peso de uma pessoa.
	 */
	inclua biblioteca Matematica --> mat
	funcao inicio()
	{
		inteiro altura
		real peso,area
		escreva("Peso ->")
		leia(peso)
		escreva("Altura ->")
		leia(altura)
		area=mat.raiz(altura*peso,2) /60
		escreva("Area da surpeficie: ",area)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 532; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */