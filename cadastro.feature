# language: pt

Funcionalidade: Cadastro
  Como cliente da EBAC-SHOP
  Quero concluir meu cadastro
  Para finalizar minha compra

  Critérios de Aceitação:
  1. Deve ser cadastrado com todos os dados obrigatórios, marcados com asteriscos.
  2. Não deve permitir campo e-mail com formato inválido. O sistema deve exibir uma mensagem de erro.
  3. Ao tentar cadastrar com campos vazios, deve exibir mensagem de alerta.

  Cenário: Cadastro com dados válidos
    Dado que estou na página de cadastro
    Quando preencher todos os dados obrigatórios
      | campo            | valor                        |
      | nome             | João                         |
      | sobrenome        | Silva                        |
      | e-mail           | joao.silva@example.com       |
      | senha            | Senha123!                    |
      | confirmaçãoSenha | Senha123!                    |
    E submeter o formulário
    Então o cadastro deve ser concluído com sucesso

  Cenário: Cadastro com e-mail inválido
    Dado que estou na página de cadastro
    Quando preencher os seguintes dados:
      | campo            | valor                        |
      | nome             | João                         |
      | sobrenome        | Silva                        |
      | e-mail           | emailinvalido                |
      | senha            | Senha123!                    |
      | confirmaçãoSenha | Senha123!                    |
    E submeter o formulário
    Então o sistema deve exibir a mensagem "Formato de e-mail inválido"

  Cenário: Cadastro com campos obrigatórios não preenchidos
    Dado que estou na página de cadastro
    Quando tentar me cadastrar sem preencher os seguintes campos obrigatórios:
      | campo            |
      | nome             |
      | sobrenome        |
      | e-mail           |
    E submeter o formulário
    Então o sistema deve exibir a mensagem de alerta "Preencha todos os campos obrigatórios"

Funcionalidade: Cálculo do Índice de Massa Corporal (IMC)
  Como um usuário do aplicativo de saúde
  Eu quero ser capaz de calcular meu IMC
  Para que eu possa entender se estou com um peso saudável

  Critérios de Aceitação:
  1. O aplicativo deve calcular o IMC corretamente com base no peso e na altura fornecidos.
  2. O IMC deve ser exibido com duas casas decimais.

  Cenário: Calcular o IMC com dados válidos
    Dado que estou na calculadora de IMC
    Quando inserir o peso e a altura:
      | peso | altura |
      | 60   | 1.70   |
    E calcular o IMC
    Então o aplicativo deve exibir o IMC como 20.76

  Cenário: Calcular o IMC com valores inválidos
    Dado que estou na calculadora de IMC
    Quando inserir o peso e a altura:
      | peso | altura |
      | -70  | 1.75   |
    E calcular o IMC
    Então o aplicativo deve exibir a mensagem de erro "Peso ou altura inválidos"

  Cenário: Calcular o IMC sem preencher todos os campos
    Dado que estou na calculadora de IMC
    Quando tentar calcular o IMC sem preencher peso ou altura
    E clicar em calcular
    Então o aplicativo deve exibir a mensagem de alerta "Preencha todos os campos obrigatórios"

