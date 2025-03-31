Algoritmo "API"
// Descrição   : Calculadora de funções especificadas pelo cliente
// Autor(a)    : Guilherme, Luan, Luís e Samir.
// Data atual  : 24/03/2025
Var
   // Seção de Declarações das variáveis
   OP, OP2, i, IF, NF, AF, BF, AUXF, indiceSequencia, buffer,numeroTermos, termoAtual, contador  : Inteiro
   N1, N2, R: Real
   Menu: inteiro

Funcao Menu(): inteiro

//Início da Função "Menu"
Inicio
   Escreval ("==================================================")
   Escreval ("        CALCULADORA DE FUNÇÕES MATEMÁTICAS")
   Escreval ("==================================================")
   Escreval (" ")
   Escreval ("Escolha a Sequência Lógica: ")
   Escreval ("1 -            Sequência de Fibonacci")
   Escreval ("2 - [EM BREVE] Números Triangulares")
   Escreval ("3 - [EM BREVE] Sequência de Números Primos")
   Escreval ("4 - [EM BREVE] Sequência Fatorial")
   Escreval ("5 - [EM BREVE] Sequência de Quadrados Perfeitos")
   Escreval ("6 -            Sequência de Cubos")
   Escreval ("7 -            Sequência Geométrica")
   Escreval ("8 - [EM BREVE] Sequência Alternada")
   Escreval ("9 - [EM BREVE] Sequência de Tribonacci")
   Escreval ("10 - Sair")
   Escreva ("Digite a opção: ")
   Leia (OP)
   Limpatela ()


   //Enquanto a opção não estiver entre 1 e 12, é exibida a seguinte mensagem
   Enquanto (OP < 1) ou (OP > 12) Faça
   Escreval (" Opção Inválida - Reentre")
   Escreval (" ")
      Escreval (Menu())
   Fimenquanto


   //Sequência de Fibonacci
   Se (OP = 1) entao

      Escreval ("====================================")
      Escreval ("      Sequência de Fibonacci")
      Escreval ("====================================")
      Escreval (" ")
      Escreval (" ")
      Escreval ("Nesta opção, ao digitar um número inteiro será calculado e exibido ao usuário a sequência do primeiro ao número inserido pelo usuário")
      Escreval (" ")
      Escreval ("Observações:")
      Escreval ("- Devido a limitações do VisualG, apenas os 40 primeiros termos da sequência podem ser calculados")
      Escreval ("- Caso sejam inseridos caracteres inválidos, apenas os números inteiros serão considerados")
      Escreval (" ")
      Escreval ("Pressione Enter para continuar")
      Leia(NF)
      LimpaTela

      Enquanto Verdadeiro faca
      LimpaTela
      Escreval ("====================================")
      Escreval ("      Sequência de Fibonacci")
      Escreval ("====================================")
      Escreval (" ")
      Escreva("Digite a quantidade de termos da sequência de Fibonacci: ")
      Leia(NF)

      Enquanto (NF < 1) faca
         Limpatela
         Escreval ("====================================")
         Escreval ("      Sequência de Fibonacci")
         Escreval ("====================================")
         Escreval (" ")
         Escreval ("O número deve ser maior ou igual a 1.")
         Escreval ("Digite novamente: ")
         Leia(NF)
      FimEnquanto

      Enquanto (NF > 40) faca
         Limpatela
         Escreval ("====================================")
         Escreval ("      Sequência de Fibonacci")
         Escreval ("====================================")
         Escreval (" ")
         Escreval ("O número deve ser menor ou igual a 40")
         Escreval ("Digite novamente: ")
         Leia(NF)
      FimEnquanto

      AF <- 0
      BF <- 1
      Escreva(AF, " ")

      Se (NF > 1) entao
         Escreva(BF, " ")
      FimSe

      Para IF de 3 ate NF faca
         AUXF <- AF + BF
         Escreva(AUXF, " ")
         AF <- BF
         BF <- AUXF
      FimPara

      Escreval (" ")
      Escreval (" ")
      Escreval ("O que deseja fazer agora?")
      Escreval ("1 - Calcular Novamente")
      Escreval ("2 - Voltar ao menu")
      Escreva ("Digite a opção: ")
      Leia (OP2)

      Se (OP2 = 2) entao
         Limpatela
         Escreval (Menu())

      Senao
         Se (OP2 <> 1) entao
         Limpatela
            Escreval ("Opção Inválida! tente novamente")
            FimSe
      FimSe
   FimEnquanto
   
//Números Triângulares

Senao
     Se (OP = 2) entao
        Escreval ("Disponível em breve! ")
        
        Escreval (" ")
        Escreval (" ")
        Escreval ("O que deseja fazer agora?")
        Escreval ("1 - Voltar ao menu")
        Escreval (" ")
        Escreva ("Digite a opção: ")
        Leia (OP2)

        Se (OP2 = 1) entao
         Limpatela
         Escreval (Menu())

        Senao
             Se (OP2 <> 1) entao
                Limpatela
                Escreval ("Opção Inválida! tente novamente")
            FimSe
        FimSe
              
//Sequência de Números Primos
     Senao
          Se (OP = 3) entao
             Escreval ("Disponível em breve! ")

             Escreval (" ")
             Escreval (" ")
             Escreval ("O que deseja fazer agora?")
             Escreval ("1 - Voltar ao menu")
             Escreval (" ")
             Escreva ("Digite a opção: ")
             Leia (OP2)

             Se (OP2 = 1) entao
                Limpatela
                Escreval (Menu())

             Senao
                  Se (OP2 <> 1) entao
                     Limpatela
                     Escreval ("Opção Inválida! tente novamente")
                  FimSe
             FimSe
              
//Sequência Fatorial
          Senao
               Se (OP = 4) entao
                  Escreval ("Disponível em breve! ")

                  Escreval (" ")
                  Escreval (" ")
                  Escreval ("O que deseja fazer agora?")
                  Escreval ("1 - Voltar ao menu")
                  Escreval (" ")
                  Escreva ("Digite a opção: ")
                  Leia (OP2)

                  Se (OP2 = 1) entao
                     Limpatela
                     Escreval (Menu())

                  Senao
                       Se (OP2 <> 1) entao
                          Limpatela
                          Escreval ("Opção Inválida! tente novamente")
                       FimSe
                  FimSe

//Sequência de Quadrados Perfeitos
               Senao
                    Se (OP = 5) entao
                       Escreval ("Disponível em breve! ")

                       Escreval (" ")
                       Escreval (" ")
                       Escreval ("O que deseja fazer agora?")
                       Escreval ("1 - Voltar ao menu")
                       Escreval (" ")
                       Escreva ("Digite a opção: ")
                       Leia (OP2)

                       Se (OP2 = 1) entao
                          Limpatela
                          Escreval (Menu())

                      Senao
                           Se (OP2 <> 1) entao
                              Limpatela
                              Escreval ("Opção Inválida! tente novamente")
                           FimSe
                      FimSe
              
//Sequência de Cubos
                     Senao
                          Se (OP = 6) entao
                             Escreval ("====================================")
                             Escreval ("      Sequência de Cubos")
                             Escreval ("====================================")
                             Escreval (" ")
                             Escreval ("Nesta opção, ao digitar um número inteiro, é mostrado o cubo de todos os inteiros até (incluso) o número dado pelo usuário.")
                             Escreval (" ")
                             Escreval ("Observações:")
                             Escreval ("- Devido a limitações do VisualG, apenas os 1290 primeiros termos da sequência podem ser calculados")
                             Escreval ("- Caso sejam inseridos caracteres inválidos, apenas os números inteiros digitados serão considerados")
                             Escreval (" ")
                             Escreval ("Pressione Enter para continuar")
                             Leia(buffer)
                             LimpaTela
      
      Enquanto Verdadeiro faça

      // Inicializa indiceSequencia para evitar erro ao entrar no loop
      indiceSequencia <- 1
      // Escreva do número de termos a serem calculados
      Enquanto (indiceSequencia = 1) faca
         Escreval ("====================================")
         Escreval ("      Sequência de Cubos")
         Escreval ("====================================")
         Escreval (" ")
         Escreva("Digite até qual índice será calculado o cubo: ")
         Leia(numeroTermos)

         // Validação da entrada
         Se (numeroTermos < 1) ou (numeroTermos > 1290) Entao
            Limpatela()
            Escreval ("====================================")
            Escreval ("      Sequência de Fibonacci")
            Escreval ("====================================")
            Escreval (" ")
            Escreval ("O número deve estar entre 1 e 1290.")
            Escreval ("Digite novamente: ")
            Leia(numeroTermos)
            Limpatela()
         FimSe

         // Algoritmo dos Cubos
         Para contador de 1 ate numeroTermos faca
            termoAtual <- contador*contador*contador
            Escreval ("Índice - ",contador," | Cubo - ",termoAtual)
         FimPara

                              Escreval (" ")
                              Escreval (" ")
                              Escreval ("O que deseja fazer agora?")
                              Escreval ("1 - Calcular Novamente")
                              Escreval ("2 - Voltar ao menu")
                              Escreva ("Digite a opção: ")
                              Leia (OP2)

                              Se (OP2 = 2) entao
                                 Limpatela
                                          Escreval (Menu())
                              Senao
                                   Se (OP2 <> 1) entao
                                      Limpatela
                                      Escreval ("Opção Inválida! tente novamente")
                                   FimSe
                              FimSe
                              Limpatela
   FimEnquanto
                             
//Sequência Geométrica
                          Senao
                               Se (OP = 7) entao
                                  Escreval ("====================================")
                                  Escreval ("      Sequência de Geométrica")
                                  Escreval ("====================================")
                                  Escreval (" ")
                                  Escreval (" ")
                                  Escreval ("Nesta opção, o usuário deve digitar um número e a razão a ser calculada")
                                  Escreval (" ")
                                  Escreval (" ")
                                  Escreval ("Pressione Enter para continuar")
                                  Leia(NF)
                                  LimpaTela

	                               Enquanto Verdadeiro faca
	                                Escreval ("====================================")
                                  Escreval ("      Sequência de Geométrica")
                                  Escreval ("====================================")
                                  Escreval (" ")
                                  Escreval (" ")
		                            Escreva ("Digite o primeiro Termo: ")
                                  Leia (N1)
                                  Escreva ("Razão: ")
                                  Leia (N2)
                                  Para i de 0 ate 9 faca
                                       R <- N1 * N2 ^ (i+1)
                                       Escreval (R)
                                  Fimpara
                                  Escreval (" ")
                                  Escreval (" ")
                                  Escreval ("O que deseja fazer agora?")
                                  Escreval ("1 - Calcular Novamente")
                                  Escreval ("2 - Voltar ao menu")
                                  Escreva ("Digite a opção: ")
                                  Leia (OP2)

                                  Se (OP2 = 2) entao
                                     Limpatela()
                                     Escreval (Menu())

                                  Senao
                                       Se (OP2 <> 1) entao
                                       Escreval ("Opção Inválida!")
                                       FimSe
                                  FimSe
                                  LimpaTela
                                  FimEnquanto

//Sequência Alternada
                               Senao
                                    Se (OP = 8) entao
                                       Escreval ("Disponível em breve! ")
                                       
                                             Escreval (" ")
                                             Escreval (" ")
                                             Escreval ("O que deseja fazer agora?")
                                             Escreval ("1 - Voltar ao menu")
                                             Escreval (" ")
                                             Escreva ("Digite a opção: ")
                                             Leia (OP2)

                                             Se (OP2 = 1) entao
                                                Limpatela
                                                Escreval (Menu())

                                             Senao
                                                  Se (OP2 <> 1) entao
                                                     Limpatela
                                                     Escreval ("Opção Inválida! tente novamente")
                                                  FimSe
                                             FimSe
                                       
//Sequência de Tribonacci
                                    Senao
                                         Se (OP = 9) entao
                                            Escreval ("Disponível em breve! ")

                                            Escreval (" ")
                                            Escreval (" ")
                                            Escreval ("O que deseja fazer agora?")
                                            Escreval ("1 - Voltar ao menu")
                                            Escreval (" ")
                                            Escreva ("Digite a opção: ")
                                            Leia (OP2)

                                            Se (OP2 = 1) entao
                                               Limpatela
                                               Escreval (Menu())

                                            Senao
                                                 Se (OP2 <> 1) entao
                                                    Limpatela
                                                    Escreval ("Opção Inválida! tente novamente")
                                                 FimSe
                                            FimSe
                                            
// Sair
                                         Senao
                                              Se (OP = 10) entao
                                                 Limpatela()
                                                 Escreval("Obrigado por escolher a LGS Solutions!")
                                                 Fimalgoritmo

//Créditos
                                              Senao
                                                   Se (OP = 11) entao
                                                      Escreval ("==========================================")
                                                      Escreval (" ")
                                                      Escreval ("L     GGGGGG  SSSSS")
                                                      Escreval ("L     G       S    ")
                                                      Escreval ("L     G  GGG  SSSSS")
                                                      Escreval ("L     G    G      S")
                                                      Escreval ("LLLLL GGGGGG  SSSSS  Solutions")
                                                      Escreval (" ")
                                                      Escreval ("==========================================")
                                                      Escreval (" ")
                                                      Escreval ("Desenvolvido por: ")
                                                      Escreval ("Luis Eduardo Mendes - P.O")
                                                      Escreval ("Luan Santos - Scrum Master")
                                                      Escreval ("Samir - Desenvolvedor")
                                                      Escreval ("Guilherme Ioshua - Desenvolvedor")
                                                      Escreval (" ")
                                                      Escreval ("Versão do Produto: DB00103A25")
                                                      Escreval ("Versão de Desenvolvimento, proibida e distribuição e venda não autorizada")
                                                      Escreval (" ")
                                                      Escreval ("LGS Solutions - Todos os Direitos Reservados")
                                                      Escreval ("==========================================")
                                                      Escreval (" ")
                                                      Escreval ("1 - Voltar")
                                                      Escreva ("Digite a opção: ")
                                                      Leia (OP2)
                                                      Limpatela()
                                                      Se (OP2=1) entao
                                                           Escreval (Menu())
                                                      Senao
                                                      Escreval ("Opção Inválida!")
                                                      FimSe
                                                   FimSe
                                              FimSe
                                         FimSe
                                    FimSe
                               FimSe
                          FimSe
                     FimSe
               FimSe
          FimSe
     FimSe
FimSe



Fimfuncao

Inicio

      Escreval (Menu())

Fimalgoritmo

