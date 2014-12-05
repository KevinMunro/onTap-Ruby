@edit_event
Feature: Edit Event

	In order for the to update events, hosts and admins
        should have the ability to edit an event

	Background: Login as admin or host
	  Given that I am logged in as an admin
          And there is valid event in the system

	Scenario Outline: Edit event
	  When I click the edit button
	  Then I should be brought to the events edit page
          When I edit the the event
          And I click the submit button
          Then I should see a success alert appear confirming the event was edited

