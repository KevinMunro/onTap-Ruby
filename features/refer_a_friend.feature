@refer_a_friend
Feature: Refer a Friend To Event

	In order for the user to share an event, a user
	should have the ability to send details of an event to a friend

	Background: Login
	  Given that I am logged in as an admin
          And there is valid event in the system

	Scenario Outline: Refer a Friend valid email
	  When I click the refer a friend button 
	  Then I should see the Refer a Friend Modal
          When I enter <email_address> in the Email-Address Field
          And I click the Send Referral button
          Then I should see a success flash saying the referral was sent

          Examples:
            |email_address|
            |test.user@orasi.com|


	Scenario Outline: Refer a Friend invalid email
	  When I click the refer a friend button 
	  Then I should see the Refer a Friend Modal
          When I enter <email_address> in the Email-Address Field
          And I click the Send Referral button
          Then I should see a danger flash saying the referral was not sent

          Examples:
            |email_address|
            |test.user|

