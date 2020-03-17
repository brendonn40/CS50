programa
{
	/*
	 * programa que gera os 10 primeiros numeros primos apos o numero 100.
	 */
	funcao resultado(){
		
		inteiro nums_primos[10],i,contador=0,num=101,divi
		faca{
		divi=0
		para(i=1;i<num;i++){        //divide do 1 ate o numero em questao, se ele tiver 2 divisores eh primo
			se(num % i == 0){
				divi+=1
				}
	}	
		se(divi == 2){       //e nesse caso ele eh colocado em um vetor.
			nums_primos[contador]=num
			contador+=1
			}
			num+=1
			}enquanto(contador<10)  //quando o contador chega ao indice 9, ele para
		para(i=0;i<10;i++){   
			escreva(nums_primos[i],",") //escreve cada item do vetor.
			}
		}
		
	funcao inicio()
	{
		resultado()
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 617; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */