#language: pt
#encoding: utf-8
@login
Funcionalidade: Autenticação de login
- Como cliente
- Quero me autenticar na aplicação através da tela de login 


Contexto: 
    Dado que acesso o site demoblaze
    Quando clico no link de Log in
    
Cenário: Autentição válida
        E realizo autentição com dados válidos
    Então verifico a mensagem "Welcome thiagoqa" no menu 

Esquema do Cenário: Autenticação inválida
        E digito "<username>" inválido
        E digito "<password>" inválida
        E clico no botão Log in
    Então verifico a mensagem "<error_message>" no alert

Exemplos:
    |username                       | password              | error_message                           |
    |user_que_nao_existe144rqwt43   | qualquercoisa         | User does not exist.                    |
    |                               | qualquercoisa         | Please fill out Username and Password.  | 
    |qualquercoisa                  |                       | Please fill out Username and Password.  | 
    |                               |                       | Please fill out Username and Password.  |
