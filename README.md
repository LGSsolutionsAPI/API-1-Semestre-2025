# LGS Solutions - Soluções em Programação
=============================================

## 👥 Integrantes e Funções

| ![Luis](https://github.com/LGSsolutionsAPI/API-1-Semestre-2025/blob/main/assets/Luis.png?raw=true) | ![Luan](https://github.com/LGSsolutionsAPI/API-1-Semestre-2025/blob/main/assets/Luan.jpg?raw=true) | ![Samir](https://github.com/LGSsolutionsAPI/API-1-Semestre-2025/blob/main/assets/Samir.jpg?raw=true) | ![Guilherme](https://github.com/LGSsolutionsAPI/API-1-Semestre-2025/blob/main/assets/Guilherme.png?raw=true) |
|:--:|:--:|:--:|:--:|
| **Luis Eduardo** <br> *Product Owner (PO)* | **Luan Santos** <br> *Scrum Master* | **Samir Siqueira** <br> *Desenvolvedor* | **Guilherme Ioshua** <br> *Desenvolvedor* |


## 📘 Projeto:
### Calculadora de Sequências Numéricas
- Este projeto tem como objetivo calcular até o enésimo termo de diversas sequências numéricas.
### 🛠️ Linguagem de Programação Usada:
- VisualG 3.0.7

#### Objetivos
- Desenvolvido por estudantes de Banco de Dados, FATEC, com os seguintes objetivos pedagógicos e técnicos:

- **🧠 Melhoria nas Habilidades de Lógica**  
Promover o desenvolvimento das habilidades lógicas dos participantes para melhorar a resolução de problemas na programação.

- **🔢 Entendimento de Padrões Numéricos**  
Aprofundar o entendimento de padrões em sequências numéricas, essencial para a programação e a análise de dados.

- **🌍 Aplicação em Problemas Reais**  
Aplicar conceitos aprendidos em problemas de programação do mundo real para facilitar a aprendizagem prática.

- **🧩 Desenvolvimento do Raciocínio Lógico**  
O estudo de sequências numéricas é essencial para aprimorar o raciocínio lógico e analítico, habilidades fundamentais em diversas áreas.

- **📐 Aplicações em Matemática**  
Sequências numéricas são amplamente utilizadas na matemática para resolver problemas complexos e entender padrões numéricos.

- **💻 Relevância na Ciência da Computação**  
Na ciência da computação, sequências numéricas são fundamentais para algoritmos, estruturas de dados e modelagem de fenômenos.

- **⚙️ Acomodação de Metodologias Ágeis e Ferramentas**  
Introdução prática às metodologias ágeis e ferramentas utilizadas no mundo do desenvolvimento de software, como Trello e Git.

---

## 📌 Funcionalidades

### 📖 Sequência de Fibonacci
A sequência de Fibonacci é uma sequência numérica infinita em que cada termo, a partir do terceiro, é a soma dos dois termos anteriores.

**Fórmula:**  
\[ F(n) = F(n-1) + F(n-2) \] com \( F(0) = 0 \) e \( F(1) = 1 \)

**Exemplo:**  
\[ 0, 1, 1, 2, 3, 5, 8, 13, 21, 34, ... \]

### 🔺 Sequência de Números Triangulares
A sequência de números triangulares é uma progressão aritmética de números naturais que se inicia em 1, 3, 6, 10 e assim por diante.

**Fórmula:**  
\[ T(n) = \frac{n(n+1)}{2} \]

**Exemplo:**  
\[ 1, 3, 6, 10, 15, 21, 28, ... \]

### 🔢 Sequência de Números Primos
A sequência de números primos é uma sequência formada por números naturais que têm apenas dois divisores: o 1 e o próprio número.

**Exemplo:**  
\[ 2, 3, 5, 7, 11, 13, 17, 19, ... \]

### ✖️ Sequência Fatorial
Uma sequência de números fatoriais é uma sequência de números naturais, representados por um ponto de exclamação (!), que indicam o produto de um número pelos seus antecessores.

**Fórmula:**  
\[ n! = n \times (n-1) \times (n-2) \times ... \times 1 \]

**Exemplo:**  
\[ 1!, 2!, 3!, 4!, 5! = 1, 2, 6, 24, 120, ... \]

### 🟦 Sequência de Quadrados Perfeitos
A sequência de quadrados perfeitos é uma sequência numérica formada por números que são quadrados de números inteiros.

**Fórmula:**  
\[ Q(n) = n^2 \]

**Exemplo:**  
\[ 1, 4, 9, 16, 25, 36, 49, ... \]

### 🔳  Sequência de Cubos
Uma sequência de cubos é uma lista de cubos que segue um padrão de formação.

**Fórmula:**  
\[ C(n) = n^3 \]

**Exemplo:**  
\[ 1, 8, 27, 64, 125, 216, ... \]

### 📈 Sequência Geométrica
Uma sequência geométrica é uma sequência de números em que cada termo, a partir do segundo, é obtido multiplicando o termo anterior por um número fixo, chamado razão comum.

**Fórmula:**  
\[ G(n) = G(1) \times r^{(n-1)} \]

**Exemplo (G(1) = 2, r = 3):**  
\[ 2, 6, 18, 54, 162, ... \]

### 🔄 Sequência Alternada
Uma sequência alternada é uma sequência de números que alternam entre sinais positivos e negativos.

**Fórmula:**  
\[ A(n) = (-1)^n \times n \]

**Exemplo:**  
\[ -1, 2, -3, 4, -5, 6, ... \]

### 🔢 Sequência de Tribonacci
A sequência Tribonacci é uma sequência numérica que começa com três termos e, a partir do quarto termo, cada termo é a soma dos três termos anteriores.

**Fórmula:**  
\[ T(n) = T(n-1) + T(n-2) + T(n-3) \] com \( T(0) = 0 \), \( T(1) = 1 \) e \( T(2) = 1 \)

**Exemplo:**  
\[ 0, 1, 1, 2, 4, 7, 13, 24, 44, ... \]

---

## 📌 Instruções de Uso

1. O código deve ser executado pelo VisualG.  
2. Ao iniciar o programa, você estará no menu principal para selecionar qual sequência deseja calcular. Basta digitar o número correspondente ao algoritmo e pressionar Enter.  
3. Ao escolher a função desejada, será exibida uma tela com a descrição da opção escolhida e instruções para o termo limite que o programa calcula daquela sequência.  
4. Digite os parâmetros daquele algoritmo de acordo com as instruções.  
5. O programa irá mostrar a sequência conforme os parâmetros dados.  
6. Após a execução do algoritmo, o usuário poderá repeti-la com outros parâmetros ou voltar ao menu principal para escolher outra sequência numérica ou sair do programa.
