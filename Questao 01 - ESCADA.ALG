Algoritmo "Escada"
// Academia Capgemini 2022 - Algoritmo ESCADA.
// Entendi que o algoritmo feito na linguagem JAVA
// ser� um diferencial, por�m a l�gica eu tenho
// e o JAVA aprenderei com voc�s para desenvolvermos
// v�rios projetos juntos. Agrade�o a oportunidade!

Var
// Foram utilizadas 5 vari�veis - 3 do tipo n�mero inteiro.
// e 2 do tipo texto.
escada, a, b: inteiro
construcao, espaco: caractere

Inicio
// Ser� solicitado que o usu�rio digite o tamanho da base da escada.
escreva("Favor digitar o tamanho da base da escada: ")
leia(escada)

// Vari�vel que ir� conter os caracteres asterisco.
construcao <- ""

// Estrutura de repeti��o que cont�m a l�gica do algoritmo.
Para a <-1 ate escada faca
   // Vari�vel que ir� conter os espa�os.
   espaco <- ""
      // Estrutura de repeti��o que ir� acumular os espa�os.
      para b <-2 ate escada faca
           espaco <- espaco + " "
      fimpara
   // Estrutura de decis�o que ir� informar at� quando o algoritmo
   // ir� realizar a a��o.
      se escada >0 entao
         // Vari�vel que ir� conter os asterisco.
         construcao <- "*" + construcao
         escada <- escada -1
         escreval(espaco + construcao)
      fimse
fimpara
Fimalgoritmo