When(/^I click the attend button$/) do
  event_title="Java Lunch and Learn FIND"
  if jumbotron_page.is_event_jumbotron(event_title)
    jumbotron_page.click_attend_event_button_jumbotron()
  else
    calendar_page.click_attend_event_button_accordion(event_title)
  end
end

Then(/^I should see a success alert appear confirming attendance of event$/) do
  calendar_page.should have_attending_event_succesful
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
  calendar_page.should has_request_to_attend_sent?
end

Then(/^I should see a success alert with the request to attend$/) do
  calendar_page.should has_request_to_attend_recieved?
end

When(/^I click the approve button on the request$/) do
  calendar_page.click_approve_link_in_request_flash()
end

