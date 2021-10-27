class Login < SitePrism::Page
  set_url 'customer/account/login'

  element :usuario,            '#emailCpf'
  element :senha,              '#password'
  element :botaoLogar, :xpath, '//*[@id="__next"]/main/div/div/div[2]/div[1]/div[1]/form/button'

  def inserir_dados
    usuario.set 'alex@testeqa.com'
    senha.set '123456'
  end

  def logar
    botaoLogar.click
  end

end