Algoritmo "Questao 02 - SENHA FORTE"
// Academia Capgemini 2022 - Algoritmo SENHA FORTE.

Var
// Foram utilziadas 5 variáveis do tipo texto, duas do tipo número
// e 5 do tipo lógica.
nome, senha, letra, caracterEspecial, letCaracterEspecial : caracter
a, b : inteiro
resNum, resLetMinus, resLetMaius, resLetCaracterEspecial, voltarAoInicio : logico

//Procedimetno para solicitar a digitação da senha.
procedimento solicSenha()
inicio
   escreva("Digite a senha: ")
   leia(senha)
fimprocedimento

Inicio
// Inicializando as variáveis
voltarAoInicio <- falso
resNum <- falso
resLetMinus <- falso
resLetMaius <- falso
caracterEspecial <- "!@#$%^&*()-+"

//Solicitação do nome.
escreva("Digite seu nome: ")
leia(nome)

//Foram utilizadas comandos de repetição e de escolha para definição
// da senha forte.
   repita
      limpatela()
      solicSenha()

      //Exige que a senha tenha de 6 ou mais caracteres.
      enquanto (compr(senha) < 6)  faca
           escreval("O tamanho mínimo da senha é de 6 caracteres.")
           escreval("Favor digitar novamente!")
           solicSenha()
      fimenquanto

      // Serve para verificar se a senha contém números.
      para a de 1 ate Compr(senha) faca
          letra <- copia(senha;a;1)
                para b de 48 ate 57 faca
                   se asc(letra) = b entao
                      resNum <- verdadeiro
                   fimse
                fimpara
      fimpara

      // Serve para verificar se a senha contém letra minúscula.
      para a de 1 ate Compr(senha) faca
          letra <- copia(senha;a;1)
                para b de 97 ate 122 faca
                   se asc(letra) = b entao
                      resLetMinus <- verdadeiro
                   fimse
                fimpara
      fimpara

      // Serve para verificar se a senha contém letra maiúscula
      para a de 1 ate Compr(senha) faca
          letra <- copia(senha;a;1)
                para b de 65 ate 90 faca
                   se asc(letra) = b entao
                      resLetMaius <- verdadeiro
                   fimse
                fimpara
      fimpara

      // Serve para verificar se a senha contém caracter especial
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
           escreval("A senha contém número! - OK")
           escreval("A senha contém letra minúscula! - OK")
           escreval("A senha contém letra maiúscula! - OK")
           escreval("A senha contém caractere especial! - OK")
           escreval("Esta senha é uma SENHA FORTE")
           voltarAoInicio <- VERDADEIRO
      senao
          // limpatela()
           escreval(resNum," que contém número.")
           escreval(resLetMinus, " que contém letra minúscula.")
           escreval(resLetMaius, " que contém letra maiúscula.")
           escreval(resLetCaracterEspecial, " que contém caractere especial.")
           solicSenha()
      fimse
   ate voltarAoInicio = VERDADEIRO
Fimalgoritmo