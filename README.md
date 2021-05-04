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



Configuração Windows:

Passos:

1 - Ao executar o download, você irá ver uma tela para escolher o diretório (utilizar diretório default) e 3 checkbox abaixo, 2 check's que configuram as variáveis de ambiente e adicionam arquivos .rb a instalação atual, e o ultimo é necessário dar um check, que está falando para utilizar o padrão UTF-8 (Padrão de caracteres, assim ele conseguira ler/utilizar caracteres especiais).

2 - Após a instalar, aparecerá um box descrito: run 'ridk install', deixe marcado e clique em "Finish", nesse passo, você já instalou o ruby, mas ainda é necessário instalar o DevKit (Kit de ferramentas para desenvolvimento).

Abrirá um terminal então instale as 3 opções na ordem 1,2,3 que irá ser instalados pacotes e será realizado configurações, é possível fazer as mesmas configurações manuais ou por linha de comando, mas nas últimas versões do ruby, eles criaram essa interface para facilitar.

Instalando o Bundler: O bundler é nossa gema que gerencia as dependências do projeto, ele utiliza como referência para o seu trabalho o arquivo Gemfile, que é onde você adiciona todas as dependências do seu projeto.

Executar o comando abaixo:

Pra você utiliza-lo é necessário instalar, executando o comando abaixo no terminal:

gem install bundler
atualizar e baixar as gems para o projeto:

bundle update --bundler
Realizar o download do chromedriver e geckodriver nos respectivos sites, e colocar os arquivos dentro da pasta Ruby27-x64/bin.... Obs: o chrome headless (chrome sem interface, mas tira print screen do mesmo jeito, é muito utilizado para CI, que o servidor não tem uma interface) já vem baixado automaticamente junto com o chromedriver.

http://chromedriver.chromium.org/downloads
https://github.com/mozilla/geckodriver/releases
