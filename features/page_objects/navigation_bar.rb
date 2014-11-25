class NavigationBar < SitePrism::Page
  element :add_suggestion, :xpath, "//a[contains(., 'Suggest Topics')]"
  element :add_new_event_page, :xpath, "//a[contains(., 'Add New Event')]"
  element :admin_dropdown, :xpath, "//a[@class='dropdown-toggle']"

  def click_new_suggestion_button()
    add_suggestion.click()
  end

  def click_add_new_event_button()
    admin_dropdown.click()
    add_new_event_page.click()
    sleep(4)
  end
end

