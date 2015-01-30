When(/^I click the edit profile button$/) do
  navigation_bar.click_profile_button()
end

When(/^I edit the profile$/) do
  #edit_profile_modal.click_profile_vegetarian_button
end

And(/^I click the submit button$/) do
  edit_profile.modal.click_profile_submit_button
end

Then(/^I should see a success flash saying the profile was edited$/) do
  expect(calendar_page).to have_success_alert
  expect(calendar_page.get_success_flash_text).to have_content(/Profile was updated/i)
end

Then(/^I should see the new values displayed$/) do

end



