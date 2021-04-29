Capybara::Node::Element

Dado('que entro no site da Amazon buscando o produto {string}') do |produto|
    Comum.new.acessar_pag
    find("input[id='twotabsearchtextbox']").set produto
    find("input[id='nav-search-submit-button']").click
end

Dado('escolho um produto na lista') do
    sleep(2)
    all("span[class='a-size-base-plus a-color-base a-text-normal']")[2].click 
    if find("span[id='productTitle']").text.include?('Geladeira Frost Free')
        puts 'Produto selecionado é uma geladeira frost free' 
    else
        raise 'Produto não é uma geladeira frost free.'
    end
end

Quando('adiciono o produto no carrinho') do
    find("input[id='add-to-cart-button']").click 
end

Entao('valido que o produto foi adicionado ao carrinho') do
    find("div[id='nav-cart-count-container']").click 

    if has_text?('Fechar pedido') == true
        puts('Produto adicionado corretamente')
    else 
        raise('Produto não adicionado')
    end
end               

Entao('escolho produto diferente ao {string}') do |string|
    all("span[class='a-size-base-plus a-color-base a-text-normal']")[18].click 
    if find("span[id='productTitle']").text.include?('Geladeira Frost Free')
        puts 'Produto selecionado é uma geladeira frost free' 
    else
        raise 'Produto não é uma geladeira frost free.'
    end
end

Dado('adiciono CEP para calculo de frete da UF de {string} cidade de {string} junto com endereco {string}') do |uf, cidade, logradouro|
    if cidade.include?(" ")
        cidade = cidade.gsub(" ","%20")
    end
    if logradouro.include?(" ")
        logradouro = logradouro.gsub(" ","%20")
    end
    
    body = ApiBuscaCep.new.buscaCep(uf, cidade, logradouro)
    cep = body[0]['cep'].gsub("-","")
    find("div[id='contextualIngressPtLabel_deliveryShortLine']").click 
    find("input[class='a-declarative a-span7']").set cep
    find("div[class='a-column a-span4 a-span-last']").click
end

Entao('valido que foi retornado valor do produto junto com valor do frete') do
    p find("div[id='mir-layout-DELIVERY_BLOCK-slot-DELIVERY_MESSAGE']").text
end