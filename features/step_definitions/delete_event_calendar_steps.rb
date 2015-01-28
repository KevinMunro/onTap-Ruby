When(/^I click the delete event button on the calendar page$/) do
  if jumbotron_page.is_event_jumbotron(@event_values['set_event_title'])
    jumbotron_page.click_delete_event_button_jumbotron()
  else
    calendar_page.click_delete_event_button_accordion(@event_values['set_event_title'])
  end
end

Then(/^I should see a error alert appear confirming the event was deleted$/) do
  expect(calendar_page).to have_alert_danger
  expect(calendar_page.get_danger_flash_text).to have_content(/Event \"#{@event_values['set_event_title']}\" was deleted/i)
end

