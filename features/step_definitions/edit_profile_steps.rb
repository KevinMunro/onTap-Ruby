When(/^I click the edit profile button$/) do
  navigation_bar.click_profile_button()
end

When(/^I edit the profile$/) do
  edit_profile_modal.profile_force_food_restriction_change
end

And(/^I click the submit button$/) do
  edit_profile_modal.click_profile_submit_button
end

Then(/^I should see a success flash saying the profile was edited$/) do
  expect(calendar_page).to have_alert_success
  expect(calendar_page.get_success_flash_text).to have_content(/Profile was updated/i)
end

Then(/^I should see the new values displayed$/) do
  expect(edit_profile_modal.get_food_restriction_value()).to have_content(/#{@food_restriction}/i)
  expect(edit_profile_modal.get_location_value()).to have_content(/#{@location}/i)
  expect(edit_profile_modal.get_notification_value()).to have_content(/#{@notification_setting}/i)
end

When(/^I edit the settings of the profile$/) do
  @food_restriction=edit_profile_modal.profile_force_food_restriction_change
  @location=edit_profile_modal.profile_force_location_change
  @notification_setting=edit_profile_modal.profile_force_notification_setting_change
end

And(/^I click the cancel send button$/) do
  edit_profile_modal.click_profile_cancel_button
end

Then(/^I should see the old values displayed$/) do
  expect(edit_profile_modal.get_food_restriction_value()).to have_content(/#{@food_restriction}/i)
  expect(edit_profile_modal.get_location_value()).to have_content(/#{@location}/i)
  expect(edit_profile_modal.get_notification_value()).to have_content(/#{@notification_setting}/i)
end

When(/^I edit the settings of the profile without saving$/) do
  @food_restriction=edit_profile_modal.get_food_restriction_value()
  @location=edit_profile_modal.get_location_value()
  @notification_setting=edit_profile_modal.get_notification_value()
  edit_profile_modal.profile_force_food_restriction_change
  edit_profile_modal.profile_force_location_change
  edit_profile_modal.profile_force_notification_setting_change
end

And(/^I click the Archive button$/) do
  navigation_bar.click_archive_button()
end

