# language: pt
Funcionalidade: Cadastro
  Como cliente da EBAC-SHOP
  Quero concluir meu cadastro
  Para finalizar minha compra

  Cenário: Cadastro com dados válidos
    Dado que eu estou na página de cadastro
    Quando eu preencher todos os dados obrigatórios
    E marcar os campos obrigatórios com asteriscos
    Então o cadastro deve ser concluído com sucesso

  Esquema do Cenário: Cadastro com dados inválidos
    Dado que eu estou na página de cadastro
    Quando eu tentar me cadastrar com os seguintes dados:
      | campo            | valor              |
      | nome             | João               |
      | sobrenome        | Silva              |
      | e-mail           | emailinvalido      |
      | senha            | Senha123!          |
      | confirmaçãoSenha | Senha123!          |
    Então o sistema deve exibir a mensagem de erro "Formato de e-mail inválido"
    E o sistema deve exibir a mensagem de alerta "Preencha todos os campos obrigatórios"

  Esquema do Cenário: Cadastro com campos vazios
    Dado que eu estou na página de cadastro
    Quando eu tentar me cadastrar com campos vazios:
      | campo            | valor     |
      | nome             |           |
      | sobrenome        |           |
      | e-mail           |           |
      | senha            |           |
      | confirmaçãoSenha |           |
    Então o sistema deve exibir a mensagem de alerta "Preencha todos os campos obrigatórios"
