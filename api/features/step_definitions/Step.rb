  Dado(/^que realizo a listagem de usuarios por pagina$/) do
   @users = Users.new.all_listing
  end
  
  Então(/^apresento o nome com sobrenome de cada um deles$/) do
    Users.new.listing_users(@users)
  end

  Dado(/^que realizo o cadastro de um novo usuario$/) do
    @id = Users.new.creat_user
  end
  
  Então(/^apresento o id dele$/) do
    Users.new.listing_new_user(@id)
  end