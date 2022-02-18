Algoritmo "Escada"
// Academia Capgemini 2022 - Algoritmo ESCADA.
// Entendi que o algoritmo feito na linguagem JAVA
// será um diferencial, porém a lógica eu tenho
// e o JAVA aprenderei com vocês para desenvolvermos
// vários projetos juntos. Agradeço a oportunidade!

Var
// Foram utilizadas 5 variáveis - 3 do tipo número inteiro.
// e 2 do tipo texto.
escada, a, b: inteiro
construcao, espaco: caractere

Inicio
// Será solicitado que o usuário digite o tamanho da base da escada.
escreva("Favor digitar o tamanho da base da escada: ")
leia(escada)

// Variável que irá conter os caracteres asterisco.
construcao <- ""

// Estrutura de repetição que contém a lógica do algoritmo.
Para a <-1 ate escada faca
   // Variável que irá conter os espaços.
   espaco <- ""
      // Estrutura de repetição que irá acumular os espaços.
      para b <-2 ate escada faca
           espaco <- espaco + " "
      fimpara
   // Estrutura de decisão que irá informar até quando o algoritmo
   // irá realizar a ação.
      se escada >0 entao
         // Variável que irá conter os asterisco.
         construcao <- "*" + construcao
         escada <- escada -1
         escreval(espaco + construcao)
      fimse
fimpara
Fimalgoritmo