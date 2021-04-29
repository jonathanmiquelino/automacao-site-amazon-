Teste de página: Amazon.

Página original: https://www.amazon.com.br/

Esse teste foi feito para análise e verificação de processos dentro do portal da Amazon.

Onde será feito:
    - Realize uma busca por um produto.
    - Valide o retorno da busca.
    - Escolha um produto na lista.
    - Adicione o carrinho.
    - Valide o produto no carrinho.
    - Pesquise o CEP da Rua: Henri Dunant via API Rest com Rest Assured. 
    - Adicione o CEP para calcular o frete.
    - Valide o valor do frete.

Linguagem de programação: Ruby e o framework Capybara/Cucumber.

Linguagem de escrita dos cenários de teste: Cucumber/Gherkin-pt

Configurações e instalacoes iniciais

Sistema

Essa automação foi desenvolvida no sistema Linux (Ubuntu 20.04.2 LTS) e os comandos abaixo são específicos para este sistema.

Antes das instalações, garanta que voce está com o sistema atualizado, utilizando o seguinte comando:

sudo apt-get upgrade && sudo apt-get update


Configuração linux:

Passos:

1 - update the package index

sudo apt update

2 - instalação do ruby

sudo apt install ruby-full

3 - habilitar comando para desenvolvedor:

sudo apt-get install build-essential patch ruby-dev zlib1g-dev liblzma-dev

4 - habilitar permissao:

sudo gem update --system --no-user-install

Instalando o Bundler:

gem install bundler

Realizar o download do chromedriver e geckodriver nos respectivos sites, e colocar os arquivos dentro da pasta /usr/local/bin

http://chromedriver.chromium.org/downloads
https://github.com/mozilla/geckodriver/releases

Para realizar execução dos testes é necessário realizar os comandos abaixo no terminal dentro da pasta do projeto.

Rodar utilizando as tags:

-t @exemplo

Exemplos de comando completo: cucumber chrome=true -t @teste_1
