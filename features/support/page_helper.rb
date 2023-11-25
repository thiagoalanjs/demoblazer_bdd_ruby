Dir[File.join(File.dirname(__FILE__),
    '../pages/*_page.rb')].each { |file| require file }

def wait_elements
    sleep 2
end

def refresh_page 
    @refresh_page = page.driver.browser.navigate.refresh
end

# Modulos para chamar as classes instanciadas
module Pages
    def criacao_conta
        @criacao_conta ||= CriacaoConta.new
    end

    def carrinho_compras
        @carrinho_compras ||= CarrinhoCompras.new
    end

    def login
        @login ||= Login.new
    end
end
