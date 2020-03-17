programa
{
	/*
	 * Faça um programa, utilizando as funções abaixo, para calcular o pagamento dos 100 funcionários de
uma empresa. Para cada funcionário, o programa deverá ler, a matrícula, o valor da hora de trabalho, a
quantidade de horas trabalhadas, a quantidade de dependentes e o tempo de serviço (inteiro – em
anos) e exibir a matrícula, o salário base, o bônus, o auxílio creche, o desconto do INSS e o salário
líquido do funcionário. Faça as seguintes funções:
a) Para calcular e retornar o salário base. Esta função deverá receber o valor da hora de trabalho e
a quantidade horas trabalhadas.
b) Para calcular e retornar o bônus por tempo de serviço. Esta função deverá receber o tempo de
serviço e o salário base. O bônus é de 2% do salário base por ano de serviço.
c) Para calcular e retornar o auxílio creche. Esta função deverá receber a quantidade de
dependentes. O auxílio creche é de R$21,00 por dependente.
d) Para calcular e retornar o desconto do INSS. Esta função deverá receber o salário base. O
desconto do INSS é de 11% do salário base, não podendo ultrapassar R$450,27.
	 */

	funcao real salarioBase(real valor_hora,real horas_trabalhadas){

		retorne valor_hora*horas_trabalhadas
		
		}
		
	funcao real bonus(real salario_base,inteiro anos){

		retorne salario_base*(anos*2/100)
		
		}
	funcao inteiro auxilioCreche(inteiro dependentes){
		
		retorne dependentes*21
		}
	funcao real desconto(real salario_base){
		real descont
		descont= salario_base*0.11
		se(descont>450.27){
			retorne 450.27
			}
		senao{
			retorne descont
			}
		}

		
	funcao inicio()
	{
		real func[100][5]

		para(inteiro i=0;i<100;i++){
			escreva("Funcionario ",i+1,"\nMatricula:")
			leia(func[i][0])
			escreva("Valor da hora de trabalho: ")
			leia(func[i][1])
			escreva("Quantidade de horas trabalhadas: ")
			leia(func[i][2])
			escreva("Quantidade de dependentes: ")
			leia(func[i][3])
			escreva("Tempo de servico: ")
			leia(func[i][4])
			}
			escreva("Matr\tS.B R$:\tBonus\tAuxilio\tInss\tS.L\n")
		para(inteiro i=0;i<100;i++){
			real salario_base=salarioBase(func[i][1],func[i][2]),bon=bonus(salario_base,func[i][4]),auxilio=auxilioCreche(func[i][3])
			real inss=desconto(salario_base),salario_liquido=salario_base+bon+auxilio-inss
			escreva(func[i][0],"\t",salario_base,"\t",bon,"\t",auxilio,"\t",inss,"\t",salario_liquido,"\n")
			}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1603; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */