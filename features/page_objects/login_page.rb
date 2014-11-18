class LoginPage < SitePrism::Page
  element :login_field, "#login_username"
  element :password_field, "#login_password"

  def goto_page()
    visit('http://ontapstaging.herokuapp.com/')
  end

  def set_username(username)
    login_field.set(username)
  end 

  def set_password(password)
    password_field.set(password)
  end 
end
