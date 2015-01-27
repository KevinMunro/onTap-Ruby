When(/^I click the attend button$/) do
  if jumbotron_page.is_event_jumbotron(@event_values['set_event_title'])
    jumbotron_page.click_attend_event_button_jumbotron()
  else
    calendar_page.click_attend_event_button_accordion(@event_values['set_event_title'])
  end
end

Then(/^I should see a success alert appear confirming attendance of event$/) do
  #calendar_page.should have_alert_success
  expect(calendar_page).to have_alert_success
  expect(calendar_page.get_success_flash_text).to have_content(/You are now attending the event: #{@event_values['set_event_title']}!/i)
end

When(/^I click the request to attend button$/) do
  if jumbotron_page.is_event_jumbotron(@event_values['set_event_title'])
    jumbotron_page.click_request_to_attend_event_button_jumbotron()
  else
    calendar_page.click_request_to_attend_event_button_accordion(@event_values['set_event_title'])
  end
end

Then(/^I should see a success alert appear confirming a request was generated$/) do
  #calendar_page.should have_alert_success
  expect(calendar_page).to have_alert_success
  expect(calendar_page.get_success_flash_text).to have_content(/A request has been sent to attend the event: #{@event_values['set_event_title']}/i)
end

Then(/^I should see a success alert with the request to attend$/) do
  #calendar_page.should have_alert_success
  expect(calendar_page).to have_alert_success
  expect(calendar_page.get_success_flash_text).to have_content(/(.*) is requesting to attend the event #{@event_values['set_event_title']}/i)
end

When(/^I click the approve button on the request$/) do
  calendar_page.click_approve_link_in_request_flash()
end

Then(/^I should see a success alert saying the user is now attending$/) do
  #calendar_page.should have_alert_success
  expect(calendar_page).to have_alert_success
  expect(calendar_page.get_success_flash_text).to have_content(/(.*) is now attending the event: #{@event_values['set_event_title']}!/i)
end
#ontap currenty has success, instead of danger flash
Then(/^I should see a error alert saying the user is not approved to attend$/) do
  #calendar_page.should have_alert_success
  expect(calendar_page).to have_alert_success
  expect(calendar_page.get_success_flash_text).to have_content(/(.*) has been rejected from attending event: #{@event_values['set_event_title']}!/i)
end

Then(/^I should see a success alert saying the attedance request has been approved$/) do
  #calendar_page.should have_alert_success
  expect(calendar_page).to have_alert_success
  expect(calendar_page.get_success_flash_text).to have_content(/(.*) has approved your request to attend event #{@event_values['set_event_title']}/i)
end
#ontap currenty has success, instead of danger flash
Then(/^I should see a error alert saying the attedance request has been rejected$/) do
  #calendar_page.should have_alert_success
  expect(calendar_page).to have_alert_success
  expect(calendar_page.get_success_flash_text).to have_content(/(.*) has rejected your request to attend event #{@event_values['set_event_title']}/i)
end

When(/^I click the reject button on the request$/) do
  calendar_page.click_reject_link_in_request_flash()
end

When(/^I click the remove button on the flash$/) do
  calendar_page.click_remove_link_in_flash()
end

Then(/^I should see no flash alert$/) do
  expect(calendar_page).to have_no_alert_success
end

