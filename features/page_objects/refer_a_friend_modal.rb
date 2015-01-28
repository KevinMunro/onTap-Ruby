class CalendarPage < SitePrism::Page
  element :refer_a_friend_title, "div#profile_modal_label"
  element :refer_a_friend_email_field, "div#referral_refer_email"
  element :refer_a_friend_message_field, "div#referral_refer_message"
  element :refer_a_friend_cancel_button, "div#cancel_referral_button"
  element :refer_a_friend_send_referral_button, "div#send_referral_button"
end
