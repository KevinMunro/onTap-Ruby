module PageObjectHelpers

  def new_suggestion_page
    new_suggestion_page ||= NewSuggestionPage.new
  end

  def login_page
    login_page ||= LoginPage.new
  end

  def navigation_bar
    navigation_bar ||= NavigationBar.new
  end

  def calendar_page
    calendar_page ||= CalendarPage.new
  end

  def add_new_event_page
    add_new_event_page ||= AddNewEventPage.new
  end

  def jumbotron_page
    jumbotron_page ||= JumbotronPage.new
  end
end

World(PageObjectHelpers)
