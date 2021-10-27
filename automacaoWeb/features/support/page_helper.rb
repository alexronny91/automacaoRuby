Dir[File.join(File.dirname(__FILE__),
              '../pages/*.rb')].sort.each { |file| require file }

# Modulos para chamar as classes instanciadas
module PageObjects

  def login_page
    Login.new
  end

  def resumo_da_conta_page
    ResumoDaConta.new
  end

  def meus_dados_page
    MeusDados.new
  end

end
