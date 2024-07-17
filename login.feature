# language: pt
Funcionalidade: Login na Plataforma
  Para acessar a plataforma,
  Como um usuário,
  Eu quero fazer login no sistema.

  Contexto:
    Dado que eu estou na tela de login

  Esquema do Cenário: Ao inserir dados válidos deve ser direcionado para a tela de checkout
    Quando eu inserir <usuário> e <senha>
    Então eu devo ser direcionado para a tela de checkout

    Exemplos:
      | usuário   | senha   |
      | "usuario1" | "senha1" |
      | "usuario2" | "senha2" |

  Esquema do Cenário: Ao inserir um dos campos inválidos deve exibir uma mensagem de alerta "Usuário ou senha inválidos"
    Quando eu inserir <usuário> e <senha>
    Então eu devo ver a mensagem "Usuário ou senha inválidos"

    Exemplos:
      | usuário   | senha   |
      | "usuario1" | "senha" |
      | "usuario"  | "senha1" |
