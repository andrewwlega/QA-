# language: pt
Funcionalidade: Configurar produto
  Como cliente da EBAC-SHOP
  Quero configurar meu produto de acordo com meu tamanho e gosto
  Para depois inserir no carrinho

  Cenário: Selecionar cor, tamanho e quantidade
    Dado que estou na página de configuração do produto
    Quando selecionar as opções de cor, tamanho e quantidade
    Então o produto deve ser configurado com as opções escolhidas

  Cenário: Limite de produtos por venda
    Dado que estou na página de configuração do produto
    Quando tentar selecionar mais de 10 produtos
    Então o sistema deve exibir uma mensagem de alerta "Você pode selecionar no máximo 10 produtos por venda"

  Cenário: Limpar configurações
    Dado que estou na página de configuração do produto com opções de cor, tamanho e quantidade selecionadas
    Quando clicar no botão "limpar"
    Então as seleções devem voltar ao estado original
