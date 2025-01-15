programa {
    /* Faça um programa que permite ao usuário preencher as notas de 5 alunos, 
     * calcular a média de cada um e informar se o aluno foi aprovado ou reprovado (aprovado se a nota for 6 ou superior).
    */
    
    funcao inicio() {
        inteiro opcao = 0
        logico dados_preenchidos = falso
        real notas[5] = {0.0, 0.0, 0.0, 0.0, 0.0}
        real media[5] = {0.0, 0.0, 0.0, 0.0, 0.0}
        
        enquanto(opcao != 4) {
            escreva("\n## Diário Eletrônico ##\n")
            escreva("1) Preencher Notas\n")
            escreva("2) Notas\n")
            escreva("3) Média dos alunos\n")
            escreva("4) Sair\n")
            leia(opcao)
            
            escolha(opcao) {
                caso 1:
                    preencher_notas(notas)
                    dados_preenchidos = verdadeiro
                    pare
                caso 2:
                    se(dados_preenchidos == verdadeiro) {
                        imprimir_notas(notas)
                    } senao {
                        escreva("Por favor, preencha as notas primeiro.\n")
                    }
                    pare
                caso 3:
                    se(dados_preenchidos == verdadeiro) {
                        media_alunos(notas, media)
                    } senao {
                        escreva("Por favor, preencha as notas primeiro.\n")
                    }
                    pare
                caso 4:
                    escreva("Saindo...\n")
                    pare
                caso contrario:
                    escreva("Opção inválida! Tente novamente.\n")
            }
        }    
    }

    funcao preencher_notas(real notas[]) {
        inteiro i

        escreva("\nAdicionar Notas\n")
        para(i = 0; i < 5; i++) {
            escreva("Nota ", i + 1, ": ")
            leia(notas[i])
        }
    }

    funcao imprimir_notas(real notas[]) {
        inteiro i

        escreva("\nNotas da Turma\n")
        para(i = 0; i < 5; i++) {
            escreva("Aluno ", i + 1, ": Nota ", notas[i], " - ")
            se(notas[i] >= 6) {
                escreva("Aprovado\n")
            } senao {
                escreva("Reprovado\n")
            }
        }
    }

    funcao media_alunos(real notas[], real media[]) {
        inteiro i
        real soma

        escreva("\nMédia de cada aluno:\n")
        para(i = 0; i < 5; i++) {
            soma = notas[i] // Como só há uma nota por aluno, a média será a própria nota
            media[i] = soma // A média de cada aluno é simplesmente a nota dele
            escreva("Aluno ", i + 1, " - Nota: ", notas[i], " - Média: ", media[i], " - ")
            se(media[i] >= 6) {
                escreva("Aprovado\n")
            } senao {
                escreva("Reprovado\n")
            }
        }
    }
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 2837; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */