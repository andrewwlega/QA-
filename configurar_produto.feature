# language: pt
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
