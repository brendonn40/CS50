programa
{

	/*
	 * Faça um programa para calcular o índice de massa corporal (IMC) de 20 pessoas, conforme
recomendado pela Organização Mundial de Saúde. Para o cálculo, o programa deverá ler, para cada
pessoa, a altura e o peso, calcular e exibir o IMC e a classificação.
Fórmula para cálculo do IMC:
IMC = PESO / ALTURA2
Classificação:
 Abaixo de 18,5: “Abaixo do Peso Ideal”
 Entre 18,5 e 24,99: “Peso Normal”
 Entre 25 e 29,99: “Acima do Peso”
 A partir de 30,00: “Obeso”
	 */
	 inclua biblioteca Matematica --> mat
	 funcao real calcula(real altura,real peso)
	 {
	 	retorne peso/(altura*altura)
	 	}
	funcao inicio()
	{
		real peso,pessoas[20],altura

		para(inteiro i=0;i<20;i++)
		{
			escreva("Pessoa ",i+1,"\n")
			escreva("Peso: ")
			leia(peso)
			escreva("Altura em metros: ")
			leia(altura)
			pessoas[i]=calcula(altura,peso)  
			}
		para(inteiro i=0;i<20;i++)
		{
			se(pessoas[i]<18.5)
			{
				escreva("Pessoa ",i+1,"\t\tImc ",mat.arredondar(pessoas[i],2),"\tAbaixo do peso ideal.\n")
				}
			se(pessoas[i]>18.5 e pessoas[i]<24.99)
			{
				escreva("Pessoa ",i+1,"\t\tImc ",mat.arredondar(pessoas[i],2),"\tPeso normal.\n")
				}
			se(pessoas[i]>=25 e pessoas[i]<29.99)
			{
				escreva("Pessoa ",i+1,"\t\tImc ",mat.arredondar(pessoas[i],2),"\tAcima do Peso.\n")
				}
			se(pessoas[i]>=30)
			{
				escreva("Pessoa ",i+1,"\t\tImc ",mat.arredondar(pessoas[i],2),"\tObeso.\n")
				}
			}	
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 653; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */