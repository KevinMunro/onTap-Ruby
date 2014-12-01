class JumbotronPage < SitePrism::Page
  element :jumbotron, "div.jumbo-title"


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
end
