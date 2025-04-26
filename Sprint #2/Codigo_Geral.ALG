Algoritmo "API"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Antonio Carlos Nicolodi
// Descrição   : Calculadora de funções especificadas pelo cliente.
// Autor(a)    : Guilherme, Luan, Luís e Samir.
// Data atual  : 03/03/2025
Var
   // Seção de Declarações das variáveis
   OP, OP2, i, n, a, b, aux, NF, x, y, p, q, indiceSequencia: inteiro
   buffer,numeroTermos, termoAtual, contador, NI, VR, Termos, NA  : Inteiro
   N1, N2, R, triangular : Real
   Menu: inteiro

Funcao Menu(): inteiro

Inicio
 Escreval ("==================================================")
   Escreval ("        CALCULADORA DE FUNÇÕES MATEMÁTICAS")
   Escreval ("==================================================")
   Escreval (" ")
   Escreval ("Escolha a Sequência Lógica: ")
   Escreval ("1 -            Sequência de Fibonacci")
   Escreval ("2 -            Números Triangulares")
   Escreval ("3 - [EM BREVE] Sequência de Números Primos")
   Escreval ("4 - [EM BREVE] Sequência Fatorial")
   Escreval ("5 -            Sequência de Quadrados Perfeitos")
   Escreval ("6 -            Sequência de Cubos")
   Escreval ("7 -            Sequência Geométrica")
   Escreval ("8 -            Sequência Alternada")
   Escreval ("9 -            Sequência de Tribonacci")
   Escreval ("10 -           Sobre")
   Escreval("11-             Sair")
   Escreva ("Digite a opção: ")
   Leia (OP)
   Limpatela ()

   Enquanto (OP < 1) ou (OP > 12) Faça
   Escreval (" Opção Inválida - Reentre")
   Escreval (" ")
      Escreval (Menu())
   Fimenquanto

   Escolha (OP)
      Caso 1
           Escreval(Fibonacci())

      Caso 2
           Escreval(Triangulares())
           
      Caso 3, 4
           Escreval (Breve())
           
      Caso 5
      Escreval (QuadradosPerfeitos())
      
      Caso 6
           Escreval (Cubos())

      Caso 7
          Escreval (Geometrica())
          
          
      Caso 8
           Escreval (Alternada())
           
      Caso 9
           Escreval(Tribonacci())

        Caso 10
          Escreval (Sobre())
          
         Caso 11
         Escreval (Sair())
             
      Fimescolha

Fimfuncao

Funcao Fibonacci(): inteiro
Inicio

      Escreval (msg1())

      Enquanto Verdadeiro faca
      LimpaTela
      Escreval ("====================================")
      Escreval ("      Sequência de Fibonacci")
      Escreval ("====================================")
      Escreval (" ")
      Escreva("Digite a quantidade de termos da sequência de Fibonacci: ")
      Leia(n)

      Enquanto (n < 1) faca
         Limpatela
         Escreval ("====================================")
         Escreval ("      Sequência de Fibonacci")
         Escreval ("====================================")
         Escreval (" ")
         Escreval ("O número deve ser maior ou igual a 1.")
         Escreval ("Digite novamente: ")
         Leia(n)
      FimEnquanto

      Enquanto (n > 40) faca
         Limpatela
         Escreval ("====================================")
         Escreval ("      Sequência de Fibonacci")
         Escreval ("====================================")
         Escreval (" ")
         Escreval ("O número deve ser menor ou igual a 40")
         Escreval ("Digite novamente: ")
         Leia(n)
      FimEnquanto

      a <- 0
      b <- 1
      Escreva(a, " ")

      Se (n > 1) entao
         Escreva(b, " ")
      FimSe

      Para i de 3 ate n faca
         aux <- a + b
         Escreva(aux, " ")
         a <- b
         b <- aux
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
Fimfuncao

Funcao Triangulares():inteiro
Inicio

      Escreval (msg2())
      Enquanto Verdadeiro faca
      LimpaTela
      Escreval ("====================================")
      Escreval ("        Números Triangulares")
      Escreval ("====================================")
      Escreval (" ")
      Escreva("Digite até qual número triangular deseja calcular (quantidade de termos): ")
      Leia(n)

      Enquanto (n < 1) faca
         Limpatela
         Escreval ("====================================")
         Escreval ("        Números Triangulares")
         Escreval ("====================================")
         Escreval (" ")
         Escreval ("O número deve ser maior ou igual a 1.")
         Escreval ("Digite novamente: ")
         Leia(n)
      FimEnquanto

      Enquanto (n > 1024) faca
         Limpatela
         Escreval ("====================================")
         Escreval ("        Números Triangulares")
         Escreval ("====================================")
         Escreval (" ")
         Escreval ("O número deve ser menor ou igual a 1024")
         Escreval ("Digite novamente: ")
         Leia(n)
      FimEnquanto

      para i de 1 ate n faca
      triangular <- (i * (i + 1)) / 2 // Calcula o número triangular usando a fórmula: T(n) = n(n+1)/2
      escreval("T(", i, ") = ", triangular)   // Mostra o número triangular atual no formato: T(i) = valor
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
Fimfuncao

Funcao Breve():inteiro
Inicio
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
        Fimse
Fimfuncao

Funcao QuadradosPerfeitos(): inteiro
Inicio

        escreval("SEQUÊNCIA DE QUADRADOS PERFEITOS")
        escreval(" ")
        escreval("===================================================")
        escreval(" ")
        escreval("Primeiro termo: ")
        leia(x)
        escreval("Último termo: ")
        leia(y)
        escreval(" ")
        escreval("===================================================")
        escreval(" ")
        para p de x ate y faca:
        escreva ("Número: ", p)
        escreval ("         Quadrado: ", p^2)
        fimpara
        
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
             Se (OP2 = 1) entao
                limpatela()
                escreval(QuadradosPerfeitos())
             Senao
                  Se (OP2 <> 1) entao
                     Escreval ("Opção Inválida!")
                  FimSe
             FIMSE
        FIMSE
        LimpaTela

fimfuncao

Funcao Cubos():inteiro
Inicio
      Escreval (msg3())

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
Fimfuncao

Funcao Geometrica():inteiro
Inicio
      Escreval(msg4())

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
      
Fimfuncao

Funcao Alternada(): inteiro
Inicio

    Escreval (msg5())
    
    Enquanto Verdadeiro faça
    Escreval("Digite o número inicial da sequência: ")
    Leia(NI)
    
    Escreval("Digite o valor da variação (soma/subtração): ")
    Leia(VR)

    Escreval("Digite a quantidade de termos da sequência: ")
    Leia(Termos)

    NA <- VR

    Escreval("Sequência Alternada:")

    //Laço para repetir os números da sequência
    Para i de 1 até Termos Passo 1 faça
        Escreva(NA, " ")

        // Alterna entre soma e subtração
        Se (i % 2 = 1) Então
            NA <- NI + VR
        Senão
            NA <- NI - VR
        FimSe
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
    Fimenquanto
Fimfuncao

Funcao Tribonacci():inteiro
Inicio

      Escreval (msg6())

      Enquanto Verdadeiro faca
      Limpatela
      Escreval ("====================================")
      Escreval ("      Sequência de Tribonacci")
      Escreval ("====================================")
      Escreval (" ")
      Escreva("Digite a quantidade de termos da sequência de Tribonacci (máximo 38): ")
      Leia(n)

      Enquanto (n < 1) faca
               Limpatela
               Escreval ("====================================")
               Escreval ("      Sequência de Tribonacci")
               Escreval ("====================================")
               Escreval (" ")
               Escreval ("O número deve ser maior ou igual a 1.")
               Escreval ("Digite novamente: ")
               Leia(n)
      FimEnquanto
      Enquanto (n > 38) faca
               Limpatela
               Escreval ("====================================")
               Escreval ("      Sequência de Tribonacci")
               Escreval ("====================================")
               Escreval (" ")
               Escreval ("O número deve ser menor ou igual a 38.")
               Escreval ("Digite novamente: ")
               Leia(n)
      FimEnquanto

// Cálculo da sequência Tribonacci
      a <- 0
      b <- 1
      aux <- 1

      Se (n >= 1) entao
         Escreva(a, " ")
      FimSe
      Se (n >= 2) entao
         Escreva(b, " ")
      FimSe
      Se (n >= 3) entao
         Escreva(aux, " ")
      FimSe

      Para i de 4 ate n faca
           termoAtual <- a + b + aux
           Escreva(termoAtual, " ")
           a <- b
           b <- aux
           aux <- termoAtual
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
Fimfuncao

Funcao Sobre(): inteiro
Inicio
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
              Escolha (OP2)
                      Caso 1
                           Escreval (Menu())
                      Outrocaso
                           Escreval ("Opção Inválida!")
              Fimescolha
Fimfuncao

Funcao Sair():inteiro
Inicio
Limpatela()
             Escreval("Obrigado por escolher a LGS Solutions!")
             Fimalgoritmo
Fimfuncao

Funcao msg1():inteiro
Inicio
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
      Leia(n)
      LimpaTela
Fimfuncao

Funcao msg2():inteiro
Inicio
      Escreval ("====================================")
      Escreval ("        Números Triangulares")
      Escreval ("====================================")
      Escreval (" ")
      Escreval (" ")
      Escreval ("Nesta opção, ao digitar um número inteiro será calculado e exibido ao usuário a quantidade de números triangulare spresentes no valor inserido")
      Escreval (" ")
      Escreval ("Observações:")
      Escreval ("- Devido a limitações do VisualG, apenas números menores que 1024 podem ser adicionado a entrada")
      Escreval ("- Caso sejam inseridos caracteres inválidos, apenas os números inteiros serão considerados")
      Escreval (" ")
      Escreval ("Pressione Enter para continuar")
      Leia(n)
      LimpaTela
Fimfuncao

Funcao msg3():inteiro
Inicio
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
Fimfuncao

Funcao msg4():inteiro
Inicio
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
Fimfuncao

Funcao msg5():inteiro
Inicio
      Escreval ("      Sequência Alternada")
      Escreval ("====================================")
      Escreval (" ")
      Escreval (" ")
      Escreval ("Nesta opção, o usuário deve digitar um número inicial, a variação e a quantidade de termos da sequência a ser calculada")
      Escreval (" ")
      Escreval (" ")
      Escreval ("Pressione Enter para continuar")
      Leia(NF)
      LimpaTela
      
Fimfuncao

Funcao msg6():inteiro
Inicio
      Escreval ("====================================")
      Escreval ("      Sequência de Tribonacci")
      Escreval ("====================================")
      Escreval (" ")
      Escreval ("Nesta opção, será exibida a sequência de Tribonacci até o número de termos desejado pelo usuário.")
      Escreval (" ")
      Escreval ("Observações:")
      Escreval ("- A sequência de Tribonacci começa com 0, 1, 1")
      Escreval ("- Cada termo subsequente é a soma dos três anteriores")
      Escreval ("- Por limitações do VisualG, o número máximo de termos permitidos é 38")
      Escreval (" ")
      Escreval ("Pressione Enter para continuar")
      Leia(buffer)
      Limpatela

Fimfuncao

Inicio
   // Seção de Comandos, procedimento, funções, operadores, etc...


      Escreval (Menu())



Fimalgoritmo

