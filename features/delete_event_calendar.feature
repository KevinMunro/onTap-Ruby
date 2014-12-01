@delete_event_calendar
Feature: Delete event from calendar

	In order to remove events fromt he system, a admin
	should have the ability to delete an event from the 

	Background: Login
	  Given that I am logged in as an admin
          And there is valid event in the system

	Scenario: Delete event from calendar
	  When I click the delete event button on the calendar page
	  Then I should see a error alert appear confirming the event was deleted
