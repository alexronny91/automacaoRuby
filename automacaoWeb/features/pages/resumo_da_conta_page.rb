class ResumoDaConta < SitePrism::Page
  set_url 'customer/account'

  element :mensagemSucesso, :xpath, '//*[@id="__next"]/main/div/div/div[2]/div[1]/div/h3'
  element :botaoMeusdados, :xpath,  '//*[@id="__next"]/main/div/div/div[2]/div[2]/div/div[1]/div/a'
  element :mensagemSucessoAlteracao, :xpath, '//*[@id="__next"]/main/div/div/div[2]/h5'

  def validar_login
    mensagemSucesso.visible?
  end

  def abrir_meus_dados
    botaoMeusdados.click
  end

  def validar_alteracao
    raise 'Mensagem Inválida' if mensagemSucessoAlteracao.text != 'Cadastro alterado com sucesso'
  end

end