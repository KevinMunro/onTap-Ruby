@add_calendar_invite
Feature: Send user calendar invite

	In order to be reminded of upcoming events, a user
	should have the ability to send themselves a calendar invite

	Background: Login
	  Given that I am logged in as an admin
          And there is valid event in the system

	Scenario: Send Calendar Invite from calendar page
	  When I click the Add To Calendar button on the calendar page
	  Then I should see a popup window saying a calendar invite was sent

	Scenario: Send Calendar Invite from flash message
          When I click the attend button
          Then I should see a success alert appear confirming attendance of event
          When I click the Add To Calendar Link in the flash message
	  Then I should see a popup window saying a calendar invite was sent
