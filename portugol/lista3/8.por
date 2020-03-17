programa
{
	/*
	 * Uma loja especializada em microcomputadores possui vários modelos à venda. Cada modelo possui sua
própria configuração. O cliente, ao comprar, não pode modificar a configuração dos modelos existentes,
mas pode comprar periféricos não oferecidos na configuração por ele escolhida. Para cada venda
efetuada pela loja, o cliente escolhe um dos modelos comercializados e o número de periféricos
adicionais (0- se não deseja nenhum, ou a quantidade de periféricos desejados). O valor a ser pago pelo
computador será o preço do modelo básico escolhido mais o montante pago pelos periféricos. Faça um
programa para processar as 100 vendas de uma loja. O programa deverá ler para cada venda: código do
modelo escolhido, preço do modelo escolhido, quantidade de periféricos desejados e, para cada
periférico o preço do mesmo exibindo o valor da venda. No final, o programa deverá exibir a quantidade
de vendas sem periféricos adicionais e o valor da maior venda (considere que não há empate).
	 */
	funcao maior (inteiro vetor[])
	{
		inteiro m=0
		para(inteiro i=0;i<3;i++)
		{
			se(vetor[i]>m)
			{
				m=vetor[i]
				}
			
			}
		escreva("Maior: ",m)
		}
		funcao inicio()
	{
		inteiro cod[3],preco[3],valor_t[3],qtd,perf[],soma=0,cp=0,sp=0
		para(inteiro i=0;i<3;i++)
		{
		escreva("Codigo do modelo: ")
		leia(cod[i])
		escreva("Digite o preco do modelo: ")
		leia(preco[i])
		escreva("Quantidade de perifericos: ")
		leia(qtd)
		se(qtd == 0)
		{
			valor_t[i]=preco[i]
			sp+=1
			perf[i]=0
			}
		para(inteiro x=0;x<qtd;x++)
		{
			escreva("Valor do periferico ",x+1,": ")
			leia(perf[x])
			soma+=perf[x]
			valor_t[i]=preco[i]+soma
			cp+=1
			}
		}
		escreva("Quantidade de vendas sem perifericos: ",sp,"\n")
		maior(valor_t)		
	}
 
	
	
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1623; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */