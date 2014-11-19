class LoginPage < SitePrism::Page
  element :login_field, "#login_username"
  element :password_field, "#login_password"
  element :login_button, "input.btn.btn-primary"

  def goto_page()
    visit('http://localhost:3000/calendar')
  end

  def set_username(username)
    login_field.set(username)
  end 

  def set_password(password)
    password_field.set(password)
  end 

  def click_login_button()
    login_button.click()
  end
end
