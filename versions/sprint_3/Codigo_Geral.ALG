Algoritmo "API"
// Disciplina   : [Linguagem e L�gica de Programa��o]
// Professor   : Antonio Carlos Nicolodi
// Descri��o   : Calculadora de fun��es especificadas pelo cliente.
// Autor(a)    : Guilherme, Luan, Lu�s e Samir.
// Data atual  : 03/03/2025
Var
   // Se��o de Declara��es das vari�veis
   OP, OP2, i, n, a, b, aux, NF, x, y, p, q, indiceSequencia: inteiro
   buffer,numeroTermos, termoAtual, contador, NI, VR, Termos, NA  : Inteiro
   N1, N2, R, triangular : Real
   Menu: inteiro

Funcao Menu(): inteiro

Inicio
 Escreval ("==================================================")
   Escreval ("        CALCULADORA DE FUN��ES MATEM�TICAS")
   Escreval ("==================================================")
   Escreval (" ")
   Escreval ("Escolha a Sequ�ncia L�gica: ")
   Escreval ("1 -            Sequ�ncia de Fibonacci")
   Escreval ("2 -            N�meros Triangulares")
   Escreval ("3 - [EM BREVE] Sequ�ncia de N�meros Primos")
   Escreval ("4 - [EM BREVE] Sequ�ncia Fatorial")
   Escreval ("5 -            Sequ�ncia de Quadrados Perfeitos")
   Escreval ("6 -            Sequ�ncia de Cubos")
   Escreval ("7 -            Sequ�ncia Geom�trica")
   Escreval ("8 -            Sequ�ncia Alternada")
   Escreval ("9 -            Sequ�ncia de Tribonacci")
   Escreval ("10 -           Sobre")
   Escreval("11-             Sair")
   Escreva ("Digite a op��o: ")
   Leia (OP)
   Limpatela ()

   Enquanto (OP < 1) ou (OP > 12) Fa�a
   Escreval (" Op��o Inv�lida - Reentre")
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
      Escreval ("      Sequ�ncia de Fibonacci")
      Escreval ("====================================")
      Escreval (" ")
      Escreva("Digite a quantidade de termos da sequ�ncia de Fibonacci: ")
      Leia(n)

      Enquanto (n < 1) faca
         Limpatela
         Escreval ("====================================")
         Escreval ("      Sequ�ncia de Fibonacci")
         Escreval ("====================================")
         Escreval (" ")
         Escreval ("O n�mero deve ser maior ou igual a 1.")
         Escreval ("Digite novamente: ")
         Leia(n)
      FimEnquanto

      Enquanto (n > 40) faca
         Limpatela
         Escreval ("====================================")
         Escreval ("      Sequ�ncia de Fibonacci")
         Escreval ("====================================")
         Escreval (" ")
         Escreval ("O n�mero deve ser menor ou igual a 40")
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
      Escreva ("Digite a op��o: ")
      Leia (OP2)

      Se (OP2 = 2) entao
         Limpatela
         Escreval (Menu())

      Senao
         Se (OP2 <> 1) entao
            Limpatela
            Escreval ("Op��o Inv�lida! tente novamente")
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
      Escreval ("        N�meros Triangulares")
      Escreval ("====================================")
      Escreval (" ")
      Escreva("Digite at� qual n�mero triangular deseja calcular (quantidade de termos): ")
      Leia(n)

      Enquanto (n < 1) faca
         Limpatela
         Escreval ("====================================")
         Escreval ("        N�meros Triangulares")
         Escreval ("====================================")
         Escreval (" ")
         Escreval ("O n�mero deve ser maior ou igual a 1.")
         Escreval ("Digite novamente: ")
         Leia(n)
      FimEnquanto

      Enquanto (n > 1024) faca
         Limpatela
         Escreval ("====================================")
         Escreval ("        N�meros Triangulares")
         Escreval ("====================================")
         Escreval (" ")
         Escreval ("O n�mero deve ser menor ou igual a 1024")
         Escreval ("Digite novamente: ")
         Leia(n)
      FimEnquanto

      para i de 1 ate n faca
      triangular <- (i * (i + 1)) / 2 // Calcula o n�mero triangular usando a f�rmula: T(n) = n(n+1)/2
      escreval("T(", i, ") = ", triangular)   // Mostra o n�mero triangular atual no formato: T(i) = valor
   FimPara

      Escreval (" ")
      Escreval (" ")
      Escreval ("O que deseja fazer agora?")
      Escreval ("1 - Calcular Novamente")
      Escreval ("2 - Voltar ao menu")
      Escreva ("Digite a op��o: ")
      Leia (OP2)

      Se (OP2 = 2) entao
         Limpatela
         Escreval (Menu())

      Senao
         Se (OP2 <> 1) entao
         Limpatela
            Escreval ("Op��o Inv�lida! tente novamente")
            FimSe
      FimSe
      FimEnquanto
Fimfuncao

Funcao Breve():inteiro
Inicio
Escreval ("Dispon�vel em breve! ")

        Escreval (" ")
        Escreval (" ")
        Escreval ("O que deseja fazer agora?")
        Escreval ("1 - Voltar ao menu")
        Escreval (" ")
        Escreva ("Digite a op��o: ")
        Leia (OP2)

        Se (OP2 = 1) entao
         Limpatela
         Escreval (Menu())

        Senao
             Se (OP2 <> 1) entao
                Limpatela
                Escreval ("Op��o Inv�lida! tente novamente")
            FimSe
        Fimse
Fimfuncao

Funcao QuadradosPerfeitos(): inteiro
Inicio

        escreval("SEQU�NCIA DE QUADRADOS PERFEITOS")
        escreval(" ")
        escreval("===================================================")
        escreval(" ")
        escreval("Primeiro termo: ")
        leia(x)
        escreval("�ltimo termo: ")
        leia(y)
        escreval(" ")
        escreval("===================================================")
        escreval(" ")
        para p de x ate y faca:
        escreva ("N�mero: ", p)
        escreval ("         Quadrado: ", p^2)
        fimpara
        
        Escreval (" ")
        Escreval (" ")
        Escreval ("O que deseja fazer agora?")
        Escreval ("1 - Calcular Novamente")
        Escreval ("2 - Voltar ao menu")
        Escreva ("Digite a op��o: ")
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
                     Escreval ("Op��o Inv�lida!")
                  FimSe
             FIMSE
        FIMSE
        LimpaTela

fimfuncao

Funcao Cubos():inteiro
Inicio
      Escreval (msg3())

      Enquanto Verdadeiro fa�a

      // Inicializa indiceSequencia para evitar erro ao entrar no loop
      indiceSequencia <- 1
      // Escreva do n�mero de termos a serem calculados
      Enquanto (indiceSequencia = 1) faca
         Escreval ("====================================")
         Escreval ("      Sequ�ncia de Cubos")
         Escreval ("====================================")
         Escreval (" ")
         Escreva("Digite at� qual �ndice ser� calculado o cubo: ")
         Leia(numeroTermos)

         // Valida��o da entrada
         Se (numeroTermos < 1) ou (numeroTermos > 1290) Entao
            Limpatela()
            Escreval ("====================================")
            Escreval ("      Sequ�ncia de Fibonacci")
            Escreval ("====================================")
            Escreval (" ")
            Escreval ("O n�mero deve estar entre 1 e 1290.")
            Escreval ("Digite novamente: ")
            Leia(numeroTermos)
            Limpatela()
         FimSe

         // Algoritmo dos Cubos
         Para contador de 1 ate numeroTermos faca
            termoAtual <- contador*contador*contador
            Escreval ("�ndice - ",contador," | Cubo - ",termoAtual)
         FimPara

         Escreval (" ")
         Escreval (" ")
         Escreval ("O que deseja fazer agora?")
         Escreval ("1 - Calcular Novamente")
         Escreval ("2 - Voltar ao menu")
         Escreva ("Digite a op��o: ")
         Leia (OP2)
         Se (OP2 = 2) entao
            Limpatela
            Escreval (Menu())
         Senao
              Se (OP2 <> 1) entao
                 Limpatela
                 Escreval ("Op��o Inv�lida! tente novamente")
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
      Escreval ("      Sequ�ncia de Geom�trica")
      Escreval ("====================================")
      Escreval (" ")
      Escreval (" ")
      Escreva ("Digite o primeiro Termo: ")
      Leia (N1)
      Escreva ("Raz�o: ")
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
      Escreva ("Digite a op��o: ")
      Leia (OP2)
      Se (OP2 = 2) entao
         Limpatela()
         Escreval (Menu())
      Senao
           Se (OP2 <> 1) entao
              Escreval ("Op��o Inv�lida!")
           FimSe
      FimSe
      LimpaTela
      FimEnquanto
      
Fimfuncao

Funcao Alternada(): inteiro
Inicio

    Escreval (msg5())
    
    Enquanto Verdadeiro fa�a
    Escreval("Digite o n�mero inicial da sequ�ncia: ")
    Leia(NI)
    
    Escreval("Digite o valor da varia��o (soma/subtra��o): ")
    Leia(VR)

    Escreval("Digite a quantidade de termos da sequ�ncia: ")
    Leia(Termos)

    NA <- VR

    Escreval("Sequ�ncia Alternada:")

    //La�o para repetir os n�meros da sequ�ncia
    Para i de 1 at� Termos Passo 1 fa�a
        Escreva(NA, " ")

        // Alterna entre soma e subtra��o
        Se (i % 2 = 1) Ent�o
            NA <- NI + VR
        Sen�o
            NA <- NI - VR
        FimSe
    FimPara
    
    Escreval (" ")
    Escreval (" ")
    Escreval ("O que deseja fazer agora?")
    Escreval ("1 - Calcular Novamente")
    Escreval ("2 - Voltar ao menu")
    Escreva ("Digite a op��o: ")
    Leia (OP2)
    Se (OP2 = 2) entao
       Limpatela
       Escreval (Menu())
    Senao
         Se (OP2 <> 1) entao
                 Limpatela
                 Escreval ("Op��o Inv�lida! tente novamente")
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
      Escreval ("      Sequ�ncia de Tribonacci")
      Escreval ("====================================")
      Escreval (" ")
      Escreva("Digite a quantidade de termos da sequ�ncia de Tribonacci (m�ximo 38): ")
      Leia(n)

      Enquanto (n < 1) faca
               Limpatela
               Escreval ("====================================")
               Escreval ("      Sequ�ncia de Tribonacci")
               Escreval ("====================================")
               Escreval (" ")
               Escreval ("O n�mero deve ser maior ou igual a 1.")
               Escreval ("Digite novamente: ")
               Leia(n)
      FimEnquanto
      Enquanto (n > 38) faca
               Limpatela
               Escreval ("====================================")
               Escreval ("      Sequ�ncia de Tribonacci")
               Escreval ("====================================")
               Escreval (" ")
               Escreval ("O n�mero deve ser menor ou igual a 38.")
               Escreval ("Digite novamente: ")
               Leia(n)
      FimEnquanto

// C�lculo da sequ�ncia Tribonacci
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
      Escreva ("Digite a op��o: ")
      Leia (OP2)

      Se (OP2 = 2) entao
         Limpatela
         Escreval (Menu())
      Senao
           Se (OP2 <> 1) entao
              Limpatela
              Escreval ("Op��o Inv�lida! tente novamente")
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
         Escreval ("Vers�o do Produto: DB00103A25")
         Escreval ("Vers�o de Desenvolvimento, proibida e distribui��o e venda n�o autorizada")
         Escreval (" ")
         Escreval ("LGS Solutions - Todos os Direitos Reservados")
         Escreval ("==========================================")
         Escreval (" ")
         Escreval ("1 - Voltar")
         Escreva ("Digite a op��o: ")
         Leia (OP2)
         Limpatela()
              Escolha (OP2)
                      Caso 1
                           Escreval (Menu())
                      Outrocaso
                           Escreval ("Op��o Inv�lida!")
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
      Escreval ("      Sequ�ncia de Fibonacci")
      Escreval ("====================================")
      Escreval (" ")
      Escreval (" ")
      Escreval ("Nesta op��o, ao digitar um n�mero inteiro ser� calculado e exibido ao usu�rio a sequ�ncia do primeiro ao n�mero inserido pelo usu�rio")
      Escreval (" ")
      Escreval ("Observa��es:")
      Escreval ("- Devido a limita��es do VisualG, apenas os 40 primeiros termos da sequ�ncia podem ser calculados")
      Escreval ("- Caso sejam inseridos caracteres inv�lidos, apenas os n�meros inteiros ser�o considerados")
      Escreval (" ")
      Escreval ("Pressione Enter para continuar")
      Leia(n)
      LimpaTela
Fimfuncao

Funcao msg2():inteiro
Inicio
      Escreval ("====================================")
      Escreval ("        N�meros Triangulares")
      Escreval ("====================================")
      Escreval (" ")
      Escreval (" ")
      Escreval ("Nesta op��o, ao digitar um n�mero inteiro ser� calculado e exibido ao usu�rio a quantidade de n�meros triangulare spresentes no valor inserido")
      Escreval (" ")
      Escreval ("Observa��es:")
      Escreval ("- Devido a limita��es do VisualG, apenas n�meros menores que 1024 podem ser adicionado a entrada")
      Escreval ("- Caso sejam inseridos caracteres inv�lidos, apenas os n�meros inteiros ser�o considerados")
      Escreval (" ")
      Escreval ("Pressione Enter para continuar")
      Leia(n)
      LimpaTela
Fimfuncao

Funcao msg3():inteiro
Inicio
         Escreval ("====================================")
         Escreval ("      Sequ�ncia de Cubos")
         Escreval ("====================================")
         Escreval (" ")
         Escreval ("Nesta op��o, ao digitar um n�mero inteiro, � mostrado o cubo de todos os inteiros at� (incluso) o n�mero dado pelo usu�rio.")
         Escreval (" ")
         Escreval ("Observa��es:")
         Escreval ("- Devido a limita��es do VisualG, apenas os 1290 primeiros termos da sequ�ncia podem ser calculados")
         Escreval ("- Caso sejam inseridos caracteres inv�lidos, apenas os n�meros inteiros digitados ser�o considerados")
         Escreval (" ")
         Escreval ("Pressione Enter para continuar")
         Leia(buffer)
         LimpaTela
Fimfuncao

Funcao msg4():inteiro
Inicio
Escreval ("====================================")
         Escreval ("      Sequ�ncia de Geom�trica")
         Escreval ("====================================")
         Escreval (" ")
         Escreval (" ")
         Escreval ("Nesta op��o, o usu�rio deve digitar um n�mero e a raz�o a ser calculada")
         Escreval (" ")
         Escreval (" ")
         Escreval ("Pressione Enter para continuar")
         Leia(NF)
         LimpaTela
Fimfuncao

Funcao msg5():inteiro
Inicio
      Escreval ("      Sequ�ncia Alternada")
      Escreval ("====================================")
      Escreval (" ")
      Escreval (" ")
      Escreval ("Nesta op��o, o usu�rio deve digitar um n�mero inicial, a varia��o e a quantidade de termos da sequ�ncia a ser calculada")
      Escreval (" ")
      Escreval (" ")
      Escreval ("Pressione Enter para continuar")
      Leia(NF)
      LimpaTela
      
Fimfuncao

Funcao msg6():inteiro
Inicio
      Escreval ("====================================")
      Escreval ("      Sequ�ncia de Tribonacci")
      Escreval ("====================================")
      Escreval (" ")
      Escreval ("Nesta op��o, ser� exibida a sequ�ncia de Tribonacci at� o n�mero de termos desejado pelo usu�rio.")
      Escreval (" ")
      Escreval ("Observa��es:")
      Escreval ("- A sequ�ncia de Tribonacci come�a com 0, 1, 1")
      Escreval ("- Cada termo subsequente � a soma dos tr�s anteriores")
      Escreval ("- Por limita��es do VisualG, o n�mero m�ximo de termos permitidos � 38")
      Escreval (" ")
      Escreval ("Pressione Enter para continuar")
      Leia(buffer)
      Limpatela

Fimfuncao

Inicio
   // Se��o de Comandos, procedimento, fun��es, operadores, etc...


      Escreval (Menu())



Fimalgoritmo

