Dado('adiciono um celular ao carrinho de compras') do
    carrinho_compras.add_cellphone_cart
end

Dado('adiciono um monitor ao carrinho de compras') do
    carrinho_compras.add_monitor_cart
end

Dado('adiciono um laptop ao carrinho de compras') do
    carrinho_compras.add_laptop_cart
end

Então('clico no link do carrinho de compras') do
    click_link("Cart")
end

Dado('atualizo a página') do
    refresh_page
end

Dado('removo o monitor ao carrinho de compras') do
    carrinho_compras.remove_monitor_cart
end

Então('verifico o valor total no carrinho de compras') do 
    #Abaixo o valor da compra deverá ser U$ 1150 após a retirada do monitor do carrinho
    total_price = find("#totalp").text
    expect(total_price).to eq "1150"
end


