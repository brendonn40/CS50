programa
{
	/*
	 * 10) Uma lanchonete aceita 4 formas de pagamento: cartão de crédito, cartão de débito, dinheiro e ticket
refeição. Faça um programa em C para exibir o valor a ser devolvido (troco) aos clientes ou a mensagem
“Não há troco”. Para cada cliente, o seu programa deverá ler o valor da despesa a ser paga (real) pelo
cliente e o tipo de pagamento (inteiro): 1 para cartão de débito, 2 para cartão de crédito, 3 para
dinheiro ou 4 para ticket. Se o pagamento for realizado por cartão (débito ou crédito), não há troco.
Para os demais tipos de pagamento, pode ou não haver troco. Se for pagamento em dinheiro, será lido,
também, o valor pago. Se o pagamento for com tickets, devem ser lidos a quantidade de tickets e o
valor de cada ticket (repare que os valores podem ser diferentes). Término da leitura dos clientes: valor
da despesa = 0.
Exemplos para apenas UM cliente:

Entrada Saída
120.00 1 Não há troco
120.00 2 Não há troco
120.00 3 150.00 Troco: 30.00
120.00 4 2 80 50 Troco: 10.00
120.00 4 2 70 50 Não há troco
	 */
	funcao inicio()
	{
		inteiro f,ticket
		real valor,troco,dinheiro
		escreva("Valor da despesa R$: ")
		leia(valor)
		escreva("1-Cartao de debito\n2-Cartao de credito\n3-Dinheiro\n4-Ticket\n")
		escreva("Forma de pagamento:")
		leia(f)
		escolha(f){
		caso 1:escreva("Nao ha troco.\n")
		pare
		caso 2:escreva("Nao ha troco.\n")
		pare
		caso 3:escreva("Valor pago em dinheiro: ")
			 leia(dinheiro)
			 troco=dinheiro - valor
			 escreva("Troco:R$ ",troco)
		pare
		caso 4:escreva("Quantidade de tickets: ")
			 leia(ticket)
			 real soma=0.0,v_ticket
			 inteiro i=0
			 enquanto(i<ticket)
			 {
				escreva("Digite o valor do ticket ",i+1,":")
				leia(v_ticket)
				soma+=v_ticket
				i+=1
				}
			 troco=soma-valor
		 	 escreva("Troco:R$ ",troco)
		 caso contrario:escreva("Digite uma forma de pagamento valida.\n")
		 	 }
			}
		
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1856; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */