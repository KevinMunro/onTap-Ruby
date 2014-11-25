@add_new_event
Feature: Submit New Suggestion

	In order for the user to populate the system with new events, a user
	should have the ability to submit a event

	Background: Login and navigate to Add New Event page
	  Given that I am logged in as an admin
	  And I navigate to the Add New Event page

	Scenario: Submit valid lunch and learn
	  Given I enter a valid lunch and learn
	  When I submit a event
	  Then I should see a success alert appear confirming the event was added

