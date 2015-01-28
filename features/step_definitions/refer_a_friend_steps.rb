When(/^I click the refer a friend button$/) do
  if jumbotron_page.is_event_jumbotron(@event_values['set_event_title'])
    jumbotron_page.click_refer_a_friend_button_jumbotron()
  else
    calendar_page.click_refer_a_friend_button_accordion(@event_values['set_event_title'])
  end
end

Then(/^I should see the Refer a Friend Modal$/) do

end

When(/^I enter (\.*\) in the Email-Address Field$/) do

end

And(/^I click the Send Referral button$/) do

end

Then(/^I should see a success flash saying the referral was sent$/) do

end

