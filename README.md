Desafio QA - CESAR
=======

Este repositório contém a resolução de um Desafio de QA para o CESAR, onde serão automatizados os testes de duas aplicações (https://www.discourse.org/)(https://www.cesar.school/) .


# Linguagem

	- Ruby v2.6.7


# Configuração

## Chromedriver ##

1 -> Fazer o download do chromedriver de acordo com a versão do seu Google Chrome

https://chromedriver.storage.googleapis.com/index.html

2 -> Extrair o arquivo dentro da pasta "C:\Windows

## Ruby ##

1 -> Fazer o download da versão 2.6.7 do Ruby + Devkit

https://rubyinstaller.org/downloads/archives/

2 -> Executar o .exe seguindo os seguintes passos:

    - Executar o instalador;
    - Aceitar a “License”;
    - Clicar em Next; 
    - Selecionar todos os componentes e clicar em Next;
    - Aguardar o término da instalação;
    - Após a instalação concluída clicar em FINISH marcando a opção Run ridk install;
    - Atualizar o MSYS2 no prompt que acabou de ser aberto (Opção 2);

## Projeto ##

1 -> Na pasta raiz do projeto, executar os comandos abaixo:

    gem install bundler
    bundle install

## Executando os testes ##

1 -> Para rodar os testes referente a "Atividade de Automação 1"

    cucumber -t @discourse

2 -> Para rodar os testes referente a "Atividade de Automação 2"

    cucumber -t @cesar_school

## Observações ##

1 -> O relatório de testes pode ser encontrado após a execução dos testes em:

    ./reports/index.html
