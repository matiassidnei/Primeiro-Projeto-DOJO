#language: pt
#utf-8

Funcionalidade: Cadastrar Usuário
Eu como Administrador do Site
Quero logar no sistema 
Cadastrar um usuário

Cenario: Realizar o cadastro 
Dado que eu esteja na home do Site
Quando preencher os campos de usuario e senha
Então o sistema apresenta a home para cadastro

Cenario: Alterar o cadastro de um usuário existente
Dado que eu esteja na home do Site
Quando preencher os campos de usuario e senha
Então o sistema apresenta a tela para alterar cadastro
E eu acessar um usuário
E eu editar o usuário
Então o sistema salva a alteracao com sucesso







		