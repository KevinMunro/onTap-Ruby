When(/^I click the Add To Calendar button on the calendar page$/) do
  if jumbotron_page.is_event_jumbotron(@event_values['set_event_title'])
    jumbotron_page.click_add_to_calendar_button_jumbotron()
  else
    calendar_page.click_add_to_calendar_button_accordion(@event_values['set_event_title'])
  end
end

Then(/^I should see a popup window saying a calendar invite was sent$/) do
  expect(page.driver.browser.switch_to.alert.text).to have_content(/A calendar invite has been sent to your email!/i)
  page.driver.browser.switch_to.alert.accept
end

When(/^I click the Add To Calendar Link in the flash message$/) do
  calendar_page.click_add_to_calendar_link_in_flash
end

=begin
Defintions for the following steps are located in the file attend_event_calendar_steps.rb
  When I click the attend button
  Then I should see a success alert appear confirming attendance of event

=end

