@attend_event
Feature: Attend Event

	In order for the to track attendance, users
        should have the ability to attend an event

	Background: Login
	  Given that I am logged in as an admin

	Scenario: Attend non restricted event
          Given there is valid event in the system to attend
          Given I log out
	  Given that I am logged in
	  When I click the attend button
          Then I should see a success alert appear confirming attendance of event

	Scenario: Request to attend a restricted event approval base user
          Given there is valid restricted event in the system
          Given I log out
	  Given that I am logged in
	  When I click the request to attend button
          Then I should see a success alert appear confirming a request was generated
          Given I log out
          Given that I am logged in as an admin
          Then I should see a success alert with the request to attend
          When I click the approve button on the request
          Then I should see a success alert saying the user is now attending
          Given I log out
          Given that I am logged in
          Then I should see a success alert saying the attendance request has been approved
          When I click the remove button on the flash
          Then I should see no flash alert
          
	Scenario: Request to attend a restricted event rejection base user
          Given there is valid restricted event in the system
          Given I log out
	  Given that I am logged in
	  When I click the request to attend button
          Then I should see a success alert appear confirming a request was generated
          Given I log out
          Given that I am logged in as an admin
          Then I should see a success alert with the request to attend
          When I click the reject button on the request
          Then I should see a error alert saying the user is not approved to attend
          Given I log out
          Given that I am logged in
          Then I should see a error alert saying the attendance request has been rejected
          When I click the remove button on the flash
          Then I should see no flash alert

	Scenario: Request to attend a restricted event approval admin
          Given there is valid restricted event in the system
	  When I click the request to attend button
          Then I should see a success alert with the request to attend
          When I click the approve button on the request
          Then I should see a success alert saying the attendance request has been approved
          When I click the remove button on the flash
          Then I should see no flash alert

	Scenario: Request to attend a restricted event rejection admin
          Given there is valid restricted event in the system
	  When I click the request to attend button
          Then I should see a success alert with the request to attend
          When I click the reject button on the request
          Then I should see a error alert saying the attendance request has been rejected
          When I click the remove button on the flash
          Then I should see no flash alert
