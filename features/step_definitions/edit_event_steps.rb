When(/^I click the edit button$/) do
  event_title="Java Lunch and Learn To Delete"
  if jumbotron_page.is_event_jumbotron(event_title)
    jumbotron_page.click_edit_event_button_jumbotron()
  else
    calendar_page.click_edit_event_button_accordion(event_title)
  end
end

Then(/^I should be brought to the events edit page$/) do
  add_new_event_page.has_event_title_field?
end

When(/^I edit the the event$/) do
  add_new_event_page.set_event_title("Edited Event")
end

And(/^I click the submit edit button$/) do
  add_new_event_page.click_update_button()
end

And(/^I choose to not email attendees updates$/) do
  add_new_event_page.click_submit_button()
end

Then(/^I should see a success alert appear confirming the event was edited$/) do
  event_details_page.has_event_succesfully_updated?
end


