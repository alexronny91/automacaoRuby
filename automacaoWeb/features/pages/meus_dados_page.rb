class MeusDados < SitePrism::Page
  set_url 'customer/account/edit'

  element :nome,           '#nome'
  element :sobrenome,      '#sobrenome'
  element :telefone,       '#telefone'
  element :celular,        '#celular'
  element :dataNascimento, '#dob'
  element :sexo,           '#sexo'
  element :botaoSalvar, :xpath, '//*[@id="__next"]/main/div/div/div[2]/form/button'

  def alterar_dados
    nome.set 'Andre'
    #sleep 1
    sobrenome.set 'Soares'
    #sleep 1
    telefone.set '1126262626'
    #sleep 1
    celular.set '11967676767'
    #sleep 1
    dataNascimento.set '14/05/1991'
    #sleep 1
    sexo.select 'Masculino'
    salvar_alteracao
  end

  def salvar_alteracao
    botaoSalvar.click
  end

end