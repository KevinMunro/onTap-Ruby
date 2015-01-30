class EditProfileModal < SitePrism::Page

  element :profile_food_vegan_radio, "input#profile_food_pref_vegan"
  element :profile_food_vegetarian_radio, "input#profile_food_pref_vegetarian"
  element :profile_food_gluten_free_radio, "input#profile_food_pref_gluten_free"
  element :profile_food_none_radio, "input#profile_food_pref_none"
  element :profile_food_other_radio, "input#profile_food_pref_other"
  element :profile_food_other_field, "input#profile_other_food"

  element :profile_location_greensboro_radio, "input#profile_location_greensboro"
  element :profile_location_atlanta_radio, "input#profile_location_atlanta"
  element :profile_location_other_radio, "input#profile_location_other"

  element :profile_notification_setting, "input#profile_notification_settings"

  element :profile_save_changes_button, "button#update_profile_button"
  element :profile_cancel_changes_button, "button#cancel_profile_button"

  def click_profile_vegan_radio
    profile_food_vegan_radio.click()
  end

  def click_profile_vegetarian_radio
    profile_food_vegetarian_radio.click()
  end

  def click_profile_gluten_free_radio
    profile_food_gluten_free_radio.click()
  end

  def click_profile_none_radio
    profile_food_none_radio.click()
  end

  def click_profile_other_radio
    profile_food_other_radio.click()
  end

  def set_profile_other_field(other_food)
    profile_food_other_field.set(other_food)
  end

  def click_profile_greensboro_radio
    profile_location_greensboro_radio.click()
  end

  def click_profile_atlanta_radio
    profile_location_atlanta_radio.click()
  end

  def click_profile_other_radio
    profile_location_other_radio.click()
  end

  def click_profile_notification_setting
    profile_notification_setting.click()
  end

  def click_profile_submit_button
    profile_save_changes_button.click()
  end

  def click_profile_cancel_button
    profile_cancel_changes_button.click()
  end

end
