@add_calendar_invite
Feature: Send user calendar invite

	In order to be reminded of upcoming events, a user
	should have the ability to send themselves a calendar invite

	Background: Login
	  Given that I am logged in as an admin
          And there is valid event in the system

	Scenario: Delete event from calendar
	  When I click the Add To Calendar button on the calendar page
	  Then I should see a popup window saying a calendar invite was sent
