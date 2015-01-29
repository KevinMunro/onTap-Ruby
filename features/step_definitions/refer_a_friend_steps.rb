When(/^I click the refer a friend button$/) do
  if jumbotron_page.is_event_jumbotron(@event_values['set_event_title'])
    jumbotron_page.click_refer_a_friend_button_jumbotron()
  else
    calendar_page.click_refer_a_friend_button_accordion(@event_values['set_event_title'])
  end
end

Then(/^I should see the Refer a Friend Modal$/) do
   expect(refer_a_friend_modal).to have_content("Refer a Friend")
   #site prisms has does not wait correctly for modal
     # expect(refer_a_friend_modal).to have_refer_a_friend_title
end

When(/^I enter (.*) in the Email-Address Field$/) do |email|
  refer_a_friend_modal.set_email_address_field(email)
end

And(/^I click the Send Referral button$/) do
  refer_a_friend_modal.click_send_referral_button()
end

Then(/^I should see a success flash saying the referral was sent$/) do
  expect(calendar_page).to have_alert_success
  expect(calendar_page.get_success_flash_text).to have_content(/Referral was sent/i)
end

Then(/^I should see a danger flash saying the referral was not sent$/) do
  expect(calendar_page).to have_alert_danger
  expect(calendar_page.get_danger_flash_text).to have_content(/Emails should be in the format name@domain. Multiple emails should be seperate by commas./i)
end

When(/^I click the cancel referral button$/) do
  refer_a_friend_modal.click_cancel_referral_button()
end

Then(/^I should no longer see the Refer a Friend Modal$/) do
  expect(calendar_page).not_to have_alert_danger
end

