programa
{
	/*
	 * Para escolher o valor do vale que um frequentador de uma livraria tem direito foram solicitados os
seguintes dados para o entrevistado: idade, sexo (1 para masculino e 2 para feminino), quantidade de
livros técnicos e quantidade de livros não técnicos que leu no ano de 2015. Apenas maiores de idade
podem receber vales e o valor do vale segue o seguinte critério:
 menos de 3 livros lidos : não tem direito
 3 livros lidos mas apenas de um tipo : 100,00
 3 livros lidos dos dois tipos : 150,00
 a partir de 4 livros lidos: 200,00
Faça um programa que leia os dados fornecidos pelo entrevistado e exiba o valor do vale caso ele tenha
direito.
	 */
	funcao inicio()
	{
		inteiro idade,sexo,tec,ntec
		escreva("Idade: ")
		leia(idade)
		escreva("Sexo(1-Masc,2-Fem): ")
		leia(sexo)
		escreva("Quantos livros tecnicos voce leu esse ano? ")
		leia(tec)
		escreva("Quantos livros nao tecnicos voce leu esse ano? ")
		leia(ntec)
		se(idade < 18)
	{
		escreva("Voce nao pode receber um vale por ser menor de idade.\n")
		}
		senao
		{
			se(tec == 3 ou ntec ==3)
		{
			escreva("Voce tem direito a um vale de R$ 100.\n")
			}
			se(tec + ntec ==3 e tec != 0 e ntec != 0)
			{
				escreva("Voce tem direito a um vale de R$150.\n")
				}
			se(tec+ntec>3)
			{
				escreva("Voce tem direito a um vale de R$200.\n")
				}
			}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 802; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */