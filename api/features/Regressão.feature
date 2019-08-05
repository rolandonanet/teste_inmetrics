#language: pt

Funcionalidade: Validação da api da Regress
 
  Cenario: listagem de todos os usuarios com nome e sobrenome
  Dado que realizo a listagem de usuarios por pagina
  Então apresento o nome com sobrenome de cada um deles

  Cenario: Cadastrar um novo usuario e apresentar o seu id
  Dado que realizo o cadastro de um novo usuario
  Então apresento o id dele
