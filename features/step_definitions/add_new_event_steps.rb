Given(/^I enter a valid (\w+\.yml) event$/) do |event_description|
  event = YAML.load_file("features/support/Events/"+event_description)
  @event_values=""
  event.each do |key, values|
    @event_values=add_new_event_page.fill_new_event_form(values)
  end
end

When(/^I submit a event$/) do
  add_new_event_page.click_submit_button()
end

Then(/^I should see a success alert appear confirming the event was added$/) do
  expect(calendar_page).to have_alert_success
  expect(calendar_page.get_success_flash_text).to have_content(/Event \"#{@event_values['set_event_title']}\" was created/i)
end
