class Access
  include Capybara::DSL

  def url
    visit(EL['url'])
  end

  def login(data)
    find(EL['dropbox_my_account']).click.all(EL['button_login_sing_in'], wait: 20)[1].click
    all(EL['field_login_password'], wait: 20)[0].set(data[0])
    all(EL['field_login_password'], wait: 20)[1].set(data[1])
    find(EL['button_login']).click
    assert_text(data[2], wait: 20)
  end

end
