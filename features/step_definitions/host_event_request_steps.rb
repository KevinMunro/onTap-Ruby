When(/^I click the Host Event button$/) do
  navigation_bar.click_host_event_button()
end

Then(/^I should see the Host Event Modal$/) do
  expect(host_event_request_modal).to have_modal_header
end

When(/^I edit the provide details text field$/) do
  host_event_request_modal.set_provide_details_text_area("Description of Event that user would like to host")
end

And(/^I click the send button$/) do
  host_event_request_modal.click_send_host_event_button
end

Then(/^I should see a success flash saying the host request was sent$/) do
  expect(calendar_page).to have_alert_success
  expect(calendar_page.get_success_flash_text).to have_content(/Your request to host an event has been sent!/i)
end

Then(/^I should no longer see the request to host modal$/) do
  expect(calendar_page).to_not have_content(/I would like to host an event/i)
end

And(/^I click the cancel button$/) do
  host_event_request_modal.click_cancel_host_event_button
end
