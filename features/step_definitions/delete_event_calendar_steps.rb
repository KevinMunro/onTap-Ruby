When(/^I click the delete event button on the calendar page$/) do

end

Then(/^I should see a error alert appear confirming the event was deleted$/) do
  calendar_page.has_event_succesfully_added?
end
