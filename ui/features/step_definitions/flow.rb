Quando("acesso a aplicação da phptravels") do
    Access.new.url
  end
  
  Então("realizo o cadastro de um novo usuario") do
    $data = Register.new.fill_in
  end
  
  Então("realizo o login com os dados do cadastro anterior") do
    Access.new.login($data)
  end
  
  Quando("seleciono o local de entrega e retirada do meu carro") do
    Car.new.choose
  end
  
  Então("ao reservar um automovel verifico se ele esta na minha conta") do
    Car.new.rent
  end