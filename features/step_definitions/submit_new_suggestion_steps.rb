Given(/^I enter a valid suggestion$/) do
  new_suggestion_page.set_suggestion_title('Java Classes')
  new_suggestion_page.set_suggestion_description('A series of classes to teach the Java programming language to attendees')
end

When(/^I submit a suggestion$/) do 
  new_suggestion_page.click_create_suggestion_button()
end

Then(/^I should see a success alert appear confirming the suggestion was submitted$/) do

end

