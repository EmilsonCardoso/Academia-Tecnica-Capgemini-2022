Algoritmo "SENHA FORTE"
// Academia Capgemini 2022 - Algoritmo SENHA FORTE.

Var
// Seção de Declarações das variáveis 
nome, senha, resposta, comp1 : caractere
a , tamSenha: inteiro

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
escreva("Nome de usuário: ")
leia(nome)
escreva("Senha: ")
repita
   leia(senha)
   tamSenha <- compr(Senha)
       se tamSenha < 6 entao
          escreval(nome + " a senha tem que conter no mínimo 6 caracteres.")
          escreva("Deseja repetir a digitação da senha? S ou N: ")
          leia(resposta)
       senão
          para a=1 ate tamSenha faca
             comp1 <- copia(senha;a;1)
             se comp1 = "a" entao
                escreva("Beleza")
             fimse
          fimpara
       fimse
ate maiusc(resposta) = "N"


Fimalgoritmo
