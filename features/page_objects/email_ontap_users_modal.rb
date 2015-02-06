class EmailOntapUsersModal < SitePrism::Page

  element :email_users_subject_field, "input#email_subject"
  element :email_users_content_field, "textarea#email_message"

  element :email_users_send_button, "button#send_email_button_email_all"
  element :email_users_cancel_button, "button#cancel_email_button_email_all"

  def set_email_users_subject_field(text)
    email_users_subject_field.set(text)
  end

  def set_email_users_content_field(text)
    email_users_content_field.set(text)
  end

  def click_email_users_send_button
    email_users_send_button.click()
  end

  def click_email_users_cancel_button
    email_users_cancel_button.click()
  end
end
