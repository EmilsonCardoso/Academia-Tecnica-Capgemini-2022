Algoritmo "Questao 02 - SENHA FORTE"
// Academia Capgemini 2022 - Algoritmo SENHA FORTE.

Var
// Foram utilziadas 5 vari�veis do tipo texto, duas do tipo n�mero
// e 5 do tipo l�gica.
nome, senha, letra, caracterEspecial, letCaracterEspecial : caracter
a, b : inteiro
resNum, resLetMinus, resLetMaius, resLetCaracterEspecial, voltarAoInicio : logico

//Procedimetno para solicitar a digita��o da senha.
procedimento solicSenha()
inicio
   escreva("Digite a senha: ")
   leia(senha)
fimprocedimento

Inicio
// Inicializando as vari�veis
voltarAoInicio <- falso
resNum <- falso
resLetMinus <- falso
resLetMaius <- falso
caracterEspecial <- "!@#$%^&*()-+"

//Solicita��o do nome.
escreva("Digite seu nome: ")
leia(nome)

//Foram utilizadas comandos de repeti��o e de escolha para defini��o
// da senha forte.
   repita
      limpatela()
      solicSenha()

      //Exige que a senha tenha de 6 ou mais caracteres.
      enquanto (compr(senha) < 6)  faca
           escreval("O tamanho m�nimo da senha � de 6 caracteres.")
           escreval("Favor digitar novamente!")
           solicSenha()
      fimenquanto

      // Serve para verificar se a senha cont�m n�meros.
      para a de 1 ate Compr(senha) faca
          letra <- copia(senha;a;1)
                para b de 48 ate 57 faca
                   se asc(letra) = b entao
                      resNum <- verdadeiro
                   fimse
                fimpara
      fimpara

      // Serve para verificar se a senha cont�m letra min�scula.
      para a de 1 ate Compr(senha) faca
          letra <- copia(senha;a;1)
                para b de 97 ate 122 faca
                   se asc(letra) = b entao
                      resLetMinus <- verdadeiro
                   fimse
                fimpara
      fimpara

      // Serve para verificar se a senha cont�m letra mai�scula
      para a de 1 ate Compr(senha) faca
          letra <- copia(senha;a;1)
                para b de 65 ate 90 faca
                   se asc(letra) = b entao
                      resLetMaius <- verdadeiro
                   fimse
                fimpara
      fimpara

      // Serve para verificar se a senha cont�m caracter especial
      para a de 1 ate Compr(senha) faca
          letra <- copia(senha;a;1)
                para b de 1 ate 12 faca
                   letCaracterEspecial <- copia(caracterEspecial,b,1)
                   se asc(letra) = asc(letCaracterEspecial) entao
                      resLetCaracterEspecial <- verdadeiro
                   fimse
                fimpara
      fimpara


      //Exibe na tela o resultada da senha forte.
      se (resNum = VERDADEIRO) e (resLetMinus = VERDADEIRO) e (resLetMaius = VERDADEIRO) e (resLetCaracterEspecial = VERDADEIRO) entao
           escreval("A senha cont�m n�mero! - OK")
           escreval("A senha cont�m letra min�scula! - OK")
           escreval("A senha cont�m letra mai�scula! - OK")
           escreval("A senha cont�m caractere especial! - OK")
           escreval("Esta senha � uma SENHA FORTE")
           voltarAoInicio <- VERDADEIRO
      senao
          // limpatela()
           escreval(resNum," que cont�m n�mero.")
           escreval(resLetMinus, " que cont�m letra min�scula.")
           escreval(resLetMaius, " que cont�m letra mai�scula.")
           escreval(resLetCaracterEspecial, " que cont�m caractere especial.")
           solicSenha()
      fimse
   ate voltarAoInicio = VERDADEIRO
Fimalgoritmo