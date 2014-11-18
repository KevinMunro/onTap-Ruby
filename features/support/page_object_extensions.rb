module PageObjectHelpers

  def new_suggestion_page
    new_suggestion_page ||= NewSuggestionPage.new
  end

  def login_page
    login_page ||= LoginPage.new
  end
end

World(PageObjectHelpers)
