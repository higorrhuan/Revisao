programa
{
	inclua biblioteca Util --> u	
	inteiro matriz[3][3]
	funcao inicio()
	{	
		inteiro opcao = 0
		logico dados_preenchidos = falso
		
		enquanto(opcao != 5){
		escreva("1) Preencher Matriz\n")
		escreva("2) Imprimir Matriz\n")
		escreva("3) Menor Elemento\n")
		escreva("4) Soma dos Elementos\n")
		escreva("5) Sair\n")
		leia(opcao)

		escolha(opcao){
		caso 1:
			preencher_matriz()
			dados_preenchidos = verdadeiro
			pare
		caso 2:
			se(dados_preenchidos == verdadeiro){
				imprimir_matriz()	
			}senao{
				escreva("Preencha a Matriz")
			}
			pare
		caso 3:
			se(dados_preenchidos == verdadeiro){
				menor_elemento()	
			}senao{
				escreva("Preencha a Matriz")
			}
			pare
		caso 4:
			se(dados_preenchidos == verdadeiro){
				soma_elementos()	
			}senao{
				escreva("Preencha a Matriz")
			}
			pare
		caso 5:
			escreva("Saindo...")
			pare
		caso contrario:
			escreva("Opção invalida")
		 }
	 }
 }

	funcao preencher_matriz(){
		inteiro i
		inteiro j
		inteiro num

		escreva("\nMatriz Preenchida altomaticamente\n")

		para(i=0; i<3; i++){
			para(j=0; j<3; j++){
				num=u.sorteia(1, 20)
				matriz[i][j] = num
				escreva("Numeros sorteados", num, "\n")
				escreva("\n")
				}
   		}
 }

	funcao imprimir_matriz(){
		inteiro i
		inteiro j

		para(i=0; i<3; i++){
			para(j=0; j<3; j++){
				escreva("Matriz[", i + 1, "][", j + 1, "]: ", matriz[i][j], "  \n")
				escreva("\n")
				}
		}

		
 }

	funcao menor_elemento(){
		inteiro i
		inteiro j
		inteiro menor_numero = 0
		para(i=0; i<3; i++){
			para(j=0; j<3; j++){
				menor_numero = matriz[i][j]
				se(matriz[i][j] < menor_numero){
					menor_numero = matriz[i][j]
				}
			}
		}escreva("O menor elemento:", menor_numero, "\n")
		escreva("\n")
	}

	funcao soma_elementos(){
		inteiro i
		inteiro j
		inteiro soma = 0

		para(i=0; i<3; i++){
			para(j=0; j<3; j++){
				se(matriz[i][j] > 0){
				soma = soma + matriz[i][j]
				}
			}
		}escreva("A soma dos elementos:", soma, "\n")
		escreva("\n")
	}
















}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1736; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */