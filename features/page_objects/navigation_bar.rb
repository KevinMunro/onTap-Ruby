class NavigationBar < SitePrism::Page
  element :add_suggestion, :xpath, "//a[contains(., 'Suggest Topics')]"

  def click_new_suggestion_button()
    add_suggestion.click()
  end
end
