Dado('que o usuario consulte informacoes do produto') do
    @get_url = 'https://portal.vr.com.br/api-web/comum/enumerations/VRPAT'  
  # Aqui era para relacionar o Dado com a informação da base url mencionada no arquivo require.rb
   outra forma que tentei : @teste = HTTParty.get ('https://portal.vr.com.br/api-web/comum/enumerations/VRPAT')
  puts @ teste
  
  
  
  end
    
    Quando('ele realizar a pesquisa') do
     # @id: = HTTParty.get(@get_url)

      getProdutos (id)
      self.class.get ('/vrpat/#{id}')
#Tentei as duas formas , não tive sucesso
    end
    
    Então('a informacao da chave deve retornar') do 
      expect(@id.message).to eql “typeOfEstablishment”
      
    end

    # a minha intenção era criar o codigo que fosse responsavel de trazer todas as informações de cada ID,
    chamei por @nome, @id, pelo proprio numero do ID, mas não consegui fazer o teste passar. o resultado era 1 acerto, e 2 ignorados.

