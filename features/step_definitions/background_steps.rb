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
  navigation_bar.click_add_new_event_button()
end

And(/^there is valid event in the system$/) do 
  navigation_bar.click_add_new_event_button()
  event = YAML.load_file("features/support/Events_To_Delete/lunch_and_learn_to_delete.yml")
    event.each do |key, values|
      add_new_event_page.fill_new_event_form(values)
    end
  add_new_event_page.click_submit_button()
end

And(/^there is valid event in the system to attend$/) do 
  navigation_bar.click_add_new_event_button()
  event = YAML.load_file("features/support/Events/lunch_and_learn.yml")
    event.each do |key, values|
      add_new_event_page.fill_new_event_form(values)
    end
  add_new_event_page.click_submit_button()
end

And(/^there is valid restricted event in the system$/) do 
  navigation_bar.click_add_new_event_button()
  event = YAML.load_file("features/support/Events/lunch_and_learn_restricted.yml")
    event.each do |key, values|
      add_new_event_page.fill_new_event_form(values)
    end
  add_new_event_page.click_submit_button()
end

Given(/^I log out$/) do
  navigation_bar.click_logout_button()
end
