When(/^I click the attend button$/) do
  event_title="Lunch and Learn"
  if jumbotron_page.is_event_jumbotron(event_title)
    jumbotron_page.click_attend_event_button_jumbotron()
  else
    calendar_page.click_attend_event_button_accordion(event_title)
  end
end

Then(/^I should see a success alert appear confirming attendance of event$/) do
  calendar_page.has_attending_event_succesful?
end
