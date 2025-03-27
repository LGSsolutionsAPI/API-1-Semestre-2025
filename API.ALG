Algoritmo "API"
// Descrição   : Calculadora de funções especificadas pelo cliente
// Autor(a)    : Guilherme, Luan, Luís e Samir.
// Data atual  : 24/03/2025


// Seção de Declarações das Variáveis
Var
   // Variáveis do menu
   indiceMenu, indiceSequencia, buffer: Inteiro
   // Variáveis das sequências
   numeroTermos: Inteiro
   contador: Inteiro
   termoAtual, termoAnterior, nAuxiliar: Real
   razao: Real

// ----------------- PROCEDIMENTOS RECORRENTES DO PROGRAMA -----------------

// Procedimento responsável pela interface do Menu principal
Procedimento menuPrincipal
Inicio

   Limpatela()
   Escreval ("==================================================")
   Escreval ("        CALCULADORA DE SEQUÊNCIAS MATEMÁTICAS")
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
   Leia (indiceMenu)
   Limpatela()

   // Validação de entrada
   Enquanto (indiceMenu < 1) ou (indiceMenu > 10) Faça
      Escreval ("==================================================")
      Escreval ("        CALCULADORA DE SEQUÊNCIAS MATEMÁTICAS")
      Escreval ("==================================================")
      Escreval (" ")
      Escreval ("Opção Inválida")
      Escreval ("Reentre um número de 1 a 10 correspondente à opção desejada")
      Escreval (" ")
      Escreval ("Pressione Enter para continuar")
      Leia (buffer)
      LimpaTela ()
      Escreval ("==================================================")
      Escreval ("        CALCULADORA DE SEQUÊNCIAS MATEMÁTICAS")
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
      Leia (indiceMenu)
      Limpatela()

   Fimenquanto
   
FimProcedimento
// Fim do menu principal


// Procedimento responsável pela interface do Menu dentro das sequências
Procedimento menuSequencia
Inicio
   Escreval (" ")
   Escreval ("O que deseja fazer agora?")
   Escreval ("1 - Calcular Novamente")
   Escreval ("2 - Voltar ao Menu")
   Escreva ("Digite a opção: ")
   Leia(indiceSequencia)
   Limpatela ()

   // Validação de entrada
   Enquanto (indiceSequencia < 1) ou (indiceSequencia > 2) faca
      Escreval ("==================================================")
      Escreval ("        CALCULADORA DE SEQUÊNCIAS MATEMÁTICAS")
      Escreval ("==================================================")
      Escreval ("Opção Inválida!")
      Escreval ("O que deseja fazer?")
      Escreval ("1 - Calcular Novamente")
      Escreval ("2 - Voltar ao menu")
      Escreva ("Digite a opção: ")
      Leia(indiceSequencia)
      Limpatela ()
   FimEnquanto

   // Se o usuário escolheu voltar ao menu, chama a função do menu principal novamente
   Se (indiceSequencia = 2) entao
      Limpatela()
      indiceMenu <- 0
      menuPrincipal
   FimSe
FimProcedimento
// Fim do menu das sequências


//  ---------------------------- BLOCO PRINCIPAL ----------------------------

Inicio
   // Chama a interface do MENU pela primeira vez ou toda vez que alguma sequência é terminada
   Enquanto Verdadeiro faca

   menuPrincipal

   //Fecha o programa caso seja selecionado 10
   Se indiceMenu = 10 entao
      Escreval ("Obrigado por escolher a LGS Solutions!")
      Interrompa
   FimSe



   // -------------- Sequência de Fibonacci --------------
   Enquanto indiceMenu = 1 faca
      Escreval ("====================================")
      Escreval ("      Sequência de Fibonacci")
      Escreval ("====================================")
      Escreval (" ")
      Escreval ("Nesta opção, ao digitar um número inteiro será exibido todos os termos da sequência de Fibonacci até (incluso) aquele que usuário digitou.")
      Escreval (" ")
      Escreval ("Observações:")
      Escreval ("- Devido a limitações do VisualG, apenas os 40 primeiros termos da sequência podem ser calculados")
      Escreval ("- Caso sejam inseridos caracteres inválidos, apenas os números inteiros serão considerados")
      Escreval (" ")
      Escreval ("Pressione Enter para continuar")
      Leia(buffer)
      LimpaTela()


      // Inicializa indiceSequencia para evitar erro ao entrar no loop
      indiceSequencia <- 1
      // Input do número de termos a serem calculados
      Enquanto (indiceSequencia = 1) faca
         Escreval ("====================================")
         Escreval ("      Sequência de Fibonacci")
         Escreval ("====================================")
         Escreval (" ")
         Escreva("Digite a quantidade de termos da sequência de Fibonacci: ")
         Leia(numeroTermos)

         // Validação da entrada
         Se (numeroTermos < 1) ou (numeroTermos > 40) Entao
            Limpatela()
            Escreval ("====================================")
            Escreval ("      Sequência de Fibonacci")
            Escreval ("====================================")
            Escreval (" ")
            Escreval ("O número deve estar entre 1 e 40.")
            Escreval ("Digite novamente: ")
            Leia(numeroTermos)
            Limpatela()
         FimSe

         // Algoritmo de Fibonacci
         Escreval ("A sequência de Fibonacci até o ", numeroTermos, "º termo é: ")
         termoAtual <- 1
         termoAnterior <- 0

         Para contador de 1 ate numeroTermos faca
            Escreva(termoAnterior, " ")
            nAuxiliar <- termoAtual
            termoAtual <- termoAnterior + termoAtual
            termoAnterior <- nAuxiliar
         FimPara
         // Fim do Algoritmo de Fibonacci

         //Chama Menu das sequências pra repetir ou escolher outro algoritmo
         menuSequencia

      FimEnquanto
   FimEnquanto
   // -------------- Fim da Sequencia de Fibonacci --------------

   Enquanto indiceMenu = 2 faca
      Escreval ("Disponível em breve! ")
      menuSequencia
   FimEnquanto

   Enquanto indiceMenu = 3 faca
      Escreval ("Disponível em breve! ")
      menuSequencia
   FimEnquanto

   Enquanto indiceMenu = 4 faca
      Escreval ("Disponível em breve! ")
      menuSequencia
   FimEnquanto

   Enquanto indiceMenu = 5 faca
      Escreval ("Disponível em breve! ")
      menuSequencia
   FimEnquanto

   // -------------- Sequência de Cubos --------------

   Enquanto indiceMenu = 6 faca
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

      // Inicializa indiceSequencia para evitar erro ao entrar no loop
      indiceSequencia <- 1
      // Input do número de termos a serem calculados
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
         // Fim do Algoritmo dos Cubos

         //Chama Menu das sequências pra repetir ou escolher outro algoritmo
         menuSequencia

      FimEnquanto
   FimEnquanto
   // -------------- Fim da Sequência de Cubos --------------


   // --------------    Sequência Geométrica   --------------
   Enquanto indiceMenu = 7 faca
      Escreval ("====================================")
      Escreval ("      Sequência Geométrica")
      Escreval ("====================================")
      Escreval (" ")
      Escreval ("Nesta opção, o usuário deve dar o primeiro termo e a razão da sequência.")
      Escreval ("Então, será calculado uma progressão geométrica a partir do primeiro termo de acordo com a razão dada.")
      Escreval (" ")
      Escreval ("Observações:")
      Escreval ("- Devido a limitações do VisualG, apenas os 150 primeiros termos da sequência podem ser calculados")
      Escreval ("- Caso sejam inseridos caracteres inválidos, apenas os números inteiros digitados serão considerados")
      Escreval (" ")
      Escreval ("Pressione Enter para continuar")
      Leia(buffer)
      LimpaTela

      // Inicializa indiceSequencia para evitar erro ao entrar no loop
      indiceSequencia <- 1
      // Input do primeiro termo e da razão da sequência
      Enquanto (indiceSequencia = 1) faca
         Escreval ("====================================")
         Escreval ("      Sequência de Geométrica")
         Escreval ("====================================")
         Escreval (" ")
         Escreval (" ")
         Escreva ("Digite o primeiro termo: ")
         Leia (termoAtual)
         Escreva ("Digite a razão: ")
         Leia (razao)

         // Algoritmo da Progressão Geométrica
         Para contador de 1 ate 9 faca
            termoAnterior <- termoAtual
            termoAtual <- termoAnterior * razao
            Escreval (contador,"º Termo",": ",termoAtual)
         FimPara
         // Fim do Algoritmo da Progressão Geométrica

         //Chama Menu das sequências pra repetir ou escolher outro algoritmo
         menuSequencia

      FimEnquanto
   FimEnquanto
   // ------------- Fim da Sequência Geométrica -------------

   Enquanto indiceMenu = 8 faca
      Escreval ("Disponível em breve! ")
      menuSequencia
   FimEnquanto

   Enquanto indiceMenu = 9 faca
      Escreval ("Disponível em breve! ")
      menuSequencia
   FimEnquanto

FimEnquanto
Fimalgoritmo
