Given(/^that I am logged in$/) do
  login_page.goto_page()
  login_page.set_username('kevin.munro')
  login_page.set_password('password')
  login_page.click_login_button()
end

Given(/^that I am logged in as an admin$/) do
  login_page.goto_page()
  login_page.set_username('kevin.munro')
  login_page.set_password('password')
  login_page.click_login_button()
end

And(/^I navigate to the New Suggestion page$/) do 
  navigation_bar.click_new_suggestion_button()
end

And(/^I navigate to the Add New Event page$/) do 
  navigation_bar.add_new_event_page()
end

