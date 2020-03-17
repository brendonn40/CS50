programa
{
	/*
	 * Faça um programa que leia as seguintes informações de cada produto: código do produto, quantidade
anterior em estoque, quantidade vendida e preço unitário. O programa deverá ler, também, para o
produto importado, a cotação do dólar. O código do produto possui a seguinte formação: TXXX, onde T
representa o tipo (1 – nacional, 2 – importado) e XXX o número seqüencial. O programa deverá exibir
para cada produto: quantidade atual em estoque, valor atual em estoque em reais e situação do
produto. Ao final, o programa deverá exibir a quantidade de produtos importados diferentes e o maior
valor atual em estoque em reais. Término da leitura código do produto = 0. A situação do produto pode
ser:
 estoque inconsistente: caso a quantidade atual em estoque seja menor que zero ou
 repor estoque: caso a quantidade atual em estoque seja menor que o dobro da quantidade
vendida ou
 estoque ok.
	 */
	inclua biblioteca Texto --> t
	inclua biblioteca Util --> u
	funcao real achaMaior(real vetor[]){
			real maior=0.0
			
			para(inteiro i=0;i< u.numero_elementos(vetor);i++){

				se(vetor[i]>maior){
					maior=vetor[i]
					}

				}
			retorne maior
		
		}	
	funcao inicio()
	{
		cadeia cod
		inteiro qtd_estoque,qtd_vend
		real preco,dolar
		
		faca
		{
		escreva("Codigo do produto: ")
		leia(cod)
		se(cod != "0")
		{
			
		escreva("Estoque: ")
		leia(qtd_estoque)
		escreva("Quantidade vendida: ")
		leia(qtd_vend)
		escreva("Preco unitario do produto: ")
		leia(preco)
		se(t.obter_caracter(cod,0) == '2'){
			escreva("Cotacao do dolar: ")
			leia(dolar)
			preco=preco*dolar
			}
		escreva("Quantidade atual do estoque: ",qtd_estoque-qtd_vend,"\n")
		escreva("Valor atual em estoque:R$ ",(qtd_estoque-qtd_vend)*preco,"\n")
		se(qtd_estoque-qtd_vend< 0){
		escreva("Estoque inconsistente.\n")		
		}
		senao se(qtd_estoque-qtd_vend<2*qtd_vend)
		{
			escreva("Repor estoque.\n")
			}
			senao{
				escreva("Estoque ok.\n")
			}
		}
				}enquanto(cod != "0")
				
		senao{
			escreva("Finalizando programa...\n")
			}
					
		}
    }

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 2056; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */