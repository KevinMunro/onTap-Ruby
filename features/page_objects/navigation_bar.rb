class NavigationBar < SitePrism::Page
  element :add_suggestion, :xpath, "//a[contains(., 'Suggest Topics')]"
  element :admin_dropdown, :xpath, "//a[@class='dropdown-toggle']"
  element :add_new_event_page, :xpath, "//a[contains(., 'Add New Event')]"
  element :add_new_lab_link, :xpath, "//a[contains(., 'Add New Lab')]"
  element :view_suggestions_link, :xpath, "//a[contains(., 'View Suggestions')]"
  element :email_ontap_users_link, :xpath, "//a[contains(., 'Email onTap Users')]"
  element :archive_link, :xpath, "//a[contains(., 'Archive')]"
  element :labs_link, :xpath, "//a[contains(., 'Labs')]"
  element :events_link, :xpath, "//a[contains(., 'Events')]"
  element :home_link, :xpath, "//a[contains(., 'onTap @ Orasi')]"
  element :profile_link, :xpath, "//a[contains(., 'Welcome')]"
  element :logout_link, :xpath, "//a[contains(., 'Logout?')]"

  def click_new_suggestion_button()
    add_suggestion.click()
  end

  def click_new_suggestion_button()
    archive_link.click()
  end

  def click_labs_button()
    labs_link.click()
  end

  def click_events_button()
    events_link.click()
  end

  def click_home_button()
    home_link.click()
  end

  def click_add_new_event_button()
    admin_dropdown.click()
    add_new_event_page.click()
  end

  def click_add_new_lab_button()
    admin_dropdown.click()
    add_new_lab_link.click()
  end

  def click_view_suggestions_button()
    admin_dropdown.click()
    view_suggestions_link.click()
  end

  def click_email_ontap_users_button()
    admin_dropdown.click()
    email_ontap_users_link.click()
  end

  def click_profile_button()
    profile_link.click()
  end

  def click_logout_button()
    logout_link.click()
  end
end

