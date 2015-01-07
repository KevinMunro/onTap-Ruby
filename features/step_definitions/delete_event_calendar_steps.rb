When(/^I click the delete event button on the calendar page$/) do
  event_title="Java Lunch and Learn To Delete"
  if jumbotron_page.is_event_jumbotron(event_title)
    jumbotron_page.click_delete_event_button_jumbotron()
  else
    calendar_page.click_delete_event_button_accordion(event_title)
  end
end

Then(/^I should see a error alert appear confirming the event was deleted$/) do
  calendar_page.should have_alert_success
  expect(calendar_page.get_success_flash_text).to have_content(/Event (.*) was deleted/i)
#  element :event_succesfully_deleted, "div[text='/Event (.*) was deleted /i']"
end

