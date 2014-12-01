class CalendarPage < SitePrism::Page
  element :suggestion_succesfully_added, "div[text='/Suggestion (.*) was created /i']"
  element :event_succesfully_added, "div[text='/Event (.*) was created /i']"
  element :event_succesfully_deleted, "div[text='/Event (.*) was deleted /i']"

  #element :event_title,:xpath, "//div[contains(@class, 'title') and contains(text(), 'Java Webinar')][1]"

  def click_delete_event_button_accordion(title)
    page.first(:xpath, "(//div[contains(@class, 'title') and contains(text(), '" + title + "')])").click
    sleep(2)
    page.find(:xpath, "(//div[contains(@class, 'title') and contains(text(), '" + title + "')]/../following-sibling::div[1]/span/a[contains(text(), 'Delete')])").click
  end

  def click_edit_event_button_accordion(title)
    page.first(:xpath, "(//div[contains(@class, 'title') and contains(text(), '" + title + "')])").click
    sleep(2)
    page.find(:xpath, "(//div[contains(@class, 'title') and contains(text(), '" + title + "')]/../following-sibling::div[1]/span/a[contains(text(), 'Edit')])").click
  end

end
