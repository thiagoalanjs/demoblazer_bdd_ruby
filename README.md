## Projeto de automação de teste com Ruby, Cucumber e o framework capybara ##

Esse repositório contém um projeto de automação de testes que roda 2 features no site https://www.demoblaze.com/, são elas:

1) "criacao_conta.feature" - testes realizados na sessão  'Sign Up' d
2) "carrinho_compras.feature" - testes na funcionalidade do carrinho de compras
3) "login.feature" - testes realizados na tela de login contendo cenários positivos e negativos.

### Instalação do ruby e dependências no Windows ###

Caso não tenha o ruby instalado no windows é só seguir o passo a passo:
```shell
https://ftstblog.wordpress.com/2018/03/27/cucumber-configuracao-windows/
```

### Instalação do Rbenv e dependências no Ubuntu ou qualquer outro baseado no Debian ###

1) Rodar o comando para atualização de pacotes
```shell
sudo apt update
```
2) Rodar o comando instalação das dependencias
```shell
sudo apt install git curl autoconf bison build-essential libssl-dev libyaml-dev libreadline6-dev zlib1g-dev libncurses5-dev libffi-dev libgdbm6 libgdbm-dev libdb-dev
```
3) Instalação Rbenv
```shell
curl -fsSL https://github.com/rbenv/rbenv-installer/raw/HEAD/bin/rbenv-installer | bash
```
4) Executar os comandos abaixo para configuração e path

```shell
echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bashrc
echo 'eval "$(rbenv init -)"' >> ~/.bashrc
source ~/.bashrc
```
5) Executar o comando para ver a versão instalada do rbenv
```shell
rbenv -v
```
6) Para instalação do ruby devemos ver antes as versões disponíveis 
```shell
rbenv install -l
```
7) Escolher uma versão por exemplo 2.7.7 (estou rodando essa nesse projeto :))
```shell
rbenv install 2.7.7
```
8) Deixando a versão disponível no projeto ou pasta da aplicação
```shell
rbenv local 2.7.7
```
9) Verificando a se a instalação deu certo
```shell
ruby --version

RESULTADO

ruby 2.7.7p221 (2022-11-24 revision 168ec2b1e5) [x86_64-linux]
```

#### Executando o projeto ####

1) Após a instalação do ruby vamos na pasta do projeto e executamos o comando 'bundle' para instalação das dependências dele na máquina, veja o exemplo abaixo:
```shell
~/Desktop/ruby_demoblazer$ bundle
Using public_suffix 5.0.4
Using addressable 2.8.5
Using ast 2.4.2
Using builder 3.2.4
Using bundler 2.1.4
Using byebug 11.1.3
Using mini_mime 1.1.5
Using mini_portile2 2.8.5
Using racc 1.7.3
Using nokogiri 1.15.5 (x86_64-linux)
Using rack 3.0.8
Using rack-test 2.1.0
Using xpath 3.2.0
Using capybara 3.2.1
Using childprocess 3.0.0
Using concurrent-ruby 1.2.2
Using cucumber-ci-environment 9.2.0
Using cucumber-messages 22.0.0
Using cucumber-gherkin 26.2.0
Using cucumber-tag-expressions 5.0.6
Using cucumber-core 12.0.0
Using cucumber-cucumber-expressions 17.0.1
Using cucumber-html-formatter 20.4.0
Using diff-lcs 1.5.0
Using multi_test 1.1.0
Using ffi 1.16.3
Using sys-uname 1.2.3
Using cucumber 9.1.0
Using i18n 1.14.1
Using faker 3.2.2
Using json 2.6.3
Using language_server-protocol 3.17.0.3
Using parallel 1.23.0
Using parser 3.2.2.4
Using rainbow 3.1.1
Using regexp_parser 2.8.2
Using rexml 3.2.6
Using rspec-support 3.12.1
Using rspec-core 3.12.2
Using rspec-expectations 3.12.3
Using rspec-mocks 3.12.6
Using rspec 3.12.0
Using rubocop-ast 1.30.0
Using ruby-progressbar 1.13.0
Using unicode-display_width 2.5.0
Using rubocop 1.57.2
Using rubyzip 2.3.2
Using selenium-webdriver 3.142.7
Using site_prism 2.15.1
Using syntax 1.2.2
Bundle complete! 9 Gemfile dependencies, 50 gems now installed.
Use `bundle info [gemname]` to see where a bundled gem is installed.
```

2) Devemos baixar também o chromedriver no site https://chromedriver.chromium.org/downloads e após descompactar o arquivo deverá ficar na pasta /usr/local/bin/

3) Enfim para executar a automação é só rodar o comando 'cucumber' para executar todos os cenários ou também o comando 'cucumber -t<@cenário_da_feature>' para rodar algum cenário separado como no exemplo abaixo:
```shell
    cucumber -t@login
```
![image](https://github.com/thiagoalanjs/demoblazer_bdd_ruby/assets/32438113/ba09f8f1-ec4b-46c9-aa68-64a29647f3e9)




### Executando testes em modo headless ###
Para executar os cenários em modo headless onde vamos abrir sessões em segundo plano sem a necessidade de abrir o navegador devemos seguir o que está configurado no arquivo cucumber.yml:

![image](https://github.com/thiagoalanjs/demoblazer_bdd_ruby/assets/32438113/d833c791-5a2e-4ba4-95d7-6e6d0153db52)

Nesse exemplo é só rodar com os parâmetros -p hmg -p headless, onde 'hmg' se refere ao que está descrito no arquivo hmg.yml (homologação) dentro de /support/config
```shell
cucumber -t@login -p hmg -p headless
```
![image](https://github.com/thiagoalanjs/demoblazer_bdd_ruby/assets/32438113/017c5ded-3f98-43d6-94c9-519a120beec2)

### Analisando relatório ###

Temos como acompanhar o relatório de andamento dos testes para ver o que passou e o que falhou. O arquivo .html se encontra em /results/report.html

![image](https://github.com/thiagoalanjs/demoblazer_bdd_ruby/assets/32438113/758d0fc3-faf7-4397-91ad-316f6e06781e)
 

![image](https://github.com/thiagoalanjs/demoblazer_bdd_ruby/assets/32438113/90c7c3b4-484a-467b-8620-28780022cece)

### Evidências dos testes ###

Após a execução dos testes podemos ter acesso as evidências das telas, elas ficarão dentro das pastas /results/test_failed ou /results/test_passed
