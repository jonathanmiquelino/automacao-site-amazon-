#language: pt

@t
Funcionalidade: Automatizar o site da Amazon

@cenario_sucesso
Cenario: Realizar busca de produto com sucesso
     Dado que entro no site da Amazon buscando o produto "geladeira frost free"
     E escolho um produto na lista
     Quando adiciono o produto no carrinho
     Entao valido que o produto foi adicionado ao carrinho
     
@cenario_negativo
Cenario: Produto selecionado nao atende ao que foi solicitado
     Dado que entro no site da Amazon buscando o produto "geladeira frost free"
     Entao escolho produto diferente ao "geladeira frost free"

@cenario_frete
Cenario: Realizar busca de produto e calcular frete para o endereco 
     Dado que entro no site da Amazon buscando o produto "geladeira frost free"
     E escolho um produto na lista
     Quando adiciono CEP para calculo de frete da UF de "SP" cidade de "Sao Paulo" junto com endereco "Henri Dunant" 
     Entao valido que foi retornado valor do produto junto com valor do frete
    
