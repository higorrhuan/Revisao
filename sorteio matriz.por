programa
{
	inclua biblioteca Util --> u
	funcao inicio()
	{
		inteiro matriz[3][3]
		inteiro i 
		inteiro j
		inteiro num
		para(i=0; i<3; i++){
			para(j=0; j<3; j++){
				num = u.sorteia(1, 20)
				matriz[i][j] = num
				escreva("Numeros soteados: ", num, "\n")
			}
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 88; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {matriz, 6, 10, 6};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */