programa
{
	/*
	 * O Índice de Desenvolvimento Humano (IDH) é uma medida do bem estar de uma população. Engloba
três dimensões: educação (E), longevidade (L) e a riqueza (R). A dimensão educação (E) determina o
método de cálculo do IDH de uma localidade, de acordo com as seguintes regras:
 Caso a dimensão Educação seja maior ou igual à soma das demais dimensões a fórmula para o
cálculo do IDH é:
IDH = E * L * R / ((E + L + R)/3)
 Caso a dimensão Educação não seja maior ou igual a soma das demais dimensões a fórmula para
o cálculo do IDH é:
IDH = (E + L + R)/3

Escreva um programa que leia, os valores das dimensões Educação (E), Longevidade (L) e Riqueza (R) de
uma localidade e exiba o IDH, calculado de acordo com a descrição acima. Todos os valores são reais.
	 */
	funcao inicio()
	{
		real edu,lon,riq,idh
		escreva("Dimensao da educacao: ")
		leia(edu)
		escreva("Dimensao da longevidade: ")
		leia(lon)
		escreva("Dimensao da riqueza: ")
		leia(riq)
		se(edu >= lon+riq)
	{
		idh=edu*lon*riq/((edu+lon+riq)/3)
		}
		senao
		{
			idh=(edu+lon+riq)/3
			}
		escreva("O IDH deste pais eh: ",idh,".\n")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1114; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */