Algoritmo "Quest�o 03 - ANAGRAMA"
// Academia Capgemini 2022 - Algoritmo SENHA FORTE.
// Gostaria de ter feito utilizando a multiplica��o de n�meros primos
// que substituissem as letras do alfabeto, por�m n�o consegui imaginar
// uma sa�da para tal neste programa de estou utilizando.
Var
// Foram utilizadas 3 vari�veis de texto e 5 de n�meros.
palavra, inicioFim, fimInicio : caracter
a, b, tamPalavra, contador, resultado : inteiro

Inicio
// Solita a palavra que ser� analizada o anagrama e inica algumas vari�veis.
escreva("Digite uma palavra: ")
leia(palavra)
tamPalavra <- compr(palavra)
contador <- 1
resultado <- 0

//Verifica o tamanho da vari�vel palavra
   se compr(palavra) < 2 entao
      limpatela()
      escreva("Digite uma palavra com no m�nimo 2 caracteres: ")
      leia(palavra)
   fimse

// Serve para fazer o teste do conjunto de letras para verificar se existe pares
// de anagramas.
   repita
      para a de 1 ate tamPalavra faca
          para b de a+1 ate tamPalavra faca
              inicioFim <- copia(palavra,a,contador)
              fimInicio <- copia(palavra,b,contador)
              se inicioFim=fimInicio entao
                 resultado <- resultado + 1
              fimse
          fimpara
      fimpara
      contador <- contador +1
    ate contador=tamPalavra

// Exite o resultada da quantidade de anagramas encontrados.
escreval("Existem ", resultado ," anagrama(s)!")
Fimalgoritmo