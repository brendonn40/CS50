programa
{
	/*

	3)
a) Faça uma função que receba como parâmetros dois números inteiros: horas e minutos. Esta função
deverá retornar o horário convertido em minutos. Protótipo da função:
int converte(int horas, int minutos);

b) Faça uma função que receba como parâmetros quatro números inteiros: horas e minutos do horário
previsto de chegada de um vôo e horas e minutos do horário efetivo de chegada de um vôo. Esta
função deverá utilizar, obrigatoriamente, a função anterior e exibir uma mensagem indicando se o
vôo chegou adiantado, no horário ou atrasou. Protótipo da função:
void voo(int hprev, int mprev, int hefet, int mefet);

c) Faça um programa para processar os vôos de um aeroporto. Para cada vôo, o programa deverá ler o
horário previsto de chegada (2 valores inteiros: horas e minutos) e o horário efetivo de chegada (2
valores inteiros: horas e minutos) e exibir se o vôo adiantou, chegou no horário ou atrasou. Término
da leitura: hora de chegada = -1.*/

	funcao inteiro transforma(inteiro horas,inteiro minutos)
	{
		retorne (horas*60)+minutos
		}

	funcao verificaAtraso(inteiro hora1,inteiro minutos1,inteiro hora2,inteiro minutos2){

		se(transforma(hora1,minutos1)==transforma(hora2,minutos2)){
			escreva("Previsto\n")
			}
			senao se(transforma(hora1,minutos1)>transforma(hora2,minutos2)){
				escreva("Adiantou\n")
				}
			senao{
				escreva("Atrasou\n")
				}

		
		}
	funcao inicio()
	{
		inteiro h1,h2=0,m1=0,m2=0
		faca{
		escreva("Horario previsto para a chegada do voo\n")
		escreva("Horas: ")
		leia(h1)
		se(h1!=-1){
		escreva("Minutos: ")
		leia(m1)
		escreva("Horario efetivo do voo\n")
		escreva("Horas: ")
		leia(h2)
		se(h2 != -1){
		escreva("Minutos: ")
		leia(m2)}
		senao{
			escreva("Finalizando programa...\n")
			}
		}
		senao{
			escreva("Finalizando programa...\n")
			}
		se(h1 != -1 e h2 != -1)
		{
			verificaAtraso(h1,m1,h2,m2)
			}
		}enquanto(h1 != -1 e h2 != -1)
		
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1755; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */