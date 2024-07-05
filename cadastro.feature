# language: pt
Funcionalidade: Cadastro
  Como cliente da EBAC-SHOP
  Quero concluir meu cadastro
  Para finalizar minha compra

  Cenário: Cadastro com dados válidos
    Dado que estou na página de cadastro
    Quando preencher todos os dados obrigatórios
    Então o cadastro deve ser concluído com sucesso

  Esquema do Cenário: Cadastro com dados inválidos
    Dado que estou na página de cadastro
    Quando tentar me cadastrar com os seguintes dados:
      | campo            | valor         |
      | nome             | João          |
      | sobrenome        | Silva         |
      | e-mail           | emailinvalido |
      | senha            | Senha123!     |
      | confirmaçãoSenha | Senha123!     |
    Então o sistema deve exibir as seguintes mensagens:
      | mensagem                   |
      | Formato de e-mail inválido |
      | Preencha todos os campos obrigatórios |

  Cenário: Cadastro com campos vazios
    Dado que estou na página de cadastro
    Quando tentar me cadastrar sem preencher os campos obrigatórios
    Então o sistema deve exibir a mensagem de alerta "Preencha todos os campos obrigatórios"

Funcionalidade: Cálculo do Índice de Massa Corporal (IMC)
  Como um usuário do aplicativo de saúde
  Eu quero ser capaz de calcular meu IMC
  Para que eu possa entender se estou com um peso saudável

  Esquema do Cenário: Calcular o IMC com diferentes pesos e alturas
    Dado que esteja na calculadora de IMC
    Quando inserir seu <peso> e <altura>
    Então o aplicativo deve exibir o IMC como <resultado>

    Exemplos:
    | peso | altura | resultado |
    | 60   | 1.70   | 20.76     |
    | 70   | 1.75   | 22.86     |
    | 80   | 1.80   | 24.69     |
    | 90   | 1.85   | 26.29     |
