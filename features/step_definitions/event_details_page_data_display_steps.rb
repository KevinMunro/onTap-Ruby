When(/^I click the details button for the event$/) do
  if jumbotron_page.is_event_jumbotron(@event_values['set_event_title'])
    jumbotron_page.click_details_event_button_jumbotron()
  else
    calendar_page.click_details_event_button_accordion(@event_values['set_event_title'])
  end
end

Then(/^I should be brought to the event details page$/) do
  expect(jumbotron_page.get_jumbotron_title).to have_content(/#{@event_values['set_event_title']}/i)
end

And(/^I should see the correct information previously entered$/) do
  @event_values.each do |k, v|
    if (k != 'set_date' && k != 'set_start_time' && k != 'set_end_time')
      expect(page).to have_content(v)
    end
  end
end
