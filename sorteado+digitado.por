programa {
    inclua biblioteca Util --> u

    funcao inicio() {
        inteiro opcao = 0
        logico dados_preenchidos = falso
        inteiro soma_digitados = 0
        inteiro soma_sorteados = 0

        enquanto(opcao != 3){
            escreva("\n\n\n## Soma de Vetores ##\n\n\n")

            escreva("1) Digite 5 Numeros\n")
            escreva("2) Sorteie 5 Numeros\n")
            escreva("3) Sair\n")
            leia(opcao)

            escolha(opcao){
                caso 1:
                    numero_digitado()
                    dados_preenchidos = verdadeiro
                    pare
                caso 2:
                    se(dados_preenchidos == verdadeiro){
                        numero_sorteado()
                    } senao {
                        escreva("Por favor, primeiro digite os números!\n")
                    }
                    pare
                caso 3:
                    escreva("Saindo...\n")
                    pare
                caso contrario:
                    escreva("Opção inválida! Selecione uma das opções.\n")
            }
        }
    }

    // Função para ler os números digitados
    funcao numero_digitado() {
        inteiro i
        inteiro vetor[5]
        inteiro soma_digitados = 0

        escreva("Digite 5 números:\n")
        para(i=0; i<5; i++){
            escreva("Digite o número ", i+1, ": ")
            leia(vetor[i])  // Agora estamos lendo os 5 números corretamente
        }

        // Soma dos números positivos
        para(i=0; i<5; i++){
            se(vetor[i] > 0){
                soma_digitados = soma_digitados + vetor[i]
            }
        }
        escreva("\nSoma dos números positivos: ", soma_digitados, "\n")
    }

    // Função para sortear números
    funcao numero_sorteado() {
        inteiro i, num
        inteiro vetor[5]
        inteiro soma_sorteados = 0

        escreva("Números sorteados:\n")
        para(i=0; i<5; i++){
            num = u.sorteia(1, 20)  // Sorteia um número entre 1 e 20
            vetor[i] = num  // Armazena o número no vetor
            escreva("Número sorteado ", i+1, ": ", num, "\n")
        }

        // Soma dos números sorteados positivos
        para(i=0; i<5; i++){
            se(vetor[i] > 0){
                soma_sorteados = soma_sorteados + vetor[i]
            }
        }
        escreva("\nSoma dos números sorteados positivos: ", soma_sorteados, "\n")
    }
    
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1106; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */