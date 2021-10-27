#language: pt

@prova
@editar_cadastro
Funcionalidade: Editar Cadastro de Usuário no Site da Drogasil
  Eu como usuário
  Quero logar e editar meus dados no site da Drograsil

  @logar_editar
  Cenario: Logar e Editar Cadastro
    Dado que estou na pagina de login da Drogasil
    E insiro meu email e senha
    E valido que estou logado
    Quando quando clico no menu em Meus Dados
    E faço as alteracoes nos campos necessarios
    E clico no botao salvar
    Entao valido uma mensagem de sucesso