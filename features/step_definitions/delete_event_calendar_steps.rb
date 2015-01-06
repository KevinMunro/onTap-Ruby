When(/^I click the delete event button on the calendar page$/) do
  event_title="Java Lunch and Learn To Delete"
  if jumbotron_page.is_event_jumbotron(event_title)
    jumbotron_page.click_delete_event_button_jumbotron()
  else
    calendar_page.click_delete_event_button_accordion(event_title)
  end
end

Then(/^I should see a error alert appear confirming the event was deleted$/) do
  calendar_page.should has_event_succesfully_deleted?
end

