Given(/^I enter a valid lunch and learn$/) do
  event = YAML.load_file("features/support/new_event_data.yml")
  event.each do |key, values|
    add_new_event_page.fill_new_event_form(values)
  end
end

When(/^I submit a event$/) do
  add_new_event_page.click_submit_button()
end

Then(/^I should see a success alert appear confirming the event was added$/) do
  calendar_page.has_event_succesfully_added?
end
