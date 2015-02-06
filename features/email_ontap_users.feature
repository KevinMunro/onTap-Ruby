@email_ontap_users
Feature: Email Ontap Users

	In order to be contact all onTap users, a admin
	should have the ability to send an email to all onTap users

	Background: Login
	  Given that I am logged in as an admin

	Scenario: Email all users
	  When I click Email onTap Users from the nav bar
          And I edit the Email Subject field
          And I edit the Email Content field
          And I click the Send email button
          Then I should see a success alert staying the amount of users emailed

	Scenario: Email all users, no Subject
	  When I click Email onTap Users from the nav bar
          And I edit the Email Content field
          And I click the Send email button
          Then the user should be asked to fill in the missing field

	Scenario: Email all users, no Content
	  When I click Email onTap Users from the nav bar
          And I edit the Email Subject field
          And I click the Send email button
          Then the user should be asked to fill in the missing field
