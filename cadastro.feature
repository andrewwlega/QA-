Funcionalidade: Tela de Cadastro - Checkout
  Para finalizar a compra,
  Como um usuário,
  Eu quero me cadastrar no sistema.

  Contexto:
    Dado que eu estou na tela de cadastro

  Esquema do Cenário: Cadastro com dados válidos
    Quando eu inserir <nome>, <sobrenome>, <email> e <senha>
    Então deve exibir uma mensagem de sucesso

    Exemplos:
      | nome    | sobrenome | email               | senha     |
      | "Andrei" | "Silva"   | "andrei@gmail.com"  | "senha@123" |
      | "Enzo"  | "Mendes"  | "enzo@gmail.com"   | "senha@125" |

  Esquema do Cenário: Não deve permitir campo e-mail com formato inválido. Sistema deve inserir uma mensagem de erro
    Quando eu inserir <email>
    Então eu devo ver a mensagem "Formato de e-mail inválido"

    Exemplos:
      | email            |
      | "emailinvalido"  |
      | "outroinvalido@" |
      | "invalido@.com"  |

  Cenário: Ao tentar cadastrar com campos vazios, deve exibir mensagem de alerta
    Quando eu tento cadastrar com campos vazios
    Então eu vejo a mensagem "Todos os campos são obrigatórios"
