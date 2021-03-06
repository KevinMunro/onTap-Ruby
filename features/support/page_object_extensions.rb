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

  def event_details_page
    event_details_page ||= EventDetailsPage.new
  end

  def refer_a_friend_modal
    refer_a_friend_modal ||= ReferAFriendModal.new
  end

  def edit_profile_modal
    edit_profile_modal ||= EditProfileModal.new
  end

  def host_event_request_modal
    host_event_request_modal ||= HostEventRequestModal.new
  end

  def email_ontap_users_modal
    email_ontap_users_modal ||= EmailOntapUsersModal.new
  end
end

World(PageObjectHelpers)
