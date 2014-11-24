class NewSuggestionPage < SitePrism::Page
  element :suggestion_title_field, "#suggestion_suggestion_title"
  element :suggestion_description_field, "#suggestion_suggestion_description"
  element :create_suggestion, "input.btn.btn-primary"

  def set_suggestion_title(title)
    suggestion_title_field.set(title)
  end 

  def set_suggestion_description(description)
    suggestion_description_field.set(description)
  end 

  def click_create_suggestion_button()
    create_suggestion.click()
  end
#  def set_email(email)
#    mail_field.set(email)
#  end 

end
