class Car
    include Capybara::DSL
  
    def choose
        all(EL['button_car'])[7].click
        click_on("Pick up Location", wait: 10)
        all(EL['field_car_list'], wait: 10)[1].click 
        find(EL['button_search'], wait: 10).click 
        within(EL['div_car']) do 
            find(EL['title_car']).text
            find(EL['button_details']).click 
        end
        
    end
  
    def rent
        find(EL['button_rent_car']).click
        (0..3).each do |i|
            all(EL['button_aditional_service'])[i].click 
        end
        find(EL['button_confirm_rent']).click 
        find(EL['field_logo']).click 
        all(EL['button_login_sing_in'], wait: 20)[0].click
        all(EL['button_login_sing_in'], wait: 20)[1].click
        puts "O carro foi reservado com sucesso".blue
    end
  
  end
  