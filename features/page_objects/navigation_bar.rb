class NavigationBar < SitePrism::Page
  element :add_suggestion, :xpath, "//a[contains(., 'Suggest Topics')]"
  element :add_new_event_page, :xpath, "//ul[@class='dropdown-menu']//a[contains(., 'Add New Event')]"

  def click_new_suggestion_button()
    add_suggestion.click()
  end

  def add_new_event_page()
    add_new_event_page.click()
  end
end
