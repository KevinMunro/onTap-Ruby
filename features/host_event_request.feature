@host_event_request
Feature: Host Event Request

	In order for the user to host events, users
        should have the ability to request to host an event

	Background: Login
	  Given that I am logged in

	Scenario: Request to host
	  When I click the Host Event button
          When I edit the provide details text field
          And I click the send button
	  Then I should see a success flash saying the host request was sent

	Scenario: Cancel Request to host form
	  When I click the Host Event button
          When I edit the provide details text field
          And I click the cancel button
	  Then I should no longer see the request to host modal
