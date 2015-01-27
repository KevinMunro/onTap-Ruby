When(/^I click the edit button$/) do
  if jumbotron_page.is_event_jumbotron(@event_values['set_event_title'])
    jumbotron_page.click_edit_event_button_jumbotron()
  else
    calendar_page.click_edit_event_button_accordion(@event_values['set_event_title'])
  end
end

Then(/^I should be brought to the events edit page$/) do
  expect(add_new_event_page).to have_event_title_field
  #add_new_event_page.should have_event_title_field
end

When(/^I edit the the event$/) do
  @new_title=Faker::Name.title
  add_new_event_page.set_event_title(@new_title)
end

And(/^I click the submit edit button$/) do
  add_new_event_page.click_update_button()
end

And(/^I choose to not email attendees updates$/) do
  add_new_event_page.click_submit_button()
end

Then(/^I should see a success alert appear confirming the event was edited$/) do
  #event_details_page.should have_alert_success
  expect(event_details_page).to have_alert_success
  expect(calendar_page.get_success_flash_text).to have_content(/Event \"#{@new_title}\" was updated/i)
#  element :event_succesfully_updated, "div[text='/Event (.*) was updated /i']"

end


