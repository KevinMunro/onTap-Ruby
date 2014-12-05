@attend_event
Feature: Attend Event

	In order for the to track attendance, users
        should have the ability to attend an event

	Background: Login
	  Given that I am logged in
          And there is valid event in the system

	Scenario Outline: Edit event
	  When I click the attend button
	  Then I should be brought to the events edit page
          When I edit the the event
          And I click the submit button
          Then I should see a success alert appear confirming the event was edited
