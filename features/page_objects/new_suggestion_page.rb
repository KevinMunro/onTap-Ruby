class NewSuggestionPage < SitePrism::Page
  element :suggestion_title_field, "#suggestion_suggestion_title"
  element :suggestion_description_field, "#suggestion_suggestion_description"
  element :create_suggestion, "input.btn.btn-primary"

  def set_suggestion_title(username)
    login_field.set(username)
  end 

  def set_suggestion_description(password)
    password_field.set(password)
  end 

  def click_create_suggestion_button()
    login_button.click()
  end
#  def set_email(email)
#    mail_field.set(email)
#  end 

end
