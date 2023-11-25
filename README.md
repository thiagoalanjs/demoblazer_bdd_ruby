## Projeto de automação de teste com Ruby, Cucumber e o framework capybara ##


### Instalação do ruby e dependências no Windows ###

Seguir o passo a passo: 
```shell
https://ftstblog.wordpress.com/2018/03/27/cucumber-configuracao-windows/
```

### Instalação do Rbenv e dependências no Ubuntu ou qualquer outro baseado no Debian ###

1) Rodar o comando para atualização de pacotes
```shell
sudo apt update
```
2) Rodar o comando intalação das dependencias
```shell
sudo apt install git curl autoconf bison build-essential libssl-dev libyaml-dev libreadline6-dev zlib1g-dev libncurses5-dev libffi-dev libgdbm6 libgdbm-dev libdb-dev
```
3) Instalação Rbenv
```shell
curl -fsSL https://github.com/rbenv/rbenv-installer/raw/HEAD/bin/rbenv-installer | bash
```
4) Executar os comandos abaixo e ver

```shell
echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bashrc
echo 'eval "$(rbenv init -)"' >> ~/.bashrc
source ~/.bashrc
```
5) Executar o comando para ver a versão instalada do rbenv
```shell
rbenv -v
```
6) Para instalação do ruby devemos ver as versões disponíveis 
```shell
rbenv install -l
```
7) Escolher uma versão por exemplo 3.0.6
```shell
rbenv install 3.0.6
```
8) Deixando a versão disponível no projeto ou pasta da aplicação
```shell
rbenv local 3.0.6
```
9) Verificando a se a instalação deu certo
```shell
ruby --version

RESULTADO

ruby 3.0.6p216 (2023-03-30 revision 23a532679b) [x86_64-linux]
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

2) Devemos deixar baixar também a o chromedriver no site https://chromedriver.chromium.org/downloads, após descompactar o arquivo deverá ficar na pasta /usr/local/bin/

3) Enfim para executa a automação é só executar o comando 'cucumber' para rodar todos os cenários ou também cucumber -t<@cenário_da_feature> para rodar alguma cenário separado
```shell
    cucumber
```


### Drivers: ###
Install and include in PATH
- [chromedriver](https://sites.google.com/a/chromium.org/chromedriver/)
- [phantomjs](http://phantomjs.org/)
- [internetExplorerDriver](http://www.seleniumhq.org/download/)
- [Firefox Geckodriver](https://developer.mozilla.org/en-US/docs/Mozilla/QA/Marionette/WebDriver)

Install [Webdriver Safari extension](http://selenium-release.storage.googleapis.com/2.48/SafariDriver.safariextz).


### Run tests in DEV with Chrome###
Type this in the tests folder:
```shell
bundle exec cucumber  -p ci -p html -p headless -p dev
```

### Run tests in DEV with headless###
Type this in the tests folder:
```shell
bundle exec cucumber  -p ci -p html -p headless -p dev
```

### Run tests in HMG with Chrome###
Type this in the tests folder:
```shell
bundle exec cucumber -p pretty -p html -p no_headless -p hmg
```

### Run tests in HMG with headless###
Type this in the tests folder:
```shell
bundle exec cucumber -p ci -p html -p headless -p hmg
```

### Run with tags###
Type this in the tests folder:
```shell
bundle exec cucumber --tags @run
```
