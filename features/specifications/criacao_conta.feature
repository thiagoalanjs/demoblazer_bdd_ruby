#language: pt
@criacao_conta
Funcionalidade: Registrar Conta

- Como cliente
- Quero registrar uma conta no e-commerce do Demoblaze 

Contexto: 
    Dado que acesso o site demoblaze
    Quando clico no link Sign up

    @registro_sucesso
    Cenário: Criação de usuário na plafaforma
           E realizo cadastro
        Então valido a mensagem de sucesso "Sign up successful."   

    @registro_invalido
    Esquema do Cenário: Criação de conta fluxos inválidos
           E preencho o campo username "<username>" 
           E preencho o campo senha "<password>"
           E clico no botão Sign Up
        Então valido a mensagem de erro "<error_message>"

    Exemplos:
        | username    | password | error_message                          |       
        | demoblaze   |          | Please fill out Username and Password. |
        |             | pass123  | Please fill out Username and Password. |
        |             |          | Please fill out Username and Password. |
        | teste       |  teste   | This user already exist.               |   