@edit_profile
Feature: Edit Profile

	In order for the user to provide information to the system, users
        should have the ability to edit a profile

	Background: Login as admin or host
	  Given that I am logged in

	Scenario: Edit profile
	  When I click the edit profile button
          When I edit the profile
          And I click the submit button
	  Then I should see a success flash saying the profile was edited
          When I click the edit profile button
	  Then I should see the new values displayed
