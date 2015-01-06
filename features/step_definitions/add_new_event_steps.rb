Given(/^I enter a valid (\w+\.yml) event$/) do |event_description|
  event = YAML.load_file("features/support/Events/"+event_description)
    event.each do |key, values|
      add_new_event_page.fill_new_event_form(values)
    end
end

When(/^I submit a event$/) do
  add_new_event_page.click_submit_button()
end

Then(/^I should see a success alert appear confirming the event was added$/) do
  calendar_page.should has_event_succesfully_added?
end
