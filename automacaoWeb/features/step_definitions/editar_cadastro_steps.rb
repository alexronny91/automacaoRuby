Dado('que estou na pagina de login da Drogasil') do
  login_page.load
end

Dado('insiro meu email e senha') do
  login_page.inserir_dados
  login_page.logar
end

Dado('valido que estou logado') do
  resumo_da_conta_page.validar_login
end

Quando('quando clico no menu em Meus Dados') do
  resumo_da_conta_page.abrir_meus_dados
end

Quando('faço as alteracoes nos campos necessarios') do
  meus_dados_page.alterar_dados
end

Quando('clico no botao salvar') do
  meus_dados_page.salvar_alteracao
end

Entao('valido uma mensagem de sucesso') do
  resumo_da_conta_page.validar_alteracao
end