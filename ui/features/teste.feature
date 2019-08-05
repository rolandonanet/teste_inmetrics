#language: pt

Funcionalidade: Teste da aplicação da phptravels

  Cenario: Realizar cadastro de um novo usuario 
  Dado acesso a aplicação da phptravels
  Então realizo o cadastro de um novo usuario

  Cenario: Realizar login com o dados do cadastro anterior
  Dado acesso a aplicação da phptravels
  Quando realizo o login com os dados do cadastro anterior
  E seleciono o local de entrega e retirada do meu carro
  Então ao reservar um automovel verifico se ele esta na minha conta
  
  


