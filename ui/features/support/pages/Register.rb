class Register
    include Capybara::DSL
  
    def fill_in
      find(EL['dropbox_my_account']).click.all(EL['button_login_sing_in'], wait: 20)[2].click
      name = FFaker::Name.first_name
      last_name = FFaker::Name.last_name
      full_name = "#{name} #{last_name}"
      all(EL['field_form'])[0].set(name)
      all(EL['field_form'])[1].set(last_name)
      all(EL['field_form'])[2].set(FFaker::PhoneNumberBR.phone_number)
      email = FFaker::Internet.email
      all(EL['field_form'])[3].set(email)
      password = FFaker::Internet.password(min_length = 8, max_length = 16)
      all(EL['field_form'])[4].set(password)
      all(EL['field_form'])[5].set(password)
      find(EL['button_register_sing_in']).click
      assert_text(full_name, wait: 20)
      return email, password, full_name
    end
  
  end
  