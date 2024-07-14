Funcionalidade: Configurar Produto
  Para garantir a configuração correta dos produtos,
  Como um administrador da loja,
  Eu quero configurar produtos no sistema.

  Contexto:
    Dado que estou logado como administrador

  Cenário: Seleções de cor, tamanho e quantidade devem ser obrigatórios
    Quando eu tento cadastrar um produto sem selecionar cor, tamanho e quantidade
    Então eu vejo a mensagem "Cor, tamanho e quantidade são obrigatórios"

  Cenário: Deve permitir apenas 10 produtos por venda
    Dado que eu selecionei 11 produtos para a venda
    Quando eu tento finalizar a compra
    Então eu vejo a mensagem "É permitido apenas 10 produtos por venda"

  Cenário: Quando eu clicar no botão "limpar" deve voltar ao estado original
    Dado que eu preenchi os campos do produto
    Quando eu clico no botão "limpar"
    Então os campos do produto devem voltar ao estado original

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
      | "Fábio"  | "Araujo"  | "fabio@gmail.com"   | "senha@123" |

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
