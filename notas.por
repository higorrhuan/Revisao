programa {
  funcao inicio() {
    inteiro opcao = 0
    logico dados_preenchidos = falso
    real notas[]={0.0, 0.0, 0.0, 0.0}, notas_recuperacao
    inteiro i

    enquanto(opcao != 4){ 
      escreva("\n## Diário Eletrônico ##\n")
      escreva("1) Preencher notas dos alunos\n")
      escreva("2) Imprimir notas da turma\n")
      escreva("3) Atualizar notas\n")  
      escreva("4) Sair!!\n")
      leia(opcao)

      escolha(opcao){
        caso 1:
          preencher_notas(notas)
          dados_preenchidos = verdadeiro
          pare
        caso 2:
          se(dados_preenchidos == verdadeiro){
            imprimir_notas(notas)
          } senao {
            escreva("Por favor, preencha as notas primeiro.\n")
          }
          pare
        caso 3:
          se(dados_preenchidos == verdadeiro){ 
            atualizar_notas(notas)
          } senao {
            escreva("Por favor, preencha as notas primeiro.\n")
          }
          pare
        caso 4:
          escreva("Saindo...\n")
          pare
        caso contrario:
          escreva("Opção inválida, preencha as notas primeiro!\n")
      }
    }
  }

  funcao preencher_notas(real notas[]){
    inteiro i
    escreva("\n\n## Adicionar notas ##\n\n")
    para(i=0; i<4; i++){
      escreva("Digite a nota do aluno ", i+1, ": ")
      leia(notas[i])
    }
  }

  funcao imprimir_notas(real notas[]){
    inteiro i
    escreva("\nNotas da turma:\n")
    para(i=0; i<4; i++){
      escreva("Aluno ", i+1, " - Nota: ", notas[i], " - ")
      se(notas[i] < 6){
        escreva("Recuperação\n")
      } senao {
        escreva("Aprovado\n")
      }
    }
  }

  funcao atualizar_notas(real notas[]){
    inteiro i
    real notas_recuperacao
    escreva("\nAtualizar notas de Recuperação:\n")
    para(i=0; i<4; i++){
      se(notas[i] < 6){
        escreva("Nota da recuperação do aluno ", i+1, ": ")
        leia(notas_recuperacao)
        notas[i] = notas_recuperacao
        notas_recuperacao++
      }
    }
    escreva("\nNotas atualizadas após recuperação:\n")
    para(i=0; i<4; i++){
      escreva("Aluno ", i+1, " - Nota: ", notas[i], "\n")
    }
  }
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1975; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */