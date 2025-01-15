programa
{	
	inclua biblioteca Util --> u
	inteiro num, i
	inteiro vetor[5]
	inteiro soma = 0
	funcao inicio()
	{
		escreva("Gerar cinco numeros\n")
		para(i=0; i<5; i++){
		num = u.sorteia(1, 10)
		vetor[i] = num
		escreva("Numero gerado:", num, "\n")
		}
		para(i=0; i<5; i++){
			se(vetor[i] > 0){
        		soma = soma + vetor[i]
			}
		}
		escreva("\nSoma dos numeros", soma, "\n")
	
	}
	
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 403; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */