class JumbotronPage < SitePrism::Page
  element :jumbotron, "div.jumbotron"


  def is_event_jumbotron(title)
    if jumbotron.find("div.title").text == title
      return true
    end
    return false
  end

  def click_delete_event_button_jumbotron()
    jumbotron.find(:xpath, "//a[contains(text(), 'Delete')]").click
  end

  def click_edit_event_button_jumbotron()
    jumbotron.find(:xpath, "//a[contains(text(), 'Edit')]").click
  end

  def click_details_event_button_jumbotron()
    jumbotron.find(:xpath, "//a[contains(text(), 'Details')]").click
  end

  def click_attend_event_button_jumbotron()
    jumbotron.find(:xpath, "//a[contains(text(), 'Attend')]").click
  end

  def click_request_to_attend_event_button_jumbotron()
    jumbotron.find(:xpath, "//a[contains(text(), 'Request To Attend')]").click
  end

  def click_finalize_well_jumbotron()
    jumbotron.find("div.well-warning").find("a").click
  end

  def click_dont_attend_well_jumbotron()
    jumbotron.find("div.well-success").find("a").click
  end

  def get_jumbotron_title
    return jumbotron.find("div.title").text
  end

  def click_refer_a_friend_button_jumbotron()
    jumbotron.find(:xpath, "//a[contains(text(), 'Refer a Friend')]").click
  end

  def click_add_to_calendar_button_jumbotron()
    jumbotron.find(:xpath, "//a[contains(text(), 'Add To Calendar')]").click
  end
end
