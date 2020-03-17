programa
{
	/*
	 * Um automóvel inicialmente parado, parte da largada de uma pista reta e avança
até passar por um amigo que está localizado a certa distância à frente, a fim de 
44
marcar o tempo decorrido deste percurso. Crie uma função para receber T, o
tempo decorrido desde a largada até o carro atingir o ponto final, e S, a distância
percorrida. A função deve retornar a aceleração média A que o automóvel
atingiu.
𝐴 =
2 × 𝑆
𝑇
2

	 */
	funcao real aceleracao(real t,real s){
		real a
		a=(2*s)/t
		retorne a
		} 
	funcao inicio()
	{	real t,s
		escreva("Tempo: ")
		leia(t)
		escreva("Distancia: ")
		leia(s)
		escreva(aceleracao(t,s))
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 504; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */