# language: pt
Funcionalidade: Login
  Como cliente da EBAC-SHOP
  Quero fazer o login (autenticação) na plataforma
  Para visualizar meus pedidos

  Cenário: Login com dados válidos
    Dado que eu estou na página de login
    Quando eu inserir um usuário válido
    E inserir uma senha válida
    Então eu devo ser direcionado para a tela de checkout

  Cenário: Login com dados inválidos
    Dado que eu estou na página de login
    Quando eu inserir um usuário inválido ou uma senha inválida
    Então o sistema deve exibir uma mensagem de alerta "Usuário ou senha inválidos"
