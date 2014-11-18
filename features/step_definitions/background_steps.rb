Given(/^that I am logged in$/) do
  login_page.goto_page()
  login_page.set_username('random.user')
  login_page.set_password('password')
end

When(/^I navigate to the New Suggestion page$/) do 

end

