class ReferAFriendModal < SitePrism::Page
  element :refer_a_friend_title, "h4#profile_modal_label"
  element :refer_a_friend_email_field, "input#referral_refer_email"
  element :refer_a_friend_message_field, "input#referral_refer_message"
  element :refer_a_friend_cancel_button, "button#cancel_referral_button"
  element :refer_a_friend_send_referral_button, "button#send_referral_button"

  def set_email_address_field(email)
    refer_a_friend_email_field.set(email)
  end

  def set_email_message_field(message)
    refer_a_friend_message_field.set(message)
  end

  def click_send_referral_button()
    refer_a_friend_send_referral_button.click()
  end

  def click_cancel_referral_button()
    refer_a_friend_cancel_button.click()
  end

end
