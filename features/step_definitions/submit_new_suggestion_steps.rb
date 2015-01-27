Given(/^I enter a valid suggestion$/) do
  new_suggestion_page.set_suggestion_title('Java Classes')
  new_suggestion_page.set_suggestion_description('A series of classes to teach the Java programming language to attendees')
end

When(/^I submit a suggestion$/) do 
  new_suggestion_page.click_create_suggestion_button()
end

Then(/^I should see a success alert appear confirming the suggestion was submitted$/) do
  #calendar_page.should have_alert_success
  expect(calendar_page).to have_alert_success
  expect(calendar_page.get_success_flash_text).to have_content(/Suggestion (.*) was created /i)
#  calendar_page.should has_suggestion_succesfully_added?
end

Given(/^I fill in only the description field$/) do
  new_suggestion_page.set_suggestion_description('A series of classes to teach the Java programming language to attendees')
end

Given(/^I fill in only the title field$/) do
  new_suggestion_page.set_suggestion_title('Java Classes')
end

Then(/^I should see a tooltip error appear$/) do
  assert_selector('input:invalid')
end
