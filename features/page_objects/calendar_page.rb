class CalendarPage < SitePrism::Page
  element :alert_success, "div.alert-success"
  element :alert_danger, "div.alert-danger"

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

  def click_request_to_attend_event_button_accordion(title)
    page.first(:xpath, "(//div[contains(@class, 'title') and contains(text(), '" + title + "')])").click
    page.find(:xpath, "(//div[contains(@class, 'title') and contains(text(), '" + title + "')]/../following-sibling::div[1]/a[contains(text(), 'Request To Attend')])").click
  end

  def click_refer_a_friend_button_accordion(title)
    page.first(:xpath, "(//div[contains(@class, 'title') and contains(text(), '" + title + "')])").click
    page.find(:xpath, "(//div[contains(@class, 'title') and contains(text(), '" + title + "')]/../following-sibling::div[1]/a[contains(text(), 'Refer a Friend')])").click
  end

  def get_success_flash_text
    return alert_success.text()
  end

  def get_danger_flash_text
    return alert_danger.text()
  end

  def click_approve_link_in_request_flash
    alert_success.find("a", :text => 'Approve').click()
  end

  def click_reject_link_in_request_flash
    alert_success.find("a", :text => 'Reject').click()
  end

  def click_details_link_in_request_flash
    alert_success.find("a", :text => 'Details').click()
  end

  def click_remove_link_in_flash
    alert_success.find("a", :text => 'Remove').click()
  end

  def click_finalize_well(title)

  end

  def click_dont_attend_well(title)

  end
end
