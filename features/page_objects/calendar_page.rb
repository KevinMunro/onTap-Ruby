class CalendarPage < SitePrism::Page
  element :suggestion_succesfully_added, "div[text='/Suggestion (.*) was created /i']"
  element :event_succesfully_added, "div[text='/Event (.*) was created /i']"
  element :event_succesfully_deleted, "div[text='/Event (.*) was deleted /i']"
  element :attending_event_succesful, "div[text='/You are no attending the event: (.*) /i']"
  element :request_to_attend_sent, "div[text='/A request has been sent to attend the event: (.*) /i']"
#Test User is now attending the event: Java Lunch and Learn! 
  #element :event_title,:xpath, "//div[contains(@class, 'title') and contains(text(), 'Java Webinar')][1]"

  def click_delete_event_button_accordion(title)
    page.first(:xpath, "(//div[contains(@class, 'title') and contains(text(), '" + title + "')])").click
    page.find(:xpath, "(//div[contains(@class, 'title') and contains(text(), '" + title + "')]/../following-sibling::div[1]/span/a[contains(text(), 'Delete')])").click
  end

  def click_edit_event_button_accordion(title)
    page.first(:xpath, "(//div[contains(@class, 'title') and contains(text(), '" + title + "')])").click
    page.find(:xpath, "(//div[contains(@class, 'title') and contains(text(), '" + title + "')]/../following-sibling::div[1]/span/a[contains(text(), 'Edit')])").click
  end

  def click_details_event_button_accordion(title)
    page.first(:xpath, "(//div[contains(@class, 'title') and contains(text(), '" + title + "')])").click
    page.find(:xpath, "(//div[contains(@class, 'title') and contains(text(), '" + title + "')]/../following-sibling::div[1]/a[contains(text(), 'Details')])").click
  end

  def click_attend_event_button_accordion(title)
    page.first(:xpath, "(//div[contains(@class, 'title') and contains(text(), '" + title + "')])").click
    page.find(:xpath, "(//div[contains(@class, 'title') and contains(text(), '" + title + "')]/../following-sibling::div[1]/a[contains(text(), 'Attend')])").click
  end

  def click_finalize_well(title)

  end

  def click_dont_attend_well(title)

  end
end
