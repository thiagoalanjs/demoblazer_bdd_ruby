#language: pt
@carrinho_compras
Funcionalidade: Validação dos produtos no carrinho de compras

- Como cliente 
- Quero adicionar produtos ao carrinho de compras

Contexto: 
    Dado que acesso o site demoblaze

Cenário: Validando adição de produto ao carrinho de compras
        E adiciono um celular ao carrinho de compras
        E adiciono um monitor ao carrinho de compras
        E adiciono um laptop ao carrinho de compras
       Então clico no link do carrinho de compras
        E atualizo a página
        E removo o monitor ao carrinho de compras
       Então verifico o valor total no carrinho de compras 