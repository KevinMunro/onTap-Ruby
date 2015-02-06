When(/^I click Email onTap Users from the nav bar$/) do
  navigation_bar.click_email_ontap_users_button()
end

And(/^I edit the Email Subject field$/) do
  email_ontap_users_modal.set_email_users_subject_field("Some Email Subject")
end

And(/^I edit the Email Content field$/) do
  email_ontap_users_modal.set_email_users_content_field("Some Email Content")
end

And(/^I click the Send email button$/) do
  email_ontap_users_modal.click_email_users_send_button
end

Then(/^I should see a success alert staying the amount of users emailed$/) do
  expect(calendar_page).to have_alert_success
  expect(calendar_page.get_success_flash_text).to have_content(/Email sent to (.*) users./i)
end


