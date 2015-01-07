When(/^I click the attend button$/) do
  event_title="Java Lunch and Learn FIND"
  if jumbotron_page.is_event_jumbotron(event_title)
    jumbotron_page.click_attend_event_button_jumbotron()
  else
    calendar_page.click_attend_event_button_accordion(event_title)
  end
end

Then(/^I should see a success alert appear confirming attendance of event$/) do
#  calendar_page.should have_attending_event_succesful
  calendar_page.should have_alert_success
  expect(calendar_page.get_success_flash_text).to have_content(/You are now attending the event: (.*)!/i)
#  element :attending_event_succesful, "div[text=/You are now attending the event: (.*)/i]"
end

When(/^I click the request to attend button$/) do
  event_title="Java Lunch and Learn Restricted"
  if jumbotron_page.is_event_jumbotron(event_title)
    jumbotron_page.click_request_to_attend_event_button_jumbotron()
  else
    calendar_page.click_request_to_attend_event_button_accordion(event_title)
  end
end

Then(/^I should see a success alert appear confirming a request was generated$/) do
  calendar_page.should have_alert_success
  expect(calendar_page.get_success_flash_text).to have_content(/A request has been sent to attend the event: (.*)/i)
#  element :request_to_attend_sent, "div[text='/A request has been sent to attend the event: (.*) /i']"
end

Then(/^I should see a success alert with the request to attend$/) do
  calendar_page.should have_alert_success
  expect(calendar_page.get_success_flash_text).to have_content(/(.*) is requesting to attend the event (.*)/i)
#  element :request_to_attend_recieved, "div[text='/(.*) is requesting to attend the event (.*) /i']"
end

When(/^I click the approve button on the request$/) do
  calendar_page.click_approve_link_in_request_flash()
end

